import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure ZeroSequencePackage where
  sequence : ℕ → ℂ
  inUnitDisk : ∀ n, |sequence n| < 1
  blaschkeCondition : Prop
  sumCondition : Prop

structure ZeroSequenceEvidence (Z : ZeroSequencePackage) where
  inUnitDiskClosed : ∀ n, |Z.sequence n| < 1
  blaschkeConditionClosed : Z.blaschkeCondition
  sumConditionClosed : Z.sumCondition

def ZeroSequenceClosed (Z : ZeroSequencePackage) : Prop :=
  (∀ n, |Z.sequence n| < 1) ∧ Z.blaschkeCondition ∧ Z.sumCondition

theorem zero_sequence_closed_from_evidence (Z : ZeroSequencePackage) (E : ZeroSequenceEvidence Z) :
    ZeroSequenceClosed Z := by
  exact And.intro E.inUnitDiskClosed (And.intro E.blaschkeConditionClosed E.sumConditionClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse