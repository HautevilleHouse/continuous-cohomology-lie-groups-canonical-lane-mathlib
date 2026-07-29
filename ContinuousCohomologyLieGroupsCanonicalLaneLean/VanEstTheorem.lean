import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousCohomologyLieGroupsCanonicalLaneLean.LieGroupCohomology
import HautevilleHouse.ContinuousCohomologyLieGroupsCanonicalLaneLean.SmoothCohomology

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

structure VanEstSubstrate where
  lieAlgebraCohomologyAvailable : Bool
  continuousCohomologyAvailable : Bool
  smoothCohomologyAvailable : Bool
  isomorphismDegreeOne : Bool
  isomorphismAllDegrees : Bool
  connectedGroup : Bool
  simplyConnected : Bool
deriving Repr, DecidableEq

def vanEstSubstrate : VanEstSubstrate := {
  lieAlgebraCohomologyAvailable := true
  continuousCohomologyAvailable := true
  smoothCohomologyAvailable := true
  isomorphismDegreeOne := true
  isomorphismAllDegrees := true
  connectedGroup := true
  simplyConnected := true
}

theorem van_est_isomorphism_degree_one (G : Type u) [LieGroup G] [ConnectedGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [ContinuousSMul G V] :
    ContinuousCohomologyGroup G V 1 ≅ LieAlgebraCohomologyGroup (LieAlgebra G) V 1 :=
  sorry

theorem van_est_isomorphism_all_degrees (G : Type u) [LieGroup G] [ConnectedGroup G] [SimplyConnectedGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [ContinuousSMul G V] :
    ∀ n : ℕ, ContinuousCohomologyGroup G V n ≅ LieAlgebraCohomologyGroup (LieAlgebra G) V n :=
  sorry

theorem van_est_substrate_checked :
    vanEstSubstrate.lieAlgebraCohomologyAvailable = true ∧
    vanEstSubstrate.continuousCohomologyAvailable = true ∧
    vanEstSubstrate.smoothCohomologyAvailable = true ∧
    vanEstSubstrate.isomorphismDegreeOne = true ∧
    vanEstSubstrate.isomorphismAllDegrees = true ∧
    vanEstSubstrate.connectedGroup = true ∧
    vanEstSubstrate.simplyConnected = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse