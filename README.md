# cytogallery

This is the source repo for cytoverse gallery site [gallery.cytoverse.org](https://admiring-mestorf-d2a85b.netlify.app/gallery).
It provides examples (written as R markdown files) to supplement the cytoverse package vignettes.

It is built by `blogdown` + `hugo-theme-zdoc`. 

# How to contribute the examples

- fork the cytogallery repo
- write self-contained and reproducible Rmd file that demonstrates usage of a particular cytoverse functionality
- copy the Rmd doc into one of the subfolder under `cytogallery/content/en/gallery` 
   -  e.g. if it is an example for `ggcyto`, copy it to `cytogallery/content/en/gallery/ggcyto` folder
   - make sure the Rmd doc contains a `title` that is unique within that subfolder
- commit to the forked repo and submit the pull request

cytoverse team will verify its content and merge it. The new example should automatically appear in [gallery.cytoverse.org](https://admiring-mestorf-d2a85b.netlify.app/gallery).