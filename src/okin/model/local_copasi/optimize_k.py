import os,time, glob
from pycotools3 import model, tasks, viz

def remove_files_and_folders(folder_path):
    for root, dirs, files in os.walk(folder_path, topdown=False):
        for file_name in files:
            file_path = os.path.join(root, file_name)
            if not file_path.startswith(os.path.join(folder_path, "input")):
                os.remove(file_path)
                print(f"removed {file_path}")
        for dir_name in dirs:
            dir_path = os.path.join(root, dir_name)
            if dir_name != "input":    
                os.rmdir(dir_path)
                print(f"removed {dir_path}")

def create_copasi_model(input_dir, copasi_filename):
    sb_string_file = os.path.join(input_dir, "sb_string.txt")

    with open(sb_string_file, 'r') as sb_file:
        sb_string = sb_file.read()

    model.loada(sb_string, copasi_filename) # this creates the .cps file
    
def get_my_dataset(input_dir):
    experiment_paths = glob.glob(input_dir + "/*.csv")
    
    my_datasets = {}
    print(input_dir)
    for exp_path in experiment_paths:
        exp_name = exp_path.split("\\")[-1][:-4]
        my_datasets[exp_name] = {
            "filename": exp_path,
            "separator": ","
        }
    return my_datasets

def get_fit_items(saving_directory):

    fit_items_path = os.path.join(saving_directory, "fit_items.txt")
    # with open(fit_items_path, "r") as f:
    #     fit_items_keys = eval(f.readline()) # ["k1", "kN1", "k2", "kN2"]

    # fit_items_values = [{}]*len(fit_items_keys)
    # fit_items = dict(zip(fit_items_keys, fit_items_values))
    # # {'k1': {}, 'kN1': {}, 'k2': {}, 'kN2': {}, 'k3': {}, 'kN3': {}}
    with open(fit_items_path, "r") as f:
        file_content = f.read()
        fit_items = eval(file_content) 



    return fit_items


def get_settings(settings_directory):
    settings_path = os.path.join(settings_directory, "user_settings.txt")
    with open(settings_path, "r") as f:
        file_content = f.read()
        settings_dict = eval(file_content) 

    assert isinstance(settings_dict, dict), f"settings should be a dict but is type(settings_dict)={type(settings_dict)}\nsettings_dict={settings_dict}"    
    return settings_dict

def optimize(my_dataset, fit_items, setting_dict):
    # print(f"using settings:\n{setting_dict}")

    #____________
    # print(my_dataset)
    # fit_items = {k:{'lower_bound': 100, 'upper_bound': 200, 'StartValue': 150} for k in ["k1", 'kN1', 'k2', 'kN2']}

    # my_dataset = {'A07B05cat005': {'filename': 'c:\\Users\\Finn\\Python\\turbo_iroh\\modeling\\local_copasi\\temp\\input\\A07B05cat005.csv', 'separator': ','}, 'A07B08cat01': {'filename': 'c:\\Users\\Finn\\Python\\turbo_iroh\\modeling\\local_copasi\\temp\\input\\A07B08cat01.csv', 'separator': ','}}

    # print(my_dataset.keys())

    # fit_items=dict(
    #         # A and B are species to be optimized
    #         cat={"lower_bound": 0.04, "upper_bound": 0.06, "affected_experiments":[ list(my_dataset.keys())[0] ]},  # cat is optimized for report1
    #         # cat1={"lower_bound": 0.09, "upper_bound": 0.11, "affected_experiments":[ list(my_dataset.keys())[1] ]},  # cat is optimized for report1
                  
    #         # cat=dict(
    #         #     affected_validation_experiments=[ list(my_dataset.keys())[1] ]  # cat is optimized for report2
    #         # ),
    #         # k1 and k2 are global parameters, so they affect all experiments
    #         k1 = {"lower_bound": 0, "upper_bound":100},  # Shared parameter across all datasets
    #         k2 = {"lower_bound": 0, "upper_bound":100},  # Shared parameter across all datasets
    #         kN1 = {"lower_bound": 0, "upper_bound":100},
    #         kN2 = {"lower_bound": 0, "upper_bound":100}
        # )
    
    #_____________

    config = tasks.ParameterEstimation.Config(
        models=dict(
            results=dict(
                copasi_file=copasi_filename
            )
        ),


        datasets=dict(
            experiments=my_dataset
        ),


        items=dict(
            fit_items=fit_items,
        ),

        settings=setting_dict
    )

    # print(config)
    # print("_______________")

    start = time.perf_counter() 
    PE = tasks.ParameterEstimation(config)
    results = viz.Parse(PE)["results"]
    print(f"Run Time = {time.perf_counter()-start} s")
    PEplot = viz.PlotParameterEstimation(PE, savefig=False)

if __name__ == "__main__":
    working_directory = f"{os.path.abspath(__file__)[:-13]}temp"
    # print(f"working dir in copasi: {working_directory}")

    input_dir = os.path.join(working_directory, "input")
    copasi_filename = os.path.join(working_directory, "my_copasi.cps")

    remove_files_and_folders(working_directory)
    create_copasi_model(input_dir, copasi_filename)
    my_dataset = get_my_dataset(input_dir)
    fit_items = get_fit_items(input_dir)
    print(f"fit_items  = {fit_items}")

    settings_dict = get_settings(input_dir)
    settings_dict["working_directory"] = working_directory

    optimize(my_dataset, fit_items, settings_dict)



        # ____ Required arguments for different optimizers (ChatGPT) ____ 

    # Genetic Algorithm (GA):
    #     method: Set to "genetic_algorithm".
    #     number_of_generations: The number of generations for the genetic algorithm.
    #     population_size: The size of the population.
    #     mutation_rate: The probability of mutation for each gene.
    #     crossover_rate: The probability of crossover for each pair of individuals.
    #     selection_method: The method used for parent selection (e.g., tournament selection, roulette wheel selection).

    # Simulated Annealing (SA):
    #     method: Set to "simulated_annealing".
    #     iteration_limit: The maximum number of iterations.
    #     start_temperature: The initial temperature for the annealing process.
    #     cooling_factor: The rate at which the temperature decreases.

    # Particle Swarm Optimization (PSO):
    #     method: Set to "particle_swarm_optimization".
    #     swarm_size: The number of particles in the swarm.
    #     number_of_iterations: The maximum number of iterations.
    #     c1: The cognitive parameter.
    #     c2: The social parameter.
    #     omega: The inertia weight.
    #     max_velocity: The maximum velocity limit for particles.
    #     min_velocity: The minimum velocity limit for particles.

    # Differential Evolution (DE):
    #     method: Set to "differential_evolution".
    #     population_size: The size of the population.
    #     scaling_factor: The scaling factor for mutation.
    #     crossover_rate: The crossover rate.

    # Nelder-Mead Simplex (NMS):
    #     method: Set to "nelder_mead_simplex".
    #     max_iterations: The maximum number of iterations.

    # Evolutionary Programming (EP):
    #     method: Set to "evolutionary_programming".
    #     number_of_generations: The number of generations.
    #     population_size: The size of the population.

    # ____________context: units
    #     "s": Seconds
    #     "min": Minutes
    #     "h": Hours
    #     "d": Days
    #     "y": Years