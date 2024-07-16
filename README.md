# Open archaeology: a survey of collaborative software engineering in archaeological research

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10631068.svg)](https://doi.org/10.5281/zenodo.10631068)

Zack Batist, University of Toronto  
Joe Roe, University of Bern  

This [research compendium](https://research-compendium.science/) contains the data and code for an [analysis of the state of the art in archaeological software engineering](https://intarch.ac.uk/journal/issue67/13/index.html) using the [open-archaeo](https://open-archaeo.info/) directory and data from the [GitHub REST API](https://docs.github.com/en/rest). 
It accompanies our paper in *Internet Archaeology*:

> Batist, Z. & Roe, J., 2024. Open archaeology, open source? Collaborative practices in an emerging community of archaeological software engineers. *Internet Archaeology* 67. <https://doi.org/10.11141/ia.67.13>

Preliminary results were also presented at the [CAA2021 Virtual Conference](https://2021.caaconference.org/) hosted by the Cyprus Institute of Technology, in *[S17, Tools for the Revolution: developing packages for scientific programming in archaeology?](https://sslarch.github.io/sessions/sessioni/)*, a session organised by the special interest group for scientific scripting languages.

## Usage

The compendium is provided as an R package.
The main analysis is described in `analysis/openarchaeo_collaboration.html`, a [Quarto](https://quarto.org/) document generated from `analysis/openarchaeo_collaboration.qmd`.
To reproduce the analysis in full:

1. Download or clone the latest version of this repository
2. Build and install the package with `devtools::install(dependencies = TRUE)` (shortcut `Ctrl+Shift+B` in RStudio)
3. Render the analysis with `quarto render analysis/openarchaeo_collaboration.qmd`

You can also step through the individual sections of the analysis in the RMarkdown documents under `analysis/` (`_01-introduction.qmd`, `_02-background.qmd`, etc.)
These must be run in sequence and after the main document `openarchaeo_collaboration.qmd`, which loads the packages the analysis uses.

The GitHub data we used for the published analysis is cached in `analysis/data/derived_data/oarch.RData`.
If you want to update or re-acquire it, you will need to set up a personal access token (PAT):

```r
usethis::create_github_token()
```

Note that this is time-consuming and must be done in batches to stay within GitHub's rate limit.

## Citation

Please cite the original paper as:

> Batist, Z. & Roe, J., 2024. Open archaeology, open source? Collaborative practices in an emerging community of archaeological software engineers. *Internet Archaeology* 67. <https://doi.org/10.11141/ia.67.13>

## License

This work is copyright 2021 Zack Batist and Joe Roe and licensed as follows:

* Original data (from <https://open-archaeo.info>) – [CC0 No Rights Reserved](https://creativecommons.org/public-domain/cc0/)
* Code – [MIT License](https://choosealicense.com/licenses/mit/)
* Text and images – [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
