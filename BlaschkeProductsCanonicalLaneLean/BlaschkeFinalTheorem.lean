import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeBridgeLemmas

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

def ConstrainedBlaschkeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem blaschke_admissible_endgame (A : AdmissibleClass) :
    ConstrainedBlaschkeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse
