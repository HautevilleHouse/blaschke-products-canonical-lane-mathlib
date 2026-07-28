import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure BlaschkeZeroSequence where
  points : List ℂ
  insideUnitDisc : ∀ z ∈ points, ‖z‖ < 1
  blaschkeCondition : ∑' z ∈ points, (1 - ‖z‖) < ∞

structure BlaschkeProduct where
  zeros : BlaschkeZeroSequence
  productFormula : ℂ → ℂ
  analyticOnUnitDisc : Prop
  zerosExactly : Prop
  convergenceOnUnitDisc : Prop

structure BlaschkeProductEvidence (B : BlaschkeProduct) where
  analyticOnUnitDiscClosed : B.analyticOnUnitDisc
  zerosExactlyClosed : B.zerosExactly
  convergenceOnUnitDiscClosed : B.convergenceOnUnitDisc

def BlaschkeProductClosed (B : BlaschkeProduct) : Prop :=
  B.analyticOnUnitDisc ∧ B.zerosExactly ∧ B.convergenceOnUnitDisc

theorem blaschke_product_closed_from_evidence (B : BlaschkeProduct) (E : BlaschkeProductEvidence B) :
    BlaschkeProductClosed B := by
  exact And.intro E.analyticOnUnitDiscClosed
    (And.intro E.zerosExactlyClosed E.convergenceOnUnitDiscClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse