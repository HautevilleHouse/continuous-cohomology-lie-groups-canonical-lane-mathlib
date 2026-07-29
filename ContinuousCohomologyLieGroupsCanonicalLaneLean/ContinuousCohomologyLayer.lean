import ContinuousCohomologyLieGroupsCanonicalLaneLean.LieGroupObjects
import Mathlib.Algebra.Homology.Cohomology

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

open Topology

structure ContinuousCochain (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] (n : ℕ) where
  toFun : G ^ n → ℝ
  continuous_toFun : Continuous toFun

typeclass ContinuousGroupCohomology (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] where
  cochain (n : ℕ) : Type u
  coboundary {n : ℕ} : cochain n → cochain (n+1)
  cohomology (n : ℕ) : Type u

structure CohomologyClass (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] (n : ℕ) where
  rep : ContinuousCochain G n
  closed : (ContinuousGroupCohomology.coboundary rep) = 0

theorem continuous_cochain_continuous (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] (n : ℕ) (c : ContinuousCochain G n) : Continuous c.toFun :=
  c.continuous_toFun

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse