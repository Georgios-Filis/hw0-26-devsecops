FROM continuumio/miniconda3:latest

# General information
LABEL author="Georgios Filis"
LABEL description="Metagenomics (MTG) Suite: A modified part of the ProteoSeeker project (https://github.com/SkretasLab/ProteoSeeker)."

# System dependencies
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    ca-certificates \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Configuring the Conda channels
RUN conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda config --set channel_priority flexible

# Creating the enviornment.
RUN conda create -y -n mtg_suite_env --solver=libmamba

# Installing the tools into the base environment for immediate access.
# bbduk, bowtie, cd-hit, diamond, fastqc, hmmer, megahit, sra-tools, and perl (for phobius).
RUN conda install -y -n mtg_suite_env --solver=libmamba \
    bioconda::bbmap \
    bioconda::bowtie2 \
    bioconda::cd-hit \
    bioconda::diamond \
    bioconda::fastqc \
    bioconda::hmmer \
    bioconda::megahit \
    bioconda::sra-tools \
    conda-forge::perl \
    conda-forge::nano && \
    conda clean -afy

# Copying the files.
COPY ./mtg_suite /home/mtg_suite

# Setting up the working directory.
WORKDIR /home/mtg_suite

