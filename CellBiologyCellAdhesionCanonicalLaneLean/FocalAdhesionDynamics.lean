import canonicalLaneMathlib.FocalAdhesionDynamics

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure FocalAdhesionPackage where
  integrinClustering : Prop
  adaptorProteins : Prop
  actomyosinContractility : Prop
  adhesionTurnover : Prop
  mechanosensing : Prop

structure FocalAdhesionEvidence (F : FocalAdhesionPackage) where
  integrinClusteringClosed : F.integrinClustering
  adaptorProteinsClosed : F.adaptorProteins
  actomyosinContractilityClosed : F.actomyosinContractility
  adhesionTurnoverClosed : F.adhesionTurnover
  mechanosensingClosed : F.mechanosensing

def FocalAdhesionClosed (F : FocalAdhesionPackage) : Prop :=
  F.integrinClustering ∧ F.adaptorProteins ∧ F.actomyosinContractility ∧
  F.adhesionTurnover ∧ F.mechanosensing

theorem focal_adhesion_closed_from_evidence
    (F : FocalAdhesionPackage) (E : FocalAdhesionEvidence F) :
    FocalAdhesionClosed F := by
  exact And.intro E.integrinClusteringClosed
    (And.intro E.adaptorProteinsClosed
      (And.intro E.actomyosinContractilityClosed
        (And.intro E.adhesionTurnoverClosed E.mechanosensingClosed)))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
