import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure FactorizationPackage where
  innerFactor : BlaschkeProductPackage
  outerFactor : HardySpacePackage
  factorizationTheorem : Prop
  uniqueness : Prop

structure FactorizationEvidence (F : FactorizationPackage) where
  factorizationTheoremClosed : F.factorizationTheorem
  uniquenessClosed : F.uniqueness

def FactorizationClosed (F : FactorizationPackage) : Prop :=
  F.factorizationTheorem ∧ F.uniqueness

theorem factorization_closed_from_evidence (F : FactorizationPackage) (E : FactorizationEvidence F) :
    FactorizationClosed F := by
  exact And.intro E.factorizationTheoremClosed E.uniquenessClosed

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse