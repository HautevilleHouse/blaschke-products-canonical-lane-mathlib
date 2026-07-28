import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

def bridgeClosed (A : BlaschkeAdmissibleClass) : Prop :=
  blaschkeWitnessClosed A.object

theorem bridge_from_admissible_class (A : BlaschkeAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse