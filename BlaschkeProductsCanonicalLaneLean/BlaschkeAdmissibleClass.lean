import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure BlaschkeAdmittedObject where
  unitDisc : Type u
  topology : TopologicalSpace unitDisc
  blaschkeProduct : unitDisc → ℂ
  zeroSet : Set unitDisc
  zeroSetDiscrete : Prop
  convergenceCondition : Prop
  conclusion : convergenceCondition

structure AdmissibleClass where
  object : BlaschkeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BlaschkeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse
