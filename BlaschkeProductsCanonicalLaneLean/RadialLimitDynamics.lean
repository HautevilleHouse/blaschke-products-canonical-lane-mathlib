import BlaschkeProductsCanonicalLaneLean.BoundaryFunctionRegularity

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure RadialLimitDynamicsPackage {Z : ZeroSequenceClassificationPackage}
    {F : CanonicalFactorizationPackage Z} {B : BoundaryFunctionRegularityPackage F} where
  angularDerivativeExists : Prop
  innerFunctionDecomposition : Prop
  clusterSetStructure : Prop
  boundaryInterpolation : Prop

structure RadialLimitDynamicsEvidence {Z : ZeroSequenceClassificationPackage}
    {F : CanonicalFactorizationPackage Z} {B : BoundaryFunctionRegularityPackage F}
    (D : RadialLimitDynamicsPackage B) where
  angularDerivativeExistsClosed : D.angularDerivativeExists
  innerFunctionDecompositionClosed : D.innerFunctionDecomposition
  clusterSetStructureClosed : D.clusterSetStructure
  boundaryInterpolationClosed : D.boundaryInterpolation

def RadialLimitDynamicsClosed {Z : ZeroSequenceClassificationPackage}
    {F : CanonicalFactorizationPackage Z} {B : BoundaryFunctionRegularityPackage F}
    (D : RadialLimitDynamicsPackage B) : Prop :=
  D.angularDerivativeExists ∧ D.innerFunctionDecomposition ∧
  D.clusterSetStructure ∧ D.boundaryInterpolation

theorem radial_limit_dynamics_closed_from_evidence
    {Z : ZeroSequenceClassificationPackage} {F : CanonicalFactorizationPackage Z}
    {B : BoundaryFunctionRegularityPackage F} (D : RadialLimitDynamicsPackage B)
    (E : RadialLimitDynamicsEvidence D) : RadialLimitDynamicsClosed D := by
  exact And.intro E.angularDerivativeExistsClosed
    (And.intro E.innerFunctionDecompositionClosed
      (And.intro E.clusterSetStructureClosed E.boundaryInterpolationClosed))

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse