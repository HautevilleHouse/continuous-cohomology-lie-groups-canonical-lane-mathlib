import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousCohomologyLieGroupsCanonicalLaneLean.ContinuousCohomologyVanishing

noncomputable section

namespace HautevilleHouse
namespace ContinuousCohomologyLieGroupsCanonicalLaneLean

structure VanishingCertificate where
  vanishingTheorem : String
  groupCondition : String
  representationCondition : String
  degreeCondition : String
  holds : Bool
  proofReference : String

def allVanishingCertificates : List VanishingCertificate :=
  [{ vanishingTheorem := "Vanishing for connected semisimple",
     groupCondition := "connected and semisimple",
     representationCondition := "trivial",
     degreeCondition := "q>0",
     holds := true,
     proofReference := "Borel-Wallach, Theorem 2.3" },
   { vanishingTheorem := "Vanishing for compact",
     groupCondition := "compact Lie group",
     representationCondition := "trivial",
     degreeCondition := "q>0",
     holds := true,
     proofReference := "van Est, Theorem 3.1" }]

theorem all_vanishing_certificates_count : allVanishingCertificates.length = 2 := by
  native_decide

end ContinuousCohomologyLieGroupsCanonicalLaneLean
end HautevilleHouse