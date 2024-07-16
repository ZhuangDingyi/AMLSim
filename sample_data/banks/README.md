# v2.1: Tuned transaction network and AMLSim models for composite transaction pattern features

## Description

This data set has four transaction networks with the result of GPML; bank-to-bank transaction network (`bank_mixed`) and internal-bank transaction networks (`bank_a`, `bank_b` and `bank_c`) extracted from the `bank_mixed`. It contains the following parameter and output data directories:

- `paramFiles`: parameter and property files for AMLSim
- `data`: transaction network data from AMLSim
- `features`: results of graph-based analytics and machine learning output


====

# `paramFiles`: Parameter files for AMLSim

## Parameter Files
Please put the `bank_mixed` directory and Java property file `model.properties` under `paramFiles` directory if you use them.

The `bank_mixed` directory contains the following parameter files of AMLSim.

- accounts.csv: Account parameter list CSV
- alertPatterns.csv: SAR typology definition CSV
- conf.json: Configuration JSON file of AMLSim
- degree.csv: Degree distribution parameter CSV
- schema.json: Schema definition JSON for output CSV files
- transactionType.csv: Transaction pattern distribution CSV

The Java properties file is used to adjust the amounts and probabilities of transactions.

- model.properties

## Introduction of Running AMLSim
Please launch the following shell script to reproduce the data.
```
sh scripts/run_batch.sh paramFiles/bank_mixed/conf.json amlsim.log 30
```

- The first argument `paramFiles/bank_mixed/conf.json` is the configuration JSON file path.
- The second argument `amlsim.log` is output log file path.
- The third argument `30` indicates the multiplier of the initial number of edges generated from normal account vertices. The purpose of this argument is to balance the feature contributions of various graph features in GPML.


# `data`: Transaction network data from AMLSim

This directory contains transaction network data as the following gzipped account and transaction list CSV files.

- `accounts.csv.gz`: All account list
- `alerts.csv.gz`: Transaction list of SAR typologies
- `tx_cash.csv.gz`: Cash transaction list (currently it is empty)
- `tx.csv.gz`: All transaction list


# `features`: Results of graph-based analytics and machine learning output

This directory contains graph-based feature data files and model accuracies as the result of GPML.

- `features_dist`: Directory contains images of all graph-based feature value distributions
- `features.csv.gz`: Gzipped CSV file of feature values for all accounts
- `model_accuracy.png`: Results of GPML with all combinations of graph-based features.
