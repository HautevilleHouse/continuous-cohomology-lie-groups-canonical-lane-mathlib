import ContinuousCohomologyLieGroupsCanonicalLaneLean.FinalTheorem
import Mathlib.GroupTheory.LieGroup
import Mathlib.Topology.Instances.Real

noncomputable section

universe u

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

open Topology

structure NativeLieGroup : Type (u + 1) where
  carrier : Type u
  [group : Group carrier]
  [topologicalSpace : TopologicalSpace carrier]
  [topologicalGroup : TopologicalGroup carrier]
  [smoothManifold : SmoothManifold carrier]
  [lieGroup : LieGroup carrier]

typeclass ContinuityAction (G : Type u) [Group G] [TopologicalSpace G] [TopologicalGroup G] (M : Type u) [TopologicalSpace M] where
  act : G → M → M
  continuous_act : Continuous (Function.uncurry act)

structure LieGroupObject where
  group : NativeLieGroup
  action : ContinuityAction group.carrier group.carrier

theorem lie_group_continuity_ensured (G : LieGroupObject) : Continuous (Function.uncurry G.action.act) :=
  G.action.continuous_act

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse