# Inhibition of Eumycetoma from MycetOS

This model predicts the growth of the fungus M. mycetomatis, causal agent of Mycetoma, in presence of small drugs. It has been developed using the data from MycetOS, an opemn source initiative aiming at finding new patent-free drugs. The model has been trained using the LazyQSAR package (MorganBinaryClassifier) from Ersilia.

## Identifiers

* EOS model ID: `eos4f95`
* Slug: `mycetos`

## Characteristics

* Input: `Compound`
* Input Shape: `Single`
* Task: `Classification`
* Output: `Probability`
* Output Type: `Float`
* Output Shape: `Single`
* Interpretation: Probability of inhibition of M. mycetomatis (growth assay, cut-off at 20% growth)

## References

* [Publication](https://www.ijidonline.com/article/S1201-9712(20)31735-5/fulltext)
* [Source Code](https://github.com/ersilia-os/lazy-qsar)
* Ersilia contributor: [GemmaTuron](https://github.com/GemmaTuron)

## Ersilia model URLs
* [GitHub](https://github.com/ersilia-os/eos4f95)
* [AWS S3](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos4f95.zip)
* [DockerHub](https://hub.docker.com/r/ersiliaos/eos4f95) (AMD64)

## Citation

If you use this model, please cite the [original authors](https://www.ijidonline.com/article/S1201-9712(20)31735-5/fulltext) of the model and the [Ersilia Model Hub](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff).

## License

This package is licensed under a GPL-3.0 license. The model contained within this package is licensed under a GPL-3.0 license.

Notice: Ersilia grants access to these models 'as is' provided by the original authors, please refer to the original code repository and/or publication if you use the model in your research.

## About Us

The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission!