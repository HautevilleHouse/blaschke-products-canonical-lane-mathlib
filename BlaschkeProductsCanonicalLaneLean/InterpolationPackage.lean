import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeProductStructure

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure InterpolationPackage (B : BlaschkeProductData) where
  pickInterpolation : Prop
  caratheodoryFejer : Prop
  boundaryInterpolation : Prop

structure InterpolationEvidence {B : BlaschkeProductData} (I : InterpolationPackage B) where
  pickInterpolationClosed : I.pickInterpolation
  caratheodoryFejerClosed : I.caratheodoryFejer
  boundaryInterpolationClosed : I.boundaryInterpolation

def InterpolationClosed {B : BlaschkeProductData} (I : InterpolationPackage B) : Prop :=
  I.pickInterpolation ∧ I.caratheodoryFejer ∧ I.boundaryInterpolation

theorem interpolation_closed_from_evidence {B : BlaschkeProductData} (I : InterpolationPackage B) (E : InterpolationEvidence I) :
    InterpolationClosed I := by
  exact And.intro E.pickInterpolationClosed
    (And.intro E.caratheodoryFejerClosed E.boundaryInterpolationClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse
