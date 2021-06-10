# docker-vcf2maf-no-vep

Docker image for [vcf2maf](https://github.com/mskcc/vcf2maf), without Ensembl VEP.
I use this image to convert already-annotated VCFs into MAFs.

The docker image and GitHub release versions follow [that of vcf2maf](https://github.com/mskcc/vcf2maf/releases).

## Instructions

The vcf2maf perl scripts have all been made executable and added to PATH, so you can use them directly:

```
$ docker run --rm ningyuan/docker-vcf2maf-no-vep:1.6.21 vcf2maf.pl
```

The WORKDIR of the image is the same as its VOLUME at `/data` (this is the behaviour of the [biocontainers/samtools](https://hub.docker.com/r/biocontainers/samtools/) base image).
So, you can mount the host working directory at `/data` to access the files on the host working directory:

```
$ docker run --rm -v "$(pwd)":/data ningyuan/docker-vcf2maf-no-vep:1.6.21 vcf2maf.pl
```

Note that since Ensembl VEP is unavailable, you must use the `--inhibit-vep` flag with vcf2maf.pl.