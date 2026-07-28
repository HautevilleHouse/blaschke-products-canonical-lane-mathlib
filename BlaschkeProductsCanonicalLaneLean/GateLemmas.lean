import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

def gateClosed (A : BlaschkeAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BlaschkeAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse