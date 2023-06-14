# Open archaeology: a survey of collaborative software engineering in archaeological research

Zack Batist, University of Toronto  
Joe Roe, University of Bern  

This [research compendium](https://research-compendium.science/) contains the data and code for our analysis of the state of the art in archaeological software engineering, using the list compiled at [open-archaeo](https://open-archaeo.info/).

Preliminary results were presented at the [CAA2021 Virtual Conference](https://2021.caaconference.org/) hosted by the Cyprus Institute of Technology, in *[S17, Tools for the Revolution: developing packages for scientific programming in archaeology?](https://sslarch.github.io/sessions/sessioni/)*, a session organised by the special interest group for scientific scripting languages.

## Usage

The compendium is provided as an R package.
The main analysis is described in `analysis/openarchaeo_collaboration.html`, a [Quarto](https://quarto.org/) document generated from `analysis/openarchaeo_collaboration.qmd`.
To reproduce the analysis in full:

1. Download or clone the latest version of this repository
2. Build and install the package with `devtools::install(dependencies = TRUE)` (shortcut `Ctrl+Shift+B` in RStudio)
3. Render the analysis with `quarto render analysis/openarchaeo_collaboration.qmd`

You will need to set up a personal access token (PAT) to access the GitHub API:

```r
usethis::create_github_token()
```

## Citation

This analysis is not yet published.
To cite the [preliminary results presented at CAA](https://github.com/zackbatist/caa2021-openarchaeo/releases/tag/v0.1) as:

* Batist, Zack and Joe Roe. 2021. *Open archaeology: a survey of collaborative software engineering in archaeological research*. Presented at Computer Applications & Quantitative Methods in Archaeology, Limassol (Virtual), 14–18 June 2021.
