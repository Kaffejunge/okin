from chem_sim.simulator import Simulator
from chem_kinetics.vtna import ClassicVTNA, PointVTNA


def test_pvtna():
    from chem_sim.simulator import Simulator

    # ! test with simulation
    reactions = ["A+cat->cat1", "cat1+B->P + cat", "cat->catI"]
    k_dict = {"k1":0.1, "kN1":0.05, "k2":0.9, "kN2":0.07, "k3":0.005, "kN3":0.001}


    c_dict1 = {"A":0.8, "cat":0.1, "B":0.8, "cat1":0}
    c_dict2 = {"A":0.8, "cat":0.05, "B":0.8, "cat1":0}

    sim1 = Simulator(reactions, k_dict, c_dict1)
    sim1.simulate(0, 300, 40, use_const_cat=True, selections=["time", "A", "P", "cat"])
    
    sim2 = Simulator(reactions, k_dict, c_dict2)
    sim2.simulate(0, 350, 40, use_const_cat=True, selections=["time", "A", "P", "cat"])


    p_vtna = PointVTNA(df_rct1=sim1.result, df_rct2=sim2.result, species_col_name="cat", product_col_name="P", time_col_name="time")
    p_vtna.show_plot()     


def test_cvtna():
    from chem_sim.simulator import Simulator
    
    reactions = ["A+cat->cat1", "cat1+B->P + cat"]
    k_dict = {"k1":0.1, "kN1":0.05, "k2":0.9, "kN2":0.07, "k3":3, "kN3":0}

    c_dict = {"A":1.0, "cat":0.04, "B":0.8, "cat1":0}
    sim = Simulator(reactions, k_dict, c_dict)
    sim.simulate(0, 250, 40, use_const_cat=False, selections=["time", "A", "P", "cat"])
    

    c_dict = {"A":0.7, "cat":0.04, "B":0.8, "cat1":0}
    sim2 = Simulator(reactions, k_dict, c_dict)
    sim2.simulate(0, 170, 40, use_const_cat=False, selections=["time", "A", "P", "cat"])

    c_vtna = ClassicVTNA(df_rct1=sim.result, df_rct2=sim2.result, species_col_name="A", product_col_name="P", time_col_name="time")

    c_vtna.show_plot()


if __name__ == "__main__":
    test_cvtna()
    test_pvtna()