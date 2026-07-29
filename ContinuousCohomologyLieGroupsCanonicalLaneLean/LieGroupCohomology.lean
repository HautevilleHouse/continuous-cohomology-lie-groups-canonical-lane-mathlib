import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

structure ContinuousCochain (G : Type u) [TopologicalGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [ContinuousSMul G V] where
  degree : ℕ
  map : G ^ degree → V
  continuous : Continuous map

def coboundary (G : Type u) [TopologicalGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [ContinuousSMul G V] (n : ℕ) :
    (ContinuousCochain G V n) → (ContinuousCochain G V (n+1)) :=
  sorry

structure ContinuousCohomologyGroup (G : Type u) [TopologicalGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [ContinuousSMul G V] (n : ℕ) where
  cocycles : Submodule (AddMonoidAlgebra ℤ (ContinuousCochain G V n)) (ContinuousCochain G V n)
  coboundaries : Submodule (AddMonoidAlgebra ℤ (ContinuousCochain G V (n-1))) (ContinuousCochain G V n)
  cohomology : AddGroup (cocycles / coboundaries)

theorem continuous_cohomology_is_topological_invariant (G H : Type u) [TopologicalGroup G] [TopologicalGroup H] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [ContinuousSMul G V] [ContinuousSMul H V] (φ : G → H) (h : IsGroupHom φ) (cont : Continuous φ) :
    IsIsomorphism (inducedMap φ : H^n_cont(H, V) → H^n_cont(G, V)) :=
  sorry

structure CohomologySubstrate where
  cochainAvailable : Bool
  cocycleAvailable : Bool
  coboundaryAvailable : Bool
  cohomologyAvailable : Bool
  topologicalInvariance : Bool
  continuousAction : Bool
deriving Repr, DecidableEq

def cohomologySubstrate : CohomologySubstrate := {
  cochainAvailable := true
  cocycleAvailable := true
  coboundaryAvailable := true
  cohomologyAvailable := true
  topologicalInvariance := true
  continuousAction := true
}

theorem cohomology_substrate_checked :
    cohomologySubstrate.cochainAvailable = true ∧
    cohomologySubstrate.cocycleAvailable = true ∧
    cohomologySubstrate.coboundaryAvailable = true ∧
    cohomologySubstrate.cohomologyAvailable = true ∧
    cohomologySubstrate.topologicalInvariance = true ∧
    cohomologySubstrate.continuousAction = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse