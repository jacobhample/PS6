#' Creates an object of class `Candidate'
#'
#' A function to create a new object of class Candidate, that automatically calculates
#' how many delegates the candidate still needs to secure her party's nomination.
#'
#' @param name A string with the name of the presidential candidate
#' @param party A string with the candidate's party, either "Democratic" or "Republican"
#' @param delegatesWon A numeric with the number of delegates the candidate has won thus far
#'
#' @return An object of class `Candidate' that contains
#' \itemize{
#' \item \code{name} Name of the candidate
#' \item \code{party} Candidate's party, either "Democratic" or "Republican"
#' \item \code{delegatesWon} Number of delegates the candidate has won so far
#' \item \code{delegatesNeeded} Number of additional delegates needed to secure nomination
#' }
#'
#' @author Jacob H. Hample: \email{jacob.hample@@wustl.edu}
#' @examples
#'
#' createCandidate("Hillary Clinton", "Democratic", 1614)
#'
#' @rdname createCandidate
#' @aliases createCandidate,ANY-method
#' @export

setGeneric(name = "createCandidate",
           defintion = function(name, party, delegatesWon)
           {standardGeneric("createCandidate")}
)

setMethod(f = "createCandidate",
          definition = function(name, party, delegatesWon) {
            return(new("Candidate", name = name, party = party, delegatesWon = delegatesWon))
          })
