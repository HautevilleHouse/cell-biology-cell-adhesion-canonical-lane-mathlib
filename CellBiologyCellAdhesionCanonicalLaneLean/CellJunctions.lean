import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CellJunctionPackage where
  tightJunctions : Prop
  adherensJunctions : Prop
  desmosomes : Prop
  gapJunctions : Prop
  hemidesmosomes : Prop
  transmembraneLinkers : Prop
  cytoskeletalAttachment : Prop
  barrierFunction : Prop

structure CellJunctionEvidence (J : CellJunctionPackage) where
  tightJunctionsClosed : J.tightJunctions
  adherensJunctionsClosed : J.adherensJunctions
  desmosomesClosed : J.desmosomes
  gapJunctionsClosed : J.gapJunctions
  hemidesmosomesClosed : J.hemidesmosomes
  transmembraneLinkersClosed : J.transmembraneLinkers
  cytoskeletalAttachmentClosed : J.cytoskeletalAttachment
  barrierFunctionClosed : J.barrierFunction

def CellJunctionClosed (J : CellJunctionPackage) : Prop :=
  J.tightJunctions ∧ J.adherensJunctions ∧ J.desmosomes ∧ J.gapJunctions ∧
  J.hemidesmosomes ∧ J.transmembraneLinkers ∧ J.cytoskeletalAttachment ∧ J.barrierFunction

theorem cell_junction_closed_from_evidence (J : CellJunctionPackage) (E : CellJunctionEvidence J) :
    CellJunctionClosed J := by
  exact And.intro E.tightJunctionsClosed
    (And.intro E.adherensJunctionsClosed
      (And.intro E.desmosomesClosed
        (And.intro E.gapJunctionsClosed
          (And.intro E.hemidesmosomesClosed
            (And.intro E.transmembraneLinkersClosed
              (And.intro E.cytoskeletalAttachmentClosed E.barrierFunctionClosed))))))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse