% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DrugCombination.R
\name{DrugCombination}
\alias{DrugCombination}
\title{Treatment Efficacy of the Drug Combination.}
\usage{
DrugCombination(
  SC.integrated = SC.data,
  Gene.data = Gene.list,
  Drug.data = Drug.ident.res,
  Drug.FDR = 0.1,
  FDA.drug.only = TRUE,
  Combined.drugs = 2,
  GSE92742.gctx = NULL,
  GSE70138.gctx = NULL,
  Case = NULL,
  Tissue = "breast"
)
}
\arguments{
\item{SC.integrated}{A Seurat object of aligned single cells from SCalignment function.}

\item{Gene.data}{A list of differnential gene expression profiles for every cell type. It's from GetGene function.}

\item{Drug.data}{A list of mono-drugs for every cell type. It's from GetDrug function.}

\item{Drug.FDR}{The FDR threshold to select drug. The default value is 0.1.}

\item{FDA.drug.only}{logical; if TRUE, will only return FDA-approved drugs.}

\item{Combined.drugs}{The number of drugs in a combination. The default value is 2.}

\item{GSE92742.gctx}{The gctx file contains drug responses from GSE92742 dataset (https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE92742).}

\item{GSE70138.gctx}{The gctx file contains drug responses from GSE70138 dataset (https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE70138).}

\item{Case}{A vector contains names of case samples.}

\item{Tissue}{Reference tissue. If one used lung_rankMatrix.txt in GetDrugRef function, then the Reference tissue is lung.}
}
\value{
A data frame of drug combinations with therapeutics scores and FDR.
}
\description{
It evaluates treatment efficacy to identify drug combinations that can best reverse the target genes’ expression in diseased cells in case samples.
}
\details{
This function evaluates treatment efficacy and ranks drug combinations using therapeutics score, which integrates gene responses to multiple drugs, the proportion of genes, and cells treated by combined drugs.
}
