# Inhibition of Eumycetoma from MycetOS

This model predicts the growth of the fungus M. mycetomatis, causal agent of Mycetoma, in presence of small drugs. It has been developed using the data from MycetOS, an opemn source initiative aiming at finding new patent-free drugs. The model has been trained using the LazyQSAR package (MorganBinaryClassifier) from Ersilia.

This model was incorporated on 2023-09-27.


## Information
### Identifiers
- **Ersilia Identifier:** `eos4f95`
- **Slug:** `mycetos`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `Mycetoma`
- **Target Organism:** `Madurella mycetomatis`
- **Tags:** `Mycetoma`, `Antifungal activity`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `1`
- **Output Consistency:** `Fixed`
- **Interpretation:** Probability of inhibition of M. mycetomatis (growth assay, cut-off at 20% growth)

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| mycetoma_inhibition | float | high | Probability score of inhibiting the fungus Madurella mycetomatis at 20% growth |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Internal`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos4f95](https://hub.docker.com/r/ersiliaos/eos4f95)
- **Docker Architecture:** `AMD64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4f95.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4f95.zip)

### Resource Consumption
- **Model Size (Mb):** `1`
- **Environment Size (Mb):** `7381`


### References
- **Source Code**: [https://github.com/ersilia-os/lazy-qsar](https://github.com/ersilia-os/lazy-qsar)
- **Publication**: [https://www.ijidonline.com/article/S1201-9712(20)31735-5/fulltext](https://www.ijidonline.com/article/S1201-9712(20)31735-5/fulltext)
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
