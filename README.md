# Inhibition of Eumycetoma from MycetOS

Scores compounds for activity against Madurella mycetomatis, the fungus behind most cases of eumycetoma, a neglected infection for which itraconazole is the only treatment and a quarter of patients relapse. Ersilia trained a LazyQSAR classifier on open growth-inhibition data from MycetOS, which screened Medicines for Malaria Venture boxes and other libraries (7,616 compounds, 445 actives). Five-fold out-of-fold validation gives AUROC 0.92. Outputs are ranks against 50,000 drug-like molecules, best used to prioritise compounds for screening.

This model was incorporated on 2023-09-27.
Last packaged on 2026-10-20.

## Information
### Identifiers
- **Ersilia Identifier:** `eos4f95`
- **Slug:** `mycetos`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `Mycetoma`
- **Target Organism:** `Madurella mycetomatis`
- **Tags:** `Antifungal activity`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `1`
- **Output Consistency:** `Fixed`
- **Interpretation:** Rank of predicted Madurella mycetomatis growth inhibition against 50,000 drug- like molecules; 0.65 is better than 99% of them.

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| mycetoma_inhibition_rank | float | high | Rank score of the compound's predicted growth inhibition of the fungus Madurella mycetomatis, calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Internal`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos4f95](https://hub.docker.com/r/ersiliaos/eos4f95)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4f95.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4f95.zip)
- **Apptainer**: [https://models-sif.s3.eu-north-1.amazonaws.com/eos4f95_v1.sif](https://models-sif.s3.eu-north-1.amazonaws.com/eos4f95_v1.sif)

### Resource Consumption
- **Model Size (Mb):** `16`
- **Environment Size (Mb):** `6436`
- **Image Size (Mb):** `6522.01`

**Computational Performance (seconds):**
- 10 inputs: `34.98`
- 100 inputs: `26.76`
- 10000 inputs: `493.95`

### References
- **Source Code**: [https://github.com/ersilia-os/lazy-qsar](https://github.com/ersilia-os/lazy-qsar)
- **Publication**: [https://doi.org/10.1016/j.ijid.2020.09.1018](https://doi.org/10.1016/j.ijid.2020.09.1018)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2020`
- **Ersilia Contributor:** [GemmaTuron](https://github.com/GemmaTuron)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [GPL-3.0-or-later](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos4f95
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos4f95
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
