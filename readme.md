
<!--
The readme.md file is automatically generated using Quarto.
The automation was put in place to ensure that the latest update information is available.
To see/update the code that creates this markdown, see the ./readme.Qmd file.
-->

# R Shiny Template Dashboard

- **By:** [Andrew Ross](mailto:andrew2.ROSS@education.gov.uk)
- **App Version:** v1.0
- **Updated On:** 2023-06-23
- **Updated By:** Andrew Ross

------------------------------------------------------------------------

## Rendering this readme

To render this readme file and the about tab, use the below R-code:

``` r
quarto::quarto_render("readme.qmd", output_format = "gfm")
quarto::quarto_render("./code/ui/markdown/about.qmd", output_format = "gfm")
```

This should be done each time version log is updated.

Don’t forget to update the version log when you update the app!

------------------------------------------------------------------------

## Using This Template

1.  Create your new repo in DevOps.
    - Do not just edit this repository, as this is the template and we
      don’t want to overwite it!
    - It’s better and easier to create your repo first than to build
      your app then upload it to a repository.
2.  Download the contents of [this
    repository](https://github.com/Random483/template-dashboard/) and
    paste it into your new empty repository.
    - If adding this template to an existing repository, make sure you
      check for conflicts before overwriting any files.
3.  Commit and push the repo, with a relevant commit message,
    e.g. *“Applied Dashboard Template”*
4.  Edit the files as necessary.
5.  Edit this file to reflect your new app.

------------------------------------------------------------------------

## Structure of This Template

### Why do I use this layout?

Whilst I know it is possible to have everything in one really big file
and navigate through it with pointers, I have a personal preference of
many short files saved into a file system that is clearly laid out. This
makes it simpler for me to be able to find the file I am interested in
editing, and to keep track of the structure of the project as a whole.

For example, if I want to edit a function, I can go to the
`./code/server/functions` folder and look for the appropriately named
function. If I want to add in a new function, I can create a new file
and save it to the `./code/server/functions` folder, then reference it
in the server file conveniently located `./code/server/server.r`.
Similarly, if I want to edit a particular element of the user interface,
I can quickly navigate through the ui folders to find the appropriate
file.

I have also had very positive reviews of this layout when code has been
referred for QA.

### Outline

- ![Root
  Folder](https://img.shields.io/badge/Folder-Root_Project-51397a?&labelColor=e87d1e&logoColor=ffffff&logo=files&style=plastic.png)
  *Project folder containing all files*
  - ![readme.qmd: Source readme
    file](https://img.shields.io/badge/Quarto-readme.qmd-51397a?&labelColor=447099&logoColor=ffffff&logo=markdown&style=plastic)
    *Quarto source readme file for editing. Where **This File** is
    edited*
  - ![readme.md: Readme markdown
    file](https://img.shields.io/badge/Markdown-readme.md-51397a?&labelColor=0000000&logoColor=ffffff&logo=markdown&style=plastic)
    *Readme file for the project (do not edit)*
  - ![app.r: Main app
    file](https://img.shields.io/badge/R-app.r-51397a?&labelColor=1f65cc&logoColor=ffffff&logo=r&style=plastic)
    *Main app file: This file should not need editing.*
  - ![.lintr: linter
    file](https://img.shields.io/badge/Linter-.lintr-51397a?&labelColor=260859&style=plastic)
    *Linting specifications*
  - ![custom.css: Custom styling
    document](https://img.shields.io/badge/CSS-Custom.css-51397a?&labelColor=260859&style=plastic)
    *Custom CSS styling: I’ve set this up for accessibility, using the
    DFE Style guide and the GSS Style Guide*
  - ![Code
    Folder](https://img.shields.io/badge/Folder-Code-51397a?&labelColor=e87d1e&logoColor=ffffff&logo=files&style=plastic.png)
    *Project folder containing all files*
    - ![global.r: file for loading global
      variables](https://img.shields.io/badge/R-global.r-51397a?&labelColor=1f65cc&logoColor=ffffff&logo=r&style=plastic)
      *This file runs on startup: Load environmental variables here*
    - ![Server
      Folder](https://img.shields.io/badge/Folder-Server-51397a?&labelColor=e87d1e&logoColor=ffffff&logo=files&style=plastic.png)
      *Project folder containing server functions*
      - ![server.r: file for loading app
        functions](https://img.shields.io/badge/R-server.r-51397a?&labelColor=1f65cc&logoColor=ffffff&logo=r&style=plastic)
        *This file links to the functions used to make the dashboard
        work*
      - ![Functions
        Folder](https://img.shields.io/badge/Folder-Functions-51397a?&labelColor=e87d1e&logoColor=ffffff&logo=files&style=plastic.png)
        *Add custom shiny functions here, and link in the server.r file*
      - ![Render
        Folder](https://img.shields.io/badge/Folder-Render-51397a?&labelColor=e87d1e&logoColor=ffffff&logo=files&style=plastic.png)
        *Add rendering files here, and link in the server.r file
        (including renderText, renderTable, etc)*
    - ![UI
      Folder](https://img.shields.io/badge/Folder-UI-51397a?&labelColor=e87d1e&logoColor=ffffff&logo=files&style=plastic.png)
      *Project folder containing user interface files for the separate
      tabs of the dashboard (add files for ui here)*
      - ![ui.r: file for loading user
        interface](https://img.shields.io/badge/R-ui.r-51397a?&labelColor=1f65cc&logoColor=ffffff&logo=r&style=plastic)
        *This file sets out the user interface of the app*
      - ![Markdown
        Folder](https://img.shields.io/badge/Folder-Markdown-51397a?&labelColor=e87d1e&logoColor=ffffff&logo=files&style=plastic.png)
        *Project folder containing markdown files for static info tabs
        (add any markdown files here)*
        - ![about.qmd: Source about
          file](https://img.shields.io/badge/Quarto-About.qmd-51397a?&labelColor=447099&logoColor=ffffff&logo=markdown&style=plastic)
          *Quarto source about file for editing: This file contains the
          markdown for the about tab*
        - ![about.md: about markdown
          file](https://img.shields.io/badge/Markdown-About.md-51397a?&labelColor=0000000&logoColor=ffffff&logo=markdown&style=plastic)
          *Markdown for the About tab (do not edit)*
        - ![landing_page.md: markdown
          file](https://img.shields.io/badge/Markdown-Landing_Page.md-51397a?&labelColor=0000000&logoColor=ffffff&logo=markdown&style=plastic)
          *Markdown for the landing page: Edit this to update the
          landing page*
  - ![Renv
    Folder](https://img.shields.io/badge/Folder-Renv-51397a?&labelColor=e87d1e&logoColor=ffffff&logo=files&style=plastic.png)
    *This folder contains the R environment, as managed by the renv
    library. Do not edit this directly unless you know what you are
    doing. It is far better to manage this through the renv functions
    outlined below.*

------------------------------------------------------------------------

## Renv Environment

### What is Renv and Why Should We Use It?

Renv is a package that acts as a package manager within your project.
You use it to control the versions of your packages within the project,
independently of what is installed elsewhere on your system. It is
particularly useful when multiple people may be working on the same
project, or when the project is to be deployed elsewhere.

### What if we don’t want to use it?

It is possible to build your app without renv. However, if you haven’t
used renv, then when you deploy your app to RSConnect it will have to
download and install the packages itself. This is notoriously slow,
making an otherwise 1-2 minute update take well over an hour. There is
also no control over which version of each package installed to the
server.

### What are the benefits of Renv?

Alternatively by using renv, anyone also working on the app and
RSConnect will be using the same versions of all the packages. I have
also experienced deployment times of less than 1 minute!

### Packages already loaded into Renv

- **languageserver:** Something descriptive
- **shiny:** Used for building the app
- **tidyverse:** Always needed!
- **scales:** Useful for making percentages and cash amounts neat
- **viridis:** Colour scales where needed
- **kableExtra:** Pretty table outputs
- **janitor:** Use this for tidying datasets and nice rounding
- **DT:** Alternative to kableExtra
- **markdown:** For rendering Rmarkdown documents
- **quarto:** For rendering Quarto documents

### Adding extra packages into your dashboard via Renv

When installing packages, use `renv::install("package_name")` to install
directly into renv. Once you have finished adding packages, save the
environment using `renv::snapshot()`. This will ensure that any new
packages are loaded into your app for deployment.

------------------------------------------------------------------------

*This dashboard created using the [dashboard template
here](https://github.com/Random483/template-dashboard)*
