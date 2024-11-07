# Pan-cancer-Treg-Atlas
#### Benjamin Green, Beata Malachowska, Marissa Lee, Abhirami Suresh, Archana Balan, Yichun He, Elie Abi Khalil
##### HTAN Data Jamboree Nov 6-8, 2024
## Background
Regulatory Tcells (Tregs) are a subset of CD4+ Tcells that overexpress the master transcription factor forkhead box protein P3 (FOXP3) and constitute the main Tcell population with an immunosuppressive profile (ref). Tregs tend to suppress other immune cells in the context of cancer via several mechanisms of immune suppression (ref). Enriching for Tregs has allowed investigators to identify various subtypes of this population but these subpopulations seem to behave differently in humans vs. other animal models and across tissue types (ref). This has encouraged the development of a Treg atlas that encompasses the diverse molecular profiles that characterize Tregs, but this has been limited by the fact that most Treg studies typically rely on data generated from bulk RNA sequencing which cannot properly capture the subtleties of this cell type, nor can it recapitulate the spatial impact of different compartments on the function of Tregs (ref). Here, we describe the creation of a Pan-Cancer-Treg Atlas by leveraging single cell databases from the Human Tumor Atlas Network (HTAN). The workflow and results are described below.
## Analysis goals
- Selecting relevant single cell databases
- Annotating cell types
- Identifying Tregs in different cancer types
- Clustering analysis
- Deriving novel biological conclusions from generated atlas

## Pipeline and results
(Diagram of workflow)

**Data input**
Single-cell HTAN level 4 data was accessed using synapseclient and downloaded to cbc.sbgenomics as described in the notebook download-synapse-data.sh to perform processing in a jupyter environment.

**Preprocessing, cell annotation, and clustering**
Single-cell RNAseq data was recovered from HTAN as described above and processed using the pipeline elaborated in (link to processing pipeline). Briefly, the data was initially quality checked (fig.) prior to annotation with python-based, CellTypist, for automated cell typing according to references available mainly for human and mouse data. Then, the data is normalized and log transformed to account for 10,000 counts per cell which is used for the creation of UMAP and PCA plots. CellTypist then curates models and ontologies for the annotation of the cells within different clusters. We applied this pipeline on X number of databases and confirmed that the plots were consistent with the original processing (fig). We then selectively extracted the Tregs from the different datasets and fed them into the integration pipeline for further downstream processing and comparisons across samples and cancer subtypes.

**Integration**

**Downstream analysis**

## Limitations
- limited by level 4 data and one filetype
- cell drop out issue
- preprocessing one dataset at a time

## Conclusions and future directions
In the future, we hope to automate the pipeline for CellTypist to analyze and annotate huge sets of databases at once for further downstream clustering and processing. We also hope to include more Treg data in the atlas we have created and for this atlas to become a continuously updated resource for investigators who are interested in the fields of Tregs and immunotherapy.



