#' Candidate object
#'
#' Objects of class \code{Candidate} are created using the \code{createCandidate} function
#'
#' #' An object of the class `Candidate' has the following slots:
#' \itemize{
#' \item \code{name} Name of the candidate
#' \item \code{party} Candidate's party, either "Democratic" or "Republican"
#' \item \code{delegatesWon} Number of delegates the candidate has won so far
#' \item \code{delegatesNeeded} Number of additional delegates needed to secure nomination
#' }
#'
#' @author Jacob H. Hample: \email{jacob.hample@@wustl.edu}
#' @aliases Candidate-class initialize,Candidate-method show,Candidate-method
#' @rdname Candidate
#' @export


setClass(Class = "Candidate",
         slots = c(name = "character",
                   party = "character",
                   delegatesWon = "numeric",
                   delegatesNeeded = "numeric"),
         prototype = prototype(
                   name = character(),
                   party = character(),
                   delegatesWon = numeric(),
                   delegatesNeeded = numeric()
                   )
         )

#' @export
setMethod("initialize", "Candidate",
          function(.Object, name, party, delegatesWon) {
            .Object@name <- name
            .Object@party <- party
            .Object@delegatesWon <- delegatesWon
            if(party == "Republican") {
              .Object@delegatesNeeded <- 1237 - .Object@delegatesWon
            }
            else if(party == "Democratic") {
              .Object@delegatesNeeded <- 2383 - .Object@delegatesWon
            }
            else {
              stop("You have not chosen a valid party. Please specify either 'Democratic' or 'Republican'")
            }
            value = callNextMethod()
            return(value)
          }
)

#' @export
# Show method
setMethod(f = "show",
          signature = "Candidate",
          definition = function(object) {
            show.dataframe <- data.frame(object@name, object@party, object@delegatesWon, object@delegatesNeeded)
            colnames(show.dataframe) <- c("Name", "Party", "Delegates Won", "Delegates Needed")
            print(show.dataframe)
          }
)

#' @export
# Print method
setMethod(f = "print",
          signature = "Candidate",
          definition = function(x) {
            paste("So far", x@name, "has won", x@delegatesWon, "delegates in the",
                   x@party, "primary and therefore needs", x@delegatesNeeded,
                   "more delegates in order to secure the nomination.", sep = " ")
          }
)

