import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeProductStructure

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure FactorizationPackage (B : BlaschkeProductData) where
  innerOuterFactorization : Prop
  singularInnerFactor : Prop
  multiplicativeRepresentation : Prop

structure FactorizationEvidence {B : BlaschkeProductData} (F : FactorizationPackage B) where
  innerOuterFactorizationClosed : F.innerOuterFactorization
  singularInnerFactorClosed : F.singularInnerFactor
  multiplicativeRepresentationClosed : F.multiplicativeRepresentation

def FactorizationClosed {B : BlaschkeProductData} (F : FactorizationPackage B) : Prop :=
  F.innerOuterFactorization ∧ F.singularInnerFactor ∧ F.multiplicativeRepresentation

theorem factorization_closed_from_evidence {B : BlaschkeProductData} (F : FactorizationPackage B) (E : FactorizationEvidence F) :
    FactorizationClosed F := by
  exact And.intro E.innerOuterFactorizationClosed
    (And.intro E.singularInnerFactorClosed E.multiplicativeRepresentationClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse
