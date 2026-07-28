import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeProductStructure

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure BoundaryBehaviorPackage where
  radialLimitExists : Prop
  nontangentialLimitExists : Prop
  boundaryValuesAreUnimodular : Prop
  innerFunctionBoundary : Prop

structure BoundaryBehaviorEvidence (B : BoundaryBehaviorPackage) where
  radialLimitExistsClosed : B.radialLimitExists
  nontangentialLimitExistsClosed : B.nontangentialLimitExists
  boundaryValuesAreUnimodularClosed : B.boundaryValuesAreUnimodular
  innerFunctionBoundaryClosed : B.innerFunctionBoundary

def BoundaryBehaviorClosed (B : BoundaryBehaviorPackage) : Prop :=
  B.radialLimitExists ∧ B.nontangentialLimitExists ∧
  B.boundaryValuesAreUnimodular ∧ B.innerFunctionBoundary

theorem boundary_behavior_closed_from_evidence (B : BoundaryBehaviorPackage) (E : BoundaryBehaviorEvidence B) :
    BoundaryBehaviorClosed B := by
  exact And.intro E.radialLimitExistsClosed
    (And.intro E.nontangentialLimitExistsClosed
      (And.intro E.boundaryValuesAreUnimodularClosed E.innerFunctionBoundaryClosed))

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse