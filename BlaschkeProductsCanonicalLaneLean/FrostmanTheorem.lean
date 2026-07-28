import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeProductStructure

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure FrostmanPackage (B : BlaschkeProductData) where
  radialLimitExists : Prop
  boundaryZeroSetMeasureZero : Prop
  innerFunctionFactorization : Prop

structure FrostmanEvidence {B : BlaschkeProductData} (F : FrostmanPackage B) where
  radialLimitExistsClosed : F.radialLimitExists
  boundaryZeroSetMeasureZeroClosed : F.boundaryZeroSetMeasureZero
  innerFunctionFactorizationClosed : F.innerFunctionFactorization

def FrostmanClosed {B : BlaschkeProductData} (F : FrostmanPackage B) : Prop :=
  F.radialLimitExists ∧ F.boundaryZeroSetMeasureZero ∧ F.innerFunctionFactorization

theorem frostman_closed_from_evidence {B : BlaschkeProductData} (F : FrostmanPackage B) (E : FrostmanEvidence F) :
    FrostmanClosed F := by
  exact And.intro E.radialLimitExistsClosed
    (And.intro E.boundaryZeroSetMeasureZeroClosed E.innerFunctionFactorizationClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse
