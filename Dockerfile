#Set OS
FROM continuumio/miniconda3:4.5.12

RUN apt-get update && apt-get upgrade -y

#Bioconda settup:
#Add the bioconda channel:
RUN conda config --add channels defaults --add channels bioconda --add channels conda-forge

#R,Picard Tools, MultiQCand snakemake(pipeline manager) install:
RUN conda install r=3.5.1 picard=2.18.27 multiQC=1.7 snakemake=5.4.3 -y

#Install Tools:
RUN conda install bwa=0.7.17 samtools=1.9 samblaster=0.1.24 sambamba=0.6.8 gatk=3.8 vt=2015.11.10 bcftools=1.9 htslib=1.9 snpeff=4.3.1t snpsift=4.3.1t cnvkit=0.9.6 bioconductor-dnacopy=1.56.0 -y


#Cannot put this in the docker because of licensing issues
#But this step needs to be don
#RUN gatk3-register /mnt/share/GenomeAnalysisTK-3.8-1-0-gf15c1c3ef/GenomeAnalysisTK.jar

