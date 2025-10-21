import glob, json, os
import pandas as pd
import numpy as np
from okin.simulation.simulator import Simulator
import matplotlib.pyplot as plt
from okin.base.chem_plot_utils import apply_acs_layout


# MECHANISMS 1 with c21 instead of s210 AND without ArX -> ArH
mechanism_dict= {
                    "Kumada_mono": [
                            "cis_bisAr ->  P + mono",

                            "cat -> mono + mono",
                            "mono + ArX -> oac",
                            "oac + Grig -> trans_bisAr",
                            "trans_bisAr -> cis_bisAr"
                            
                        ],

                    "Kumada_mono_simple": [  
                            "monoA + Grig -> P + mono",

                            "cat -> mono + mono",
                            "mono + ArX -> monoA"
                            
                        ],
                    
                    
                    "Kumada_dimer": [
                            "cis_bisAr ->  P + cat",

                            "cat + ArX -> oac",
                            "oac + Grig -> trans_bisAr",
                            "trans_bisAr -> cis_bisAr"
                            
                        ],

                    "Kumada_dimer_simple": [  
                            "oac + Grig -> P + cat",

                            "cat + ArX -> oac"
                            
                        ],

                    "Kumada_mono_grig_deact": [  
                            "monoA + Grig -> P + mono + Mg",

                            "cat -> mono + mono",
                            "mono + ArX -> monoA",
                            "Mg + Grig -> GrigI"
                            
                        ],

                    "Kumada_mono_cat_deactMg": [  
                            "monoA + Grig -> P + mono + Mg",

                            "cat -> mono + mono",
                            "mono + ArX -> monoA",
                            "Mg + mono -> monoI"
                            
                        ],

                    "Kumada_mono_cat_deact": [  
                            "monoA + Grig -> P + mono + Mg",

                            "cat -> mono + mono",
                            "mono + ArX -> monoA",
                            "mono -> monoI"
                            
                        ],

                }

results =     {'Kumada_mono': {'best_k_dict': {'k1': 4810800.0, 'k2': 1016940.0, 'kN2': 0.0950721, 'k3': 1452.82, 'kN3': 1072710.0, 'k4': 9705980.0, 'kN4': 0.113598, 'k5': 5499130.0, 'kN5': 1.01365, 'kN1': 0}, 'RSS': 2.56146e-07}, 
                'Kumada_mono_simple': {'best_k_dict': {'k1': 10000000.0, 'k2': 1421980.0, 'kN2': 2.49097e-05, 'k3': 1457.93, 'kN3': 1115080.0, 'kN1': 0}, 'RSS': 2.56118e-07}, 
                'Kumada_dimer': {'best_k_dict': {'k1': 9320300.0, 'k2': 2927.42, 'kN2': 1065230.0, 'k3': 9423050.0, 'kN3': 1.02112, 'k4': 5085770.0, 'kN4': 0.0139062999999999, 'kN1': 0}, 'RSS': 2.56186e-07}, 
                'Kumada_dimer_simple': {'best_k_dict': {'k1': 10000000.0, 'k2': 2925.0, 'kN2': 1126020.0, 'kN1': 0}, 'RSS': 2.56142e-07}, 

                
                'Kumada_mono_grig_deact': {'best_k_dict': {'k1': 10000000.0, 'k2': 1443870.0, 'kN2': 48.1912, 'k3': 1035.47, 'kN3': 0.00785455, 'k4': 101955.0, 'kN4': 0.325102, 'kN1': 0}, 'RSS': 2.20303e-07}, 
                'Kumada_mono_cat_deactMg': {'best_k_dict': {'k1': 8866540.0, 'k2': 184798.0, 'kN2': 80.7901, 'k3': 1095.78, 'kN3': 14.1123, 'k4': 3.73632, 'kN4': 0.658192, 'kN1': 0}, 'RSS': 2.25436e-07}, 
                'Kumada_mono_cat_deact': {'best_k_dict': {'k1': 677322.0, 'k2': 17.0116, 'kN2': 3011.36, 'k3': 2162.84, 'kN3': 0.0818948999999999, 'k4': 2.05973, 'kN4': 1.00207, 'kN1': 0}, 'RSS': 1.6187e-07}
                }

# MECHANISMS 2 with c21 instead of s210
mechanism_dict= {
                    "Kumada_mono": [
                            "cis_bisAr ->  P + mono",

                            "cat -> mono + mono",
                            "mono + ArX -> oac",
                            "oac + Grig -> trans_bisAr",
                            "trans_bisAr -> cis_bisAr",
                            "ArX -> ArH"
                            
                        ],

                    "Kumada_mono_simple": [  
                            "monoA + Grig -> P + mono",

                            "cat -> mono + mono",
                            "mono + ArX -> monoA",
                            "ArX -> ArH"
                            
                        ],
                    
                    
                    "Kumada_dimer": [
                            "cis_bisAr ->  P + cat",

                            "cat + ArX -> oac",
                            "oac + Grig -> trans_bisAr",
                            "trans_bisAr -> cis_bisAr",
                            "ArX -> ArH"
                            
                        ],

                    "Kumada_dimer_simple": [  
                            "oac + Grig -> P + cat",

                            "cat + ArX -> oac",
                            "ArX -> ArH"
                            
                        ],

                    "Kumada_mono_grig_deact": [  
                            "monoA + Grig -> P + mono + Mg",

                            "cat -> mono + mono",
                            "mono + ArX -> monoA",
                            "Mg + Grig -> GrigI",
                            "ArX -> ArH"
                            
                        ],

                    "Kumada_mono_cat_deactMg": [  
                            "monoA + Grig -> P + mono + Mg",

                            "cat -> mono + mono",
                            "mono + ArX -> monoA",
                            "Mg + mono -> monoI",
                            "ArX -> ArH"
                            
                        ],

                    "Kumada_mono_cat_deact": [  
                            "monoA + Grig -> P + mono + Mg",

                            "cat -> mono + mono",
                            "mono + ArX -> monoA",
                            "mono -> monoI",
                            "ArX -> ArH"
                            
                        ],

                }

results = {'Kumada_mono': {'best_k_dict': {'k1': 2934390.0, 'k2': 5799180.0, 'kN2': 3.42737, 'k3': 966.606, 'kN3': 8514.01, 'k4': 2629230.0, 'kN4': 0.00823719, 'k5': 3281680.0, 'kN5': 40.5082, 'k6': 0.310746, 'kN6': 0.8894270000000001, 'kN1': 0}, 'RSS': 1.00161e-07},
           'Kumada_mono_simple': {'best_k_dict': {'k1': 6813690.0, 'k2': 2347950.0, 'kN2': 0.52387, 'k3': 954.649, 'kN3': 67.5055, 'k4': 0.315443, 'kN4': 0.913216, 'kN1': 0}, 'RSS': 1.0016400000000001e-07},
           'Kumada_dimer': {'best_k_dict': {'k1': 7869510.0, 'k2': 1914.0, 'kN2': 2605.73, 'k3': 9726290.0, 'kN3': 0.000257807, 'k4': 3270240.0, 'kN4': 0.000365434, 'k5': 0.313113, 'kN5': 0.907209, 'kN1': 0}, 'RSS': 1.00196e-07}, 
           'Kumada_dimer_simple': {'best_k_dict': {'k1': 4382240.0, 'k2': 1956.7, 'kN2': 22868.1, 'k3': 0.3047829999999999, 'kN3': 0.8898290000000001, 'kN1': 0}, 'RSS': 1.00152e-07}, 
           'Kumada_mono_grig_deact': {'best_k_dict': {'k1': 9723220.0, 'k2': 52620.6, 'kN2': 6925.77, 'k3': 971.867, 'kN3': 0.000349823, 'k4': 10624.7, 'kN4': 0.199756, 'k5': 0.228672, 'kN5': 0.63203, 'kN1': 0}, 'RSS': 9.28687e-08}, 
           'Kumada_mono_cat_deactMg': {'best_k_dict': {'k1': 4869110.0, 'k2': 7726.9, 'kN2': 675.182, 'k3': 981.248, 'kN3': 12.4494, 'k4': 1.2945799999999998, 'kN4': 1.70622, 'k5': 0.270843, 'kN5': 0.79696, 'kN1': 0}, 'RSS': 9.95167e-08}, 
           'Kumada_mono_cat_deact': {'best_k_dict': {'k1': 7834710.0, 'k2': 4967.48, 'kN2': 1004750.0, 'k3': 1778.27, 'kN3': 0.0175369, 'k4': 1.50702, 'kN4': 1.1923700000000002, 'k5': 0.122843, 'kN5': 0.2381889999999999, 'kN1': 0}, 'RSS': 7.88177e-08}
           }

# results but still MECHANISMS 2
# results = {'Kumada_mono': {'best_k_dict': {'k1': 1956730.0, 'k2': 12294.6, 'kN2': 0.000142712, 'k3': 1032.75, 'kN3': 143381.0, 'k4': 7929110.0, 'kN4': 6741.02, 'k5': 4918020.0, 'kN5': 0.0534431, 'k6': 0.264523, 'kN6': 0.781559, 'kN1': 0}, 'RSS': 1.0645300000000001e-07}, 'Kumada_mono_simple': {'best_k_dict': {'k1': 2009410.0, 'k2': 5007520.0, 'kN2': 0.14286, 'k3': 1018.25, 'kN3': 30428.2, 'k4': 0.276971, 'kN4': 0.845138, 'kN1': 0}, 'RSS': 1.0640999999999998e-07}, 'Kumada_dimer': {'best_k_dict': {'k1': 1638550.0, 'k2': 2028.29, 'kN2': 70234.8, 'k3': 5040860.0, 'kN3': 31179.4, 'k4': 9871120.0, 'kN4': 596.256, 'k5': 0.279252, 'kN5': 0.8244969999999999, 'kN1': 0}, 'RSS': 1.06474e-07}, 'Kumada_dimer_simple': {'best_k_dict': {'k1': 9375430.0, 'k2': 2065.12, 'kN2': 168212.0, 'k3': 0.270525, 'kN3': 0.8155439999999999, 'kN1': 0}, 'RSS': 1.0638500000000001e-07}, 'Kumada_mono_grig_deact': {'best_k_dict': {'k1': 9748180.0, 'k2': 1371450.0, 'kN2': 0.873641, 'k3': 979.341, 'kN3': 0.0221174, 'k4': 12238.4, 'kN4': 0.192467, 'k5': 0.2018579999999999, 'kN5': 0.5780930000000001, 'kN1': 0}, 'RSS': 9.76325e-08}, 'Kumada_mono_cat_deactMg': {'best_k_dict': {'k1': 4234350.0, 'k2': 43678.0, 'kN2': 0.00263857, 'k3': 990.825, 'kN3': 2.1, 'k4': 1.6296, 'kN4': 1.84079, 'k5': 0.246792, 'kN5': 0.746578, 'kN1': 0}, 'RSS': 1.05063e-07}, 'Kumada_mono_cat_deact': {'best_k_dict': {'k1': 6021970.0, 'k2': 49.2709, 'kN2': 59.896, 'k3': 1348.92, 'kN3': 52510.5, 'k4': 0.949435, 'kN4': 1.42548, 'k5': 0.154627, 'kN5': 0.3756469999999999, 'kN1': 0}, 'RSS': 8.58413e-08}}

# reults without weird reactions:
results = {'Kumada_mono': {'best_k_dict': {'k1': 7473410.0, 'k2': 774051.0, 'kN2': 72.523, 'k3': 945.886, 'kN3': 1222.81, 'k4': 8095940.0, 'kN4': 0.1228539999999999, 'k5': 2176620.0, 'kN5': 381.051, 'k6': 0.340886, 'kN6': 0.971272, 'kN1': 0}, 'RSS': 8.83436e-08}, 'Kumada_mono_simple': {'best_k_dict': {'k1': 10000000.0, 'k2': 561134.0, 'kN2': 1.72917e-05, 'k3': 947.078, 'kN3': 2.09373e-05, 'k4': 0.34133, 'kN4': 0.954666, 'kN1': 0}, 'RSS': 8.830639999999999e-08}, 'Kumada_dimer': {'best_k_dict': {'k1': 3638410.0, 'k2': 1891.63, 'kN2': 0.000105968, 'k3': 8067190.0, 'kN3': 0.00213751, 'k4': 3668710.0, 'kN4': 15685.0, 'k5': 0.340017, 'kN5': 0.969141, 'kN1': 0}, 'RSS': 8.83605e-08}, 'Kumada_dimer_simple': {'best_k_dict': {'k1': 7135430.0, 'k2': 1892.24, 'kN2': 0.00014303, 'k3': 0.339528, 'kN3': 0.953587, 'kN1': 0}, 'RSS': 8.83178e-08}, 'Kumada_mono_grig_deact': {'best_k_dict': {'k1': 9357580.0, 'k2': 5472720.0, 'kN2': 3.77895e-05, 'k3': 961.153, 'kN3': 0.00149878, 'k4': 6006.22, 'kN4': 0.205159, 'k5': 0.275886, 'kN5': 0.743502, 'kN1': 0}, 'RSS': 8.423339999999999e-08}, 'Kumada_mono_cat_deactMg': {'best_k_dict': {'k1': 7072640.0, 'k2': 2473740.0, 'kN2': 7.633030000000001, 'k3': 970.768, 'kN3': 0.000890925, 'k4': 1.1566299999999998, 'kN4': 1.34099, 'k5': 0.296913, 'kN5': 0.8266100000000001, 'kN1': 0}, 'RSS': 8.7143e-08}, 'Kumada_mono_cat_deact': {'best_k_dict': {'k1': 372531.0, 'k2': 6.42932, 'kN2': 174.86900000000003, 'k3': 2797.62, 'kN3': 0.0001805509999999, 'k4': 4.0494900000000005, 'kN4': 1.34581, 'k5': 0.114026, 'kN5': 0.172568, 'kN1': 0}, 'RSS': 4.82703e-08}}




sim = Simulator()
csvs = glob.glob(os.path.abspath('./data/*.csv'))
species_to_show = ["P"]


for name, m in mechanism_dict.items():
    best_k_dict = results[name]["best_k_dict"]

    for csv in csvs:
        csv_name = csv.split("\\")[-1]
        df = pd.read_csv(csv)

        c_dict = df.loc[0]
        print(c_dict)

        sim.setup(reactions=m, k_dict=best_k_dict, c_dict=c_dict) 

        stop_time = df["time"].iloc[-1] 
        sim.simulate(stop=stop_time, times=df["time"], selections=species_to_show)

        r = sim.result

        for s in species_to_show:
            plt.scatter(df["time"], df[s], label=csv_name, s=35)
            plt.plot(r["time"], r[s], linestyle=":", marker="*", markersize=5)


            apply_acs_layout()
            # plt.title(f"{name} - {csv_name}")
            plt.title("M1")
            plt.legend()
            plt.xlabel("time")
            plt.ylabel("conc")
    plt.show()
    

