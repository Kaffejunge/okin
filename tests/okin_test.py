# import roadrunner
import matplotlib.pyplot as plt
import logging

from okin.base.atom import Atom
from okin.base.chem_logger import chem_logger
from okin.base.reaction import Reaction, TEReaction
from okin.base.chem_plot_utils import apply_acs_layout
from okin.cd_parser.cd_parser import CDParser
from okin.simulation.rate_equation import RateEquation
from okin.simulation.simulator import Simulator
from okin.kinetics.vtna import ClassicVTNA
from okin.model.modler import Modler

chem_logger.setLevel(logging.CRITICAL)



print("Testing okin module:")
#* test base
print("______________________________\nBase:")
atom_str = "Ag"
atom = Atom(atom_str)
print(f"The atomic wheight of {atom_str} is {atom.info.atomic_weight} u.")

rct_str = "A + B -> C"
rct = Reaction(rct_str)
tellurium_rct = TEReaction(reaction_string=rct_str, id_=1)
print(f"Reaction: {rct}\nTEreaction: {tellurium_rct}")



#* test ChemDraw Parser
print("______________________________\nChemDraw Parser:")
cd_file = "base_cycle.cdxml"
cd_parser = CDParser(file_path=cd_file, draw=True)

my_cd_rcts = cd_parser.find_reactions()
print(f"Reactions in {cd_file}:")
for rct in my_cd_rcts:
    print(rct)

#* Rate equation
print("______________________________\nRate Equation:")

# sensitive to arrow type (reversible / non-reversible)
my_rcts = ["A + cat <==> cat1", "cat1 + B -> cat + P", "X + cat <==> cat_deact"] 

my_rate_equation = RateEquation(reactions=my_rcts, show_used_reactions=False)
# print(my_rate_equation.debug_string)
try:
    my_rate_equation.show_latex_rate_law()
except RuntimeError:
    print(f"Final rate law as LaTeX:\n{my_rate_equation.final_rate_law}")

#* Simulation
print("______________________________\nSimulation:")
# NOT sensitive to arrow. Reversibility is determined by k values
my_rcts = [ 
    "A + cat -> cat1",
    "cat1 + B -> cat + P",
    "X + cat -> cat_deact"
    ] 
k_dict = {"k1": 10, "kN1":5, "k2": 3, "kN2": 0, "k3": 0.005, "kN3": 0}
c_dict = {"A": 1.0, "B": 1.2, "cat": 0.05, "P": 0.0, "X": 0.1}
sim = Simulator()
sim.setup(reactions=my_rcts, k_dict=k_dict, c_dict=c_dict)
sim.simulate(start=0, stop=80, nr_time_points=40)
df = sim.result

plt.scatter(df["time"], df["A"], label="A")
plt.scatter(df["time"], df["B"], label="B")
plt.scatter(df["time"], df["P"], label="P")
plt.legend()
plt.xlabel("time")
plt.ylabel("conc")
plt.title("Simulated Data")
apply_acs_layout()
plt.show()


#* VTNA
print("______________________________\nVTNA:")

# create 2 reactions and save data for modeling step
my_rcts = [ 
    "A + cat -> cat1",
    "cat1 + B -> cat + P",
    "X + cat -> cat_deact"
    ] 
k_dict = {"k1": 10, "kN1":5, "k2": 3, "kN2": 0, "k3": 0.005, "kN3": 0}
# these are the starting concentrations for 2 different reactions
c_dict1 = {"A": 1.0, "B": 1.2, "cat": 0.05, "P": 0.0, "X": 0.1}
c_dict2 = {"A": 1.0, "B": 1.2, "cat": 0.03, "P": 0.0, "X": 0.1}

sim = Simulator()
sim.setup(reactions=my_rcts, k_dict=k_dict, c_dict=c_dict1)
sim.simulate(start=0, stop=80, nr_time_points=40)
df1 = sim.result
df1.to_csv("data1.csv", index=False)

sim = Simulator()
sim.setup(reactions=my_rcts, k_dict=k_dict, c_dict=c_dict2)
sim.simulate(start=0, stop=100, nr_time_points=40)
df2 = sim.result
df2.to_csv("data2.csv", index=False)

# run VTNA
vtna_species = "cat"
c_vtna = ClassicVTNA(df_rct1=df1, df_rct2=df2, species_col_name=vtna_species, product_col_name="P", time_col_name="time", min_order=-2, max_order=2)
print(f"Best order for {vtna_species}: {c_vtna.best_order}")
c_vtna.show_plot()


#* Model
print("______________________________\nModeling:")
local_copasi_path = r"D:\python_code\hein_modules\local_copasi"
modler = Modler(copasi_path=local_copasi_path)

my_mechanism_guess = [ 
    "A + cat -> cat1",
    "cat1 + B -> cat + P",
    "X + cat -> cat_deact"
    ] 

modler.set_m_reactions(mechanism=my_mechanism_guess)
modler.add_experiment_csv(csv_paths=["data1.csv", "data2.csv"])
modler.set_species_for_model(species=["P", "A"])
modler.set_species_to_match(species=["P", "A", "B"])
modler.set_copasi_settings(new_settings={"number_of_generations":50, "population_size": 50})
modler.create_single_model()
modler.show_model_fit(save_modeled_data=True, show_all=True)

