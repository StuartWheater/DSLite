#' Setup a test environment based on the DISCORDANT simulated datasets
#'
#' Load the DISCORDANT datasets, the corresponding login data object, instanciate a new \link{DSLiteServer}
#' hosting these datasets and verify that the required DataSHIELD server-side packages are installed.
#'
#' @param packages DataSHIELD server-side packages which local installation must be verified so that the \link{DSLiteServer}
#' can auto-configure itself and can execute the DataSHIELD operations. Default is none.
#' @param env The environment where DataSHIELD objects should be looked for: the \link{DSLiteServer} and
#' the DSIConnection objects. Default is the Global environment.
#' @return The login data for the \link{datashield.login} function.
#' @family setup functions
#' @export
setupDISCORDANTTest <- function(packages = c(), env = globalenv()) {
  setupDSLiteServer(packages, c("DISCORDANT_STUDY1", "DISCORDANT_STUDY2", "DISCORDANT_STUDY3"),
                    "logindata.dslite.discordant", "DSLite", "dslite.server", env)
}
