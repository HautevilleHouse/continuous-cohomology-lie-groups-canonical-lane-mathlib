import ContinuousCohomologyLieGroupsCanonicalLaneLean.CohomologyCertificate

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  adoptedCohomologyStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  adoptedCohomologyStatement := "continuous cohomology of Lie groups admitted via bridge and gate",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository :=
by rfl

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse