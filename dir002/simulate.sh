#! /usr/bin/env bash
#
# # install conda: https://www.anaconda.com/docs/getting-started/miniconda/install
# # install conda env: `conda env create -f env.yml`
# # run the following command to simulate data (tree sequences) and convert to VCF/BCF files
stdpopsim HomSap -c chr21 -o chr21.ts -d OutOfAfrica_2T12 AFR:1000 EUR:1000 -g HapMapII_GRCh38 -s 123
stdpopsim HomSap -c chr22 -o chr22.ts -d OutOfAfrica_2T12 AFR:1000 EUR:1000 -g HapMapII_GRCh38 -s 123
tskit vcf chr21.ts -c chr21 | bcftools view -Ob -o chr21.bcf
tskit vcf chr22.ts -c chr22 | bcftools view -Ob -o chr22.bcf

# NOTES: 
# 
# Simulation information:
#     Engine: msprime (1.3.3)
#     Model id: OutOfAfrica_2T12
#     Model description: Two population out-of-Africa
#     Seed: 123
#     Population: number_samples (sampling_time_generations):
#         AFR: 2500 (0)
#         EUR: 2500 (0)
# 
# Contig Description:
#     Contig origin: chr21:0-46709983
#     Contig length: 46709983.0
#     Contig ploidy: 2
#     Mutation rate: 2.36e-08
#     Recombination rate: 1.724434082825555e-08
#     Genetic map: HapMapII_GRCh38
# 
# Contig Description:
#     Contig origin: chr22:0-50818468
#     Contig length: 50818468.0
#     Contig ploidy: 2
#     Mutation rate: 2.36e-08
#     Recombination rate: 2.1057233894035443e-08
#     Genetic map: HapMapII_GRCh38

