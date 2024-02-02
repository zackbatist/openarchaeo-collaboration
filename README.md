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

You can also step through the individual sections of the analysis in the RMarkdown documents under `analysis/` (`_01-introduction.qmd`, `_02-background.qmd`, etc.)
These must be run in sequence and after the main document `openarchaeo_collaboration.qmd`, which loads the packages the analysis uses.

The GitHub data we used for the published analysis is cached in `analysis/data/derived_data/oarch.RData`.
If you want to update or re-acquire it, you will need to set up a personal access token (PAT):

```r
usethis::create_github_token()
```

Note that this is time-consuming and must be done in batches to stay within GitHub's rate limit.

## Citation

This analysis is not yet published.
To cite the [preliminary results presented at CAA](https://github.com/zackbatist/caa2021-openarchaeo/releases/tag/v0.1) as:

* Batist, Zack and Joe Roe. 2021. *Open archaeology: a survey of collaborative software engineering in archaeological research*. Presented at Computer Applications & Quantitative Methods in Archaeology, Limassol (Virtual), 14–18 June 2021.

## License

This work is copyright 2021 Zack Batist and Joe Roe and licensed as follows:

* Original data (from <https://open-archaeo.info>) – [CC0 No Rights Reserved](https://creativecommons.org/public-domain/cc0/)
* Code – [MIT License](https://choosealicense.com/licenses/mit/)
* Text and images – [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
