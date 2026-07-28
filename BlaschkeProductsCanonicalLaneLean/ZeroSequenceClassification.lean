import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure ZeroSequenceClassificationPackage where
  zeroSequence : ℕ → ℂ
  blaschkeCondition : Prop
  summability : Prop
  classificationEndpoints : Prop

structure ZeroSequenceClassificationEvidence (Z : ZeroSequenceClassificationPackage) where
  blaschkeConditionClosed : Z.blaschkeCondition
  summabilityClosed : Z.summability
  classificationEndpointsClosed : Z.classificationEndpoints

def ZeroSequenceClassificationClosed (Z : ZeroSequenceClassificationPackage) : Prop :=
  Z.blaschkeCondition ∧ Z.summability ∧ Z.classificationEndpoints

theorem zero_sequence_classification_closed_from_evidence
    (Z : ZeroSequenceClassificationPackage) (E : ZeroSequenceClassificationEvidence Z) :
    ZeroSequenceClassificationClosed Z := by
  exact And.intro E.blaschkeConditionClosed
    (And.intro E.summabilityClosed E.classificationEndpointsClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse