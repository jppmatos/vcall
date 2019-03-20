#Set OS
FROM continuumio/miniconda3:4.5.12

RUN apt-get update && apt-get upgrade -y

#Bioconda settup:
#Add the bioconda channel:
RUN conda config --add channels defaults
RUN conda config --add channels bioconda
RUN conda config --add channels conda-forge

#R install:
RUN conda install -c r r-base -y


#Picard Tools install:
RUN conda install picard -y

#MultiQC install:
RUN conda install multiQC -y


#Install snakemake(pipeline manager):
RUN conda install snakemake -y

#Install Tools:
RUN conda install bwa -y
RUN conda install samblaster -y
RUN conda install sambamba -y
RUN conda install gatk -y
RUN conda install vt -y
RUN conda install bcftools -y
RUN conda install htslib -y
RUN conda install snpeff -y
RUN conda install samtools -y

#Cannot put this in the docker because of licensing issues
#But this step needs to be don
#RUN gatk3-register /mnt/share/GenomeAnalysisTK-3.8-1-0-gf15c1c3ef/GenomeAnalysisTK.jar

