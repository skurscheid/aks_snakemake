# The main entry point of your workflow.
# After configuring, running snakemake -n in a clone of this repository should successfully execute a dry-run of the workflow.

import os

home = os.environ['HOME']
dataDir = home + "/Data/Tremethick/kubernetes_test/"
#workdir = "/data/cellcycledata/aks_test"
#configfile: "config.yaml"

rule all:
    input:
       expand("fastp/trimmed/{library}.{suffix}",
              library = "ACTR6G1-1",
              suffix = ["end1.fastq.gz", "end2.fastq.gz"])


include: "rules/other.smk"
include: "rules/run_fastp.smk"
