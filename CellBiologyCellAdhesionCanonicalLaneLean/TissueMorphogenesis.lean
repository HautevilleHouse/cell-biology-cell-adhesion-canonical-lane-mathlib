import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionSignalingPathway

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure TissueMorphogenesis {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} where
  cellRearrangement : Prop
  sheetFormation : Prop
  lumenFormation : Prop
  boundaryFormation : Prop
  cellRearrangementTerm : cellRearrangement
  sheetFormationTerm : sheetFormation
  lumenFormationTerm : lumenFormation
  boundaryFormationTerm : boundaryFormation

structure TissueMorphogenesisEvidence {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} (T : TissueMorphogenesis P) where
  cellRearrangementClosed : T.cellRearrangement
  sheetFormationClosed : T.sheetFormation
  lumenFormationClosed : T.lumenFormation
  boundaryFormationClosed : T.boundaryFormation

def TissueMorphogenesisClosed {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} (T : TissueMorphogenesis P) : Prop :=
  T.cellRearrangement ∧ T.sheetFormation ∧ T.lumenFormation ∧ T.boundaryFormation

theorem tissue_morphogenesis_closed_from_evidence
    {M : AdhesionMolecule} {J : CellJunction M} {P : AdhesionSignalingPathway J}
    (T : TissueMorphogenesis P) (E : TissueMorphogenesisEvidence T) :
    TissueMorphogenesisClosed T := by
  exact And.intro E.cellRearrangementClosed
    (And.intro E.sheetFormationClosed
      (And.intro E.lumenFormationClosed E.boundaryFormationClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
