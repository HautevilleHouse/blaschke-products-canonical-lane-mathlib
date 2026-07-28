import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

def ConstrainedBlaschkeClosure (A : BlaschkeAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_blaschke_endgame (A : BlaschkeAdmissibleClass) :
    ConstrainedBlaschkeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse