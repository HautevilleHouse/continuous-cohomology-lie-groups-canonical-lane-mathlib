import canonicalLaneMathlib.AdmissibleClass

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

structure ContinuousCohomologyGroup (G : Type u) [TopologicalGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [Module ℝ V] [ContinuousSMul ℝ V] (q : ℕ) where
  cocycles : Set (G^q → V)
  coboundaries : Set (G^q → V)
  cohomology : Type u

def continuousCohomology (G : Type u) [TopologicalGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [Module ℝ V] [ContinuousSMul ℝ V] (q : ℕ) : Type u :=
  (ContinuousCohomologyGroup G V q).cohomology

structure LieGroupAction (G : Type u) [TopologicalGroup G] [LieGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [Module ℝ V] [ContinuousSMul ℝ V] where
  action : G → V → V
  continuous : Continuous (λ (g : G, v : V) => action g v)
  linear : ∀ g, LinearMap ℝ V V (action g)
  smooth : Smooth (G × V) V (λ (g, v) => action g v)

def trivialAction (G : Type u) [TopologicalGroup G] [LieGroup G] (V : Type u) [TopologicalAddGroup V] [ContinuousAdd V] [Module ℝ V] [ContinuousSMul ℝ V] : LieGroupAction G V :=
  { action := λ g v => v
    continuous := continuous_snd
    linear := λ g => LinearMap.id
    smooth := smooth_snd
  }

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse