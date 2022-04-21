---
title: "Open archaeology: a survey of collaborative software engineering in archaeological research"
author:
  - Zack Batist
  - Joe Roe
desc: "Abstract to be submitted to the Journal of Computer Applications in Archaeology, special collection on 50 years of computational archaeology. See https://journal.caa-international.org/about/special-collections and https://github.com/zackbatist/openarchaeo-collaboration."
---

Archaeologists increasingly use scientific programming languages such as R and Python to write, modify, comment on, review, share and reuse scripted analyses, enabling more advanced manipulation of digital data [@schmidt2020]. This often consists of custom scripts that parse and transform archaeological data using generic functions for data manipulation, statistical analysis, and visualization that are designed to support a broad set of applications common across research settings. But these "off the shelf" tools rarely account for archaeological workflows in their design, which imposes limits on how they may be used in archaeological research contexts. At the same time (and perhaps in response), it is becoming more common for archaeologists to develop their own software that is explicitly targeted at their use cases. More specifically, archaeologists are developing functions that deal with the data structures, processes and desired outputs that are of particular interest to their domain of work.

Building these tools involves a distinct set of skills, shifting the developer from the role of analyst to that of a "research software engineer" [@baxter2012]. Although the intersection of archaeology and software engineering is not new, these contemporary projects are distinguished by their adoption of practices from open source software development, particularly use of the git version control system and associated web-based source code management platforms (e.g. GitHub and GitLab) to facilitate collaboration among multiple developers.

In this paper, we survey the state of the art in archaeological software engineering, documenting the wide range of general-purpose digital tools currently in development. Using open-archaeo (https://open-archaeo.info/), a curated list of 300+ active open source archaeological software packages, augmented with data collected from GitHub's API, we identified emerging norms in software development and collaboration, focusing on three key questions:

- What types of open source projects are have been developed by archaeologists over the last 5–10 years?
- To what extent to these projects leverage the collaborative features of git/GitHub?
- Does collaboration in software development mirror, or differ from, collaborative practices in archaeological research more broadly?

We find that collaborative open source software development in archaeology, measured both in the number of projects and discrete contributions tracked in git repositories, has seen a rapid and sustained increase beginning around 2015. Our analysis also shows an uneven use of git and GitHub's extended features, beyond their basic usage as a version control system and repository host. The vast majority of repositories have 1–3 contributors, with only a few distinguished by an active and diverse developer base. Similarly, collaborative features such as GitHub "issues" are used in only a minority of repositories. However, a network analysis of repository contributors may point to some nascent communities of practice. By analyzing interactions archaeologists using the GitHub platform, including the ways they contribute to collective code bases, we demonstrate how archaeological software engineering is beginning to foster new kinds of collaborative commitments.
