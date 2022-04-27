---
title: "Open archaeology: a survey of collaborative software engineering in archaeological research"
author:
  - Zack Batist
  - Joe Roe
desc: "Abstract to be submitted to the Journal of Computer Applications in Archaeology, special collection on 50 years of computational archaeology. See https://journal.caa-international.org/about/special-collections and https://github.com/zackbatist/openarchaeo-collaboration."
bibliography: bibliography.bib
---

Surveying the first quarter-century of computer applications in archaeology, [@scollar1999] lamented that the field relied almost exclusively on "hand-me-down" tools repurposed from other disciplines.
25 years later, this is no longer the case.
Computational archaeologists today often find themselves practicing the dual roles of data analyst and 'research software engineer' [@baxter2012], developing and applying new tools that are tailored specifically to archaeological problems and archaeological methods.
Though this trend can be traced to the very earliest days of the field [@cowgill1967], its most recent manifestation is distinguished by its apparently unquestioned<!-- JR: too strong? --> embrace of practices from free and open source software (FOSS).
Most prominently, since around 2015, there has been a rapid uptake of workflow tools designed for open source development communities, such as the version control system `git` and associated online source code management platforms (e.g. GitHub, GitLab).
These tools facilitate collaboration among developers and users of FOSS software using patterns that can diverge quite radically from conventional scholarly norms [@tennant2020].

In this paper, we investigate modes of collaboration in this emerging community of practice using ''open-archaeo'' (https://open-archaeo.info/), a curated list of 300+ active open projects in archaeology, augmented where available with data on their activity on GitHub.
We apply network analysis to map the networks of collaboration that have emerged among archaeologists using GitHub, followed by a quantitative exploratory analysis to characterize the nature and intensity<!-- JR: not the most specific phrasing...--> of these collaborations.
Our results show an uneven adoption of open source collaborative practices beyond the basic use of `git` as a version control system and GitHub to host source code.
A majority of repositories have 1–3 contributors, with only a few projects distinguished by an active and diverse developer base. 
More community-oriented features, such as GitHub's "issues" and "comments", are used in only a minority of repositories. 
<!-- JR: Something about network analysis showing that this differs amongst different subcommunities, or is it too early to say? -->
By analyzing interactions archaeologists among using the GitHub platform, including the ways they contribute to collective code bases, we demonstrate how archaeological software engineering is beginning to foster new kinds of collaborative commitments that are rooted in established cultural practices.<!-- JR: It would be nice if we could end on something stronger? i.e. can we conclude that archaeologists are not doing 'pure FOSS' development (if that exists), but some blend of open source, DIY, and conventional scholarly collaboration? -->
