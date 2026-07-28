import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeAdmissibleClass

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

def BlaschkeWitnessClosed (O : BlaschkeAdmittedObject) : Prop :=
  O.conclusion

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BlaschkeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse
