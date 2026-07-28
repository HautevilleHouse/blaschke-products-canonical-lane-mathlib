import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeProductStructure

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure FactorizationPackage where
  blaschkeFactor : ℂ → ℂ
  innerFunctionFactor : ℂ → ℂ
  outerFunctionFactor : ℂ → ℂ
  factorizationClass : Prop
  canBeWrittenAsProduct : BlaschkeProduct → Prop

structure FactorizationEvidence (F : FactorizationPackage) where
  factorizationClassClosed : F.factorizationClass
  canBeWrittenAsProductClosed : ∀ B : BlaschkeProduct, F.canBeWrittenAsProduct B

def FactorizationClosed (F : FactorizationPackage) : Prop :=
  F.factorizationClass ∧ ∀ B : BlaschkeProduct, F.canBeWrittenAsProduct B

theorem factorization_closed_from_evidence (F : FactorizationPackage) (E : FactorizationEvidence F) :
    FactorizationClosed F := by
  exact And.intro E.factorizationClassClosed E.canBeWrittenAsProductClosed

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse