# Pan-cancer-Treg-Atlas
#### Benjamin Green, Beata Malachowska, Marissa Lee, Abhirami Suresh, Archana Balan, Yichun He, Elie Abi Khalil
##### HTAN Data Jamboree Nov 6-8, 2024
## Background
The tumor-immune microenvironment (TIME) consists of the complex interactions taking place between the different compartments within the tumor; namely cancer cells, endothelial cells, cancer associated fibroblasts (CAFs), extracellular matrix (ECM), and immune cells (ref). Immune cells are particularly remodeled within this microenvironment in response to the physical and chemical signals originating from other compartments, resulting in the generation of two distinct subpopulations of immune cells: one that is protumor, and one that is antitumor (ref). Regulatory Tcells (Tregs) are a subset of CD4+ Tcells that overexpress the master transcription factor forkhead box protein P3 (FOXP3) and constitute the main Tcell population with an immunosuppressive profile (ref). Although Tregs perform diverse functions within different tissue types and have been shown to be involved in the regulation of autoimmunity, they tend to suppress other immune cells in the context of cancer by consuming immunostimulatory cytokines like interleukin-2 (IL-2), suppressing antigen presenting cells (APCs) in a cytotoxic T lymphocyte antigen 4 (CTLA-4)-mediated manner, and the production of immune inhibitory molecules, among other mechanisms of immune suppression (ref). Enriching for Tregs has allowed investigators to identify various subtypes of this population such as thymus derived Tregs (tTregs), induced Tregs (iTregs), and effector Tregs (eTregs), but these subpopulations seem to behave differently in humans vs. other animal models (ref). This has encouraged the development of a Treg atlas that encompasses the diverse molecular profiles that characterize Tregs, but this has been limited by the fact that most Treg studies typically rely on data generated from bulk RNA sequencing which cannot properly capture the subtleties of this cell type, nor can it recapitulate the spatial impact of different compartments on the function of Tregs (ref). Here, we leverage single cell databases from the Human Tumor Atlas Network (HTAN) to generate a Pan-Cancer-Treg Atlas encompassing the diverse profiles of Tregs across cancer types. This is done by annotating different cell types from the raw data to identify Tcells, followed by the selection of Tregs based on their expression of CD4 and FOXP3, and performing various clustering methods to highlight the diversity in molecular profile and function of the Tregs in different cancer types. The workflow and results are described below.
## Analysis goals
-Selecting relevant single cell databases

-Annotating cell types

-Identifying Tregs in different cancer types

-Clustering analysis

-Deriving novel biological conclusions from generated atlas

## Pipeline and results
(Diagram of workflow)

**Data input**
Single-cell HTAN level 4 data was accessed using synapseclient and downloaded to cbc.sbgenomics as described in the notebook download-synapse-data.sh to perform processing in a jupyter environment.

**Preprocessing, cell annotation, and clustering**
Single-cell RNAseq data was recovered from HTAN as described above and processed using the pipeline elaborated in (link to processing pipeline). Briefly, the data was initially quality checked (fig.) prior to annotation with python-based, CellTypist, for automated cell typing according to references available mainly for human and mouse data. Then, the data is normalized and log transformed to account for 10,000 counts per cell which is used for the creation of UMAP and PCA plots. CellTypist then curates models and ontologies for the annotation of the cells within different clusters. We applied this pipeline on X number of databases and confirmed that the plots were consistent with the original processing (fig). We then selectively extracted the Tregs from the different datasets and fed them into the integration pipeline for further downstream processing and comparisons across samples and cancer subtypes.

**Integration**

**Downstream analysis**

## Limitations?
## Conclusions and future directions
Single-cell RNAseq data was recovered from HTAN as described above and processed using the pipeline elaborated in (link to processing pipeline). Briefly, the data was initially quality checked (fig.) prior to annotation with python-based, CellTypist, for automated cell typing according to references available mainly for human and mouse data. Then, the data is normalized and log transformed to account for 10,000 counts per cell which is used for the creation of UMAP and PCA plots. CellTypist then curates models and ontologies for the annotation of the cells within different clusters. We applied this pipeline on X number of databases and confirmed that the plots were consistent with the original processing (fig). We then selectively extracted the Tregs from the different datasets and fed them into the integration pipeline for further downstream processing and comparisons across samples and cancer subtypes.


