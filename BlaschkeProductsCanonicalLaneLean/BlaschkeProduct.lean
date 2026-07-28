import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure BlaschkeProductPackage where
  zeros : ZeroSequencePackage
  productDefined : Prop
  convergence : Prop
  analyticOnUnitDisk : Prop

structure BlaschkeProductEvidence (B : BlaschkeProductPackage) where
  productDefinedClosed : B.productDefined
  convergenceClosed : B.convergence
  analyticOnUnitDiskClosed : B.analyticOnUnitDisk

def BlaschkeProductClosed (B : BlaschkeProductPackage) : Prop :=
  B.productDefined ∧ B.convergence ∧ B.analyticOnUnitDisk

theorem blaschke_product_closed_from_evidence (B : BlaschkeProductPackage) (E : BlaschkeProductEvidence B) :
    BlaschkeProductClosed B := by
  exact And.intro E.productDefinedClosed (And.intro E.convergenceClosed E.analyticOnUnitDiskClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse