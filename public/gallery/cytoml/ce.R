#+ message = FALSE
library(CytoML)
acsfile <- system.file("extdata/cytobank_experiment.acs", package = "CytoML")
#constrct ce object
ce <- cytobankExperiment(acsfile)
ce
#ce accessors
getCompensationMatrices(ce)[[1]]

getTransformations(ce)

pData(ce)

colnames(ce)

markernames(ce)

#parse ce into gs
gs <- cytobank2GatingSet(ce)

pData(gs)
#check stats against csv from acs
statsfile <- ce$attachments[1]
dt_merged <- compare.counts(gs, statsfile, id.vars = "population", skip = "FCS Filename")


all.equal(dt_merged[, count.x], dt_merged[, count.y], tol = 5e-4)

