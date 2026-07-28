import BlaschkeProductsCanonicalLaneLean.CanonicalFactorization

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure BoundaryFunctionRegularityPackage {Z : ZeroSequenceClassificationPackage}
    {F : CanonicalFactorizationPackage Z} where
  radialLimitExistsAlmostEverywhere : Prop
  nontangentialBoundaryValues : Prop
  boundaryFunctionInWeakL1 : Prop
  hardySpaceMembership : Prop

structure BoundaryFunctionRegularityEvidence {Z : ZeroSequenceClassificationPackage}
    {F : CanonicalFactorizationPackage Z} (B : BoundaryFunctionRegularityPackage F) where
  radialLimitExistsAlmostEverywhereClosed : B.radialLimitExistsAlmostEverywhere
  nontangentialBoundaryValuesClosed : B.nontangentialBoundaryValues
  boundaryFunctionInWeakL1Closed : B.boundaryFunctionInWeakL1
  hardySpaceMembershipClosed : B.hardySpaceMembership

def BoundaryFunctionRegularityClosed {Z : ZeroSequenceClassificationPackage}
    {F : CanonicalFactorizationPackage Z} (B : BoundaryFunctionRegularityPackage F) : Prop :=
  B.radialLimitExistsAlmostEverywhere ∧ B.nontangentialBoundaryValues ∧
  B.boundaryFunctionInWeakL1 ∧ B.hardySpaceMembership

theorem boundary_function_regularity_closed_from_evidence
    {Z : ZeroSequenceClassificationPackage} {F : CanonicalFactorizationPackage Z}
    (B : BoundaryFunctionRegularityPackage F) (E : BoundaryFunctionRegularityEvidence B) :
    BoundaryFunctionRegularityClosed B := by
  exact And.intro E.radialLimitExistsAlmostEverywhereClosed
    (And.intro E.nontangentialBoundaryValuesClosed
      (And.intro E.boundaryFunctionInWeakL1Closed E.hardySpaceMembershipClosed))

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse