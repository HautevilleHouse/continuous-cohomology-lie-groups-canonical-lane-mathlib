import ContinuousCohomologyLieGroupsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  localWitness : String
  bridgeEvidence : String
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

structure ClosureState where
  object : AdmittedTheoremObject

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := sourceTheoremBoundary.claimBoundary
}

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧ O.object.theoremObject = sourceDescription

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse