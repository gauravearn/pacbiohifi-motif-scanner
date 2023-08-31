# pacbio_oxford_assembly_binding_ruby_motif_scanner
 a fasta class to make genomic sliding window for the if you have a binding site and you want to prepare the motifs for the binding site as a sliding window you can also use the same. You can also search the    sliding window motifs starting with the particular tag to see how many of them are generated.

```
fast = FastaMotifSlidingGenerator.new("ATATAGTATATATA", "3", "GT")
#<#<Class:0x0000000103e98e88>::FastaGenerator:0x0000000103f2e9d8 
                        #@fasta="ATATAGTATATATA", @take=3, @motif="GT">
fast.sequencechunk
["ATA", "TAT", "ATA", "TAG", "AGT", "GTA", 
                   "TAT", "ATA", "TAT", "ATA", "TAT", "ATA"]
fast.returnmotif
["GTA"]
```
Gaurav Sablok \
Frontiers: https://loop.frontiersin.org/people/33293/overview \
ORCID: https://orcid.org/0000-0002-4157-9405 \
WOS: https://www.webofscience.com/wos/author/record/C-5940-2014 \
Github:https://github.com/sablokgaurav \
Linkedin: https://www.linkedin.com/in/sablokgaurav/ 

