---
title: 'Open archaeology, open source?'
subtitle: 'Collaborative practices in the emerging community of archaeological 
  software engineers'
author:
  - Zack Batist:
      institute: University of Toronto
      correspondence: "yes"
      email: z.batist@mail.utoronto.ca
  - Joe Roe:
      institute: University of Bern
      correspondence: "yes"
      email: joe@joeroe.io
bibliography: bibliography.bib
output: 
  pdf_document:
    pandoc_args:
      - --lua-filter=scholarly-metadata.lua
      - --lua-filter=author-info-blocks.lua
---

Abstract submission to the *Journal of Computer Applications in Archaeology*, special collection on 50 years of computational archaeology (volume 2).

# Abstract

Surveying the first quarter-century of computer applications in archaeology, Scollar [-@scollar1999] lamented that the field relied almost exclusively on "hand-me-down" tools repurposed from other disciplines.
25 years later, this is no longer the case:
computational archaeologists often find themselves practicing the dual roles of data analyst and "research software engineer" [@baxter2012], developing and applying new tools that are tailored specifically to archaeological problems and archaeological methods.
Though this trend can be traced to the very earliest days of the field [@cowgill1967], its most recent manifestation is distinguished by its apparently embrace of practices from free and open source software (FOSS).
Most prominently, since around 2015, there has been a rapid uptake of workflow tools designed for open source development communities, such as the version control system `git` and associated online source code management platforms (e.g. GitHub, GitLab).
These tools facilitate collaboration among developers and users of FOSS software using patterns that can diverge quite radically from conventional scholarly norms [@tennant2020].

In this paper, we investigate modes of collaboration in this emerging community of practice using "open-archaeo" (https://open-archaeo.info/), a curated list of 500+ active open projects in archaeology, augmented where available with data on their activity on GitHub.
We apply network analysis to map the networks of collaboration that have emerged among archaeologists using GitHub, and conduct a quantitative exploratory analysis to characterize the nature and intensity of these collaborations.
Our results show an uneven adoption of open source collaborative practices beyond the basic use of `git` as a version control system and GitHub to host source code.
A majority of repositories have 1–3 contributors, with only a few projects distinguished by an active and diverse developer base.
More community-oriented features, such as GitHub's "issues" and "comments", are used in only a minority of repositories.
Preliminary findings from ongoing work also shows how collaborative behaviours vary across different subcommunities.
By analyzing interactions among archaeologists using the GitHub platform, including the ways they contribute to collective code bases, we demonstrate how archaeological software engineering is beginning to foster new kinds of collaborative commitments that blend open source protocols, DIY work ethic, conventional forms of scholarly communication, and cultural practices unique to archaeology.

\newpage

# References
