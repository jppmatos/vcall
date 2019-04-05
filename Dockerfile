#Set OS
FROM continuumio/miniconda3:4.5.12

RUN apt-get update && apt-get upgrade -y

#Bioconda settup:
#Add the bioconda channel:
RUN conda config --add channels defaults
RUN conda config --add channels bioconda
RUN conda config --add channels conda-forge

#R install:
RUN conda install r r=3.5.1 -y


#Picard Tools install:
RUN conda install picard=2.18.27 -y

#MultiQC install:
RUN conda install multiQC=1.7 -y


#Install snakemake(pipeline manager):
RUN conda install snakemake=5.4.3 -y

#Install Tools:
RUN conda install bwa=0.7.17 -y
RUN conda install samtools=1.9 -y
RUN conda install samblaster=0.1.24 -y
RUN conda install sambamba=0.6.8 -y
RUN conda install gatk=3.8 -y
RUN conda install vt=2015.11.10 -y
RUN conda install bcftools=1.9 -y
RUN conda install htslib=1.9 -y
RUN conda install snpeff=4.3.1t -y
RUN conda install cnvkit=0.9.6 -y
RUN conda install bioconductor-dnacopy=1.56.0 -y 


#Cannot put this in the docker because of licensing issues
#But this step needs to be don
#RUN gatk3-register /mnt/share/GenomeAnalysisTK-3.8-1-0-gf15c1c3ef/GenomeAnalysisTK.jar

