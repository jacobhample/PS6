#' Computes proportion of remaining delegates necessary to secure the nomination
#'
#' A function that calculates the proportion of remaining delegates needed by a presidential candidate to secure the nomination
#'
#' @param candidate An object of the class 'Candidate'
#' @param remaining.delegates The number of delegates yet to be allocated in the candidate's party.
#'
#' @return The proportion of the delegates a given candidate still needs to secure his/her party nomination
#'
#' @author Jacob Hample \email{jacob.hample@@wustl.edu}
#' @examples
#'
#' candidate.Hillary <- createCandidate("Hillary Clinton", "Democratic", 1614)
#' propNeeded(candidate.Hillary, 2295)
#'
#' @seealso \code{\link{createCandidate}}, \code{\link{Candidate}}
#' @rdname propNeeded
#' @aliases propNeeded,ANY-method
#' @export

setGeneric(name = "propNeeded",
           defintition = function(candidate, remaining.delegates)
           {standardGeneric("propNeeded")}
)

setMethod(f = "propNeeded",
          definition = function(candidate, remaining.delegates) {
            proportion <- (candidate@delegatesNeeded - candidate@delegatesWon) / remaining.delegates
            return(ifelse(proportion <= 1, proportion,
                          "Sorry, it looks like someone else has already locked up the nomination."))
          })
