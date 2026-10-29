# dir003

Test data for the `bcftk` binary (ported from https://github.com/bguo068/bcftk).

- `prefilt.vcf.gz`: Plasmodium falciparum VCF with FMT/GT and FMT/AD fields
- `moimix_fws.tsv`: per-sample Fws values calculated by the R package `moimix`
  from `prefilt.vcf.gz`; used to validate `bcftk calcfws`
