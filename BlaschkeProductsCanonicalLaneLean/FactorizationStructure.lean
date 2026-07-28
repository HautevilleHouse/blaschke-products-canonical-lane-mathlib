import BlaschkeProductsCanonicalLaneLean.ZeroSetStructure

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure FactorizationStructure (Z : ZeroSetPackage) where
  blaschkeProduct : Type u
  innerFactor : Type v
  singularInnerFactor : Type w
  factorizationTheorem : Prop
  blaschkeProductExists : Prop
  innerFactorizationExists : Prop
  factorizationTheoremClosed : factorizationTheorem
  blaschkeProductExistsClosed : blaschkeProductExists
  innerFactorizationExistsClosed : innerFactorizationExists

structure FactorizationEvidence (Z : ZeroSetPackage) (F : FactorizationStructure Z) where
  factorizationTheoremClosed : F.factorizationTheorem
  blaschkeProductExistsClosed : F.blaschkeProductExists
  innerFactorizationExistsClosed : F.innerFactorizationExists

def FactorizationClosed (Z : ZeroSetPackage) (F : FactorizationStructure Z) : Prop :=
  F.factorizationTheorem ∧ F.blaschkeProductExists ∧ F.innerFactorizationExists

theorem factorization_closed_from_evidence (Z : ZeroSetPackage) (F : FactorizationStructure Z)
    (E : FactorizationEvidence Z F) : FactorizationClosed Z F := by
  exact And.intro E.factorizationTheoremClosed (And.intro E.blaschkeProductExistsClosed E.innerFactorizationExistsClosed)

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse