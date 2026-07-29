import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousCohomologyLieGroupsCanonicalLaneLean.ContinuousCohomologyDefs

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

open TopologicalGroup

structure VanishingResult (G : Type u) [TopologicalGroup G] [LieGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [Module ℝ V] [ContinuousSMul ℝ V] (q : ℕ) where
  cohomologyGroup : ContinuousCohomologyGroup G V q
  vanishes : Prop
  reason : String

theorem vanising_for_connected_semisimple (G : Type u) [TopologicalGroup G] [LieGroup G] [Connected G] [Semisimple G] (q : ℕ) (hq : q > 0) :
    VanishingResult G (trivialAction G ℝ) q := by
  sorry

theorem vanising_for_compact (G : Type u) [TopologicalGroup G] [LieGroup G] [CompactGroup G] (q : ℕ) (hq : q > 0) :
    VanishingResult G (trivialAction G ℝ) q := by
  sorry

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse