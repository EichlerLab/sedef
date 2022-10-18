module load miniconda/4.9.2

snakemake -s workflows/run.smk \
    --config sample=hg38 fasta=/net/eichler/vol26/eee_shared/assemblies/hg38/no_alt/hg38.no_alt.fa \
    -p sedef \
 --drmaa " -w n -V -cwd -e ./log -o ./log -l mfree={resources.mem}G  -S /bin/bash" -w 60 --jobs 350 -p -k
