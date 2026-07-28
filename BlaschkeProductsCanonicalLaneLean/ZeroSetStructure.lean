import BlaschkeProductsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure ZeroSetPackage where
  disk : Type u
  zeros : List disk
  blaschkeCondition : Prop
  convergence : Prop
  blaschkeConditionClosed : blaschkeCondition
  convergenceClosed : convergence

structure ZeroSetEvidence (Z : ZeroSetPackage) where
  blaschkeConditionClosed : Z.blaschkeCondition
  convergenceClosed : Z.convergence

def ZeroSetClosed (Z : ZeroSetPackage) : Prop :=
  Z.blaschkeCondition ∧ Z.convergence

theorem zero_set_closed_from_evidence (Z : ZeroSetPackage) (E : ZeroSetEvidence Z) :
    ZeroSetClosed Z := by
  exact And.intro E.blaschkeConditionClosed E.convergenceClosed

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse