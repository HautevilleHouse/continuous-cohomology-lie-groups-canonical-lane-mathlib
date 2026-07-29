import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousCohomologyLieGroupsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ContinuousCohomologyLieGroupsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

def ConstrainedContinuousCohomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_cohomology_endgame (A : AdmissibleClass) :
    ConstrainedContinuousCohomologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse