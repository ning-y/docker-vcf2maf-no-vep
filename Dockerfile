FROM biocontainers/samtools:v1.9-4-deb_cv1

# https://stackoverflow.com/a/57930100/6910451
USER root
RUN apt-get update && apt-get install -y wget perl-modules tabix
RUN wget https://github.com/mskcc/vcf2maf/archive/refs/tags/v1.6.21.tar.gz && \
    tar -xf v1.6.21.tar.gz && \
    chmod +x vcf2maf-1.6.21/*.pl && \
    mv vcf2maf-1.6.21/* /usr/local/bin/
USER 1001
