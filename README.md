# FCR-GLM-metrics
FCR-GLMv3.3 GLM-AED simulation calibrated with PEST.

## Calibrated_models
This folder includes the setup of all models based on the best parameter set attained through calibration. The sims only run on Linux. The time period of the simulation is from 01-12-2016 to 31-12-2019 (calibration period). The models are run by changing directory to the folder where the model files are located (cd …/FCR-GLM-metrics/Calibrated_models/Deepm*) and running the following command: ./glm+_latest/glm+.

- Deepm2_naive: The naive model with deep mixing configuration set to 2. 

- Deepm2_exm_weight1: The system-inspired model with weighting scheme 1 and deep mixing configuration 2. 

- Deepm2_exm_weight2: The system-inspired model with weighting scheme 2 and deep mixing configuration 2. 

- Deepm2_exm_weight3: The system-inspired model with weighting scheme 3 and deep mixing configuration 2. 
- Deepm1_naive: The naive model with deep mixing configuration set to 1. 
- Deepm1_exm_weight1: The system-inspired model with weighting scheme 1 and deep mixing configuration 1. 
- Deepm1_exm_weight2: The system-inspired model with weighting scheme 2 and deep mixing configuration 1. 
- Deepm1_exm_weight3: The system-inspired model with weighting scheme 3 and deep mixing configuration 1. 
