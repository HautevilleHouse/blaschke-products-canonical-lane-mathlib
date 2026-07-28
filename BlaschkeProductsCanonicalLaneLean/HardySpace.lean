import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure HardySpacePackage where
  functionSpace : Type u
  normed : Prop
  completeness : Prop
  blaschkeConditionEmbedded : Prop

structure HardySpaceEvidence (H : HardySpacePackage) where
  normedClosed : H.normed
  completenessClosed : H.completeness
  blaschkeConditionEmbeddedClosed : H.blaschkeConditionEmbedded

def HardySpaceClosed (H : HardySpacePackage) : Prop :=
  H.normed ∧ H.completeness ∧ H.blaschkeConditionEmbedded

theorem hardy_space_closed_from_evidence (H : HardySpacePackage) (E : HardySpaceEvidence H) :
    HardySpaceClosed H := by
  exact And.intro E.normedClosed (And.intro E.completenessClosed E.blaschkeConditionEmbeddedClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse