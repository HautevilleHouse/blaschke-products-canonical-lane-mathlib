import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeProductStructure

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure BlaschkeAdmittedObject where
  blaschkeProduct : BlaschkeProduct
  closedFactorization : Prop
  closedBoundaryBehavior : Prop
  conclusion : closedFactorization ∧ closedBoundaryBehavior

structure BlaschkeAdmissibleClass where
  object : BlaschkeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def blaschkeWitnessClosed (O : BlaschkeAdmittedObject) : Prop :=
  O.closedFactorization ∧ O.closedBoundaryBehavior

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse