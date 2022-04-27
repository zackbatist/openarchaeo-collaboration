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

This paper investigates how archaeological software development has adopted open source development models, specifically focusing on how archaeologists implement their collaborative features.
We use open-archaeo (https://open-archaeo.info/), a curated list of 300+ active open source archaeological software packages, augmented with data collected from GitHub's API, to identify _what_ kinds of software archaeologists are making, and to evaluate _how_ archaeologists create these tools, with particular emphasis on practices of collaboration. 
Our analysis also shows an uneven use of git and GitHub's extended features, beyond their basic usage as a version control system and repository host. 
The vast majority of repositories have 1–3 contributors, with only a few distinguished by an active and diverse developer base. 
Similarly, collaborative features such as GitHub "issues" are used in only a minority of repositories. 
Network analysis of contributions made towards software development projects, which is still in a prelimary phase, will identify certain common factors pertaining to projects exhibiting varying degrees of collaborative work. 
By analyzing interactions archaeologists among using the GitHub platform, including the ways they contribute to collective code bases, we demonstrate how archaeological software engineering is beginning to foster new kinds of collaborative commitments that are rooted in established cultural practices.
