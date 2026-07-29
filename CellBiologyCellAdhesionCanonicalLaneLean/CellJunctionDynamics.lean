import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionMoleculeStructure

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CellJunction {M : AdhesionMolecule} where
  junctionType : Prop
  cadherinClustering : Prop
  actinLinkage : Prop
  signalingRecruitment : Prop
  junctionTypeTerm : junctionType
  cadherinClusteringTerm : cadherinClustering
  actinLinkageTerm : actinLinkage
  signalingRecruitmentTerm : signalingRecruitment

structure CellJunctionEvidence {M : AdhesionMolecule} (J : CellJunction M) where
  junctionTypeClosed : J.junctionType
  cadherinClusteringClosed : J.cadherinClustering
  actinLinkageClosed : J.actinLinkage
  signalingRecruitmentClosed : J.signalingRecruitment

def CellJunctionClosed {M : AdhesionMolecule} (J : CellJunction M) : Prop :=
  J.junctionType ∧ J.cadherinClustering ∧ J.actinLinkage ∧ J.signalingRecruitment

theorem cell_junction_closed_from_evidence {M : AdhesionMolecule} (J : CellJunction M)
    (E : CellJunctionEvidence J) : CellJunctionClosed J := by
  exact And.intro E.junctionTypeClosed
    (And.intro E.cadherinClusteringClosed
      (And.intro E.actinLinkageClosed E.signalingRecruitmentClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
