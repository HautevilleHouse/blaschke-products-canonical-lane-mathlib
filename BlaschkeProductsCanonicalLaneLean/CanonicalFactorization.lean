import BlaschkeProductsCanonicalLaneLean.ZeroSequenceClassification

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure CanonicalFactorizationPackage {Z : ZeroSequenceClassificationPackage} where
  elementaryFactorProduct : Prop
  convergenceCondition : Prop
  uniformConvergenceOnCompactSubsets : Prop
  factorizationUniqueness : Prop

structure CanonicalFactorizationEvidence {Z : ZeroSequenceClassificationPackage} (C : CanonicalFactorizationPackage Z) where
  elementaryFactorProductClosed : C.elementaryFactorProduct
  convergenceConditionClosed : C.convergenceCondition
  uniformConvergenceOnCompactSubsetsClosed : C.uniformConvergenceOnCompactSubsets
  factorizationUniquenessClosed : C.factorizationUniqueness

def CanonicalFactorizationClosed {Z : ZeroSequenceClassificationPackage} (C : CanonicalFactorizationPackage Z) : Prop :=
  C.elementaryFactorProduct ∧ C.convergenceCondition ∧ C.uniformConvergenceOnCompactSubsets ∧ C.factorizationUniqueness

theorem canonical_factorization_closed_from_evidence
    {Z : ZeroSequenceClassificationPackage} (C : CanonicalFactorizationPackage Z)
    (E : CanonicalFactorizationEvidence C) : CanonicalFactorizationClosed C := by
  exact And.intro E.elementaryFactorProductClosed
    (And.intro E.convergenceConditionClosed
      (And.intro E.uniformConvergenceOnCompactSubsetsClosed E.factorizationUniquenessClosed))

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse