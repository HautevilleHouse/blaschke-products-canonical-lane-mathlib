import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BlaschkeProductStructure
import HautevilleHouse.BlaschkeProductsCanonicalLaneLean.BoundaryBehavior

namespace HautevilleHouse
namespace BlaschkeProductsCanonicalLaneLean

structure HardySpaceEmbeddingPackage where
  hardySpaceHp : Prop
  blaschkeProductIsInner : Prop
  embeddingIsIsometric : Prop
  completenessPreserved : Prop

structure HardySpaceEmbeddingEvidence (H : HardySpaceEmbeddingPackage) where
  hardySpaceHpClosed : H.hardySpaceHp
  blaschkeProductIsInnerClosed : H.blaschkeProductIsInner
  embeddingIsIsometricClosed : H.embeddingIsIsometric
  completenessPreservedClosed : H.completenessPreserved

def HardySpaceEmbeddingClosed (H : HardySpaceEmbeddingPackage) : Prop :=
  H.hardySpaceHp ∧ H.blaschkeProductIsInner ∧
  H.embeddingIsIsometric ∧ H.completenessPreserved

theorem hardy_space_embedding_closed_from_evidence (H : HardySpaceEmbeddingPackage) (E : HardySpaceEmbeddingEvidence H) :
    HardySpaceEmbeddingClosed H := by
  exact And.intro E.hardySpaceHpClosed
    (And.intro E.blaschkeProductIsInnerClosed
      (And.intro E.embeddingIsIsometricClosed E.completenessPreservedClosed))

end BlaschkeProductsCanonicalLaneLean
end HautevilleHouse