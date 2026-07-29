import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CellCellJunctionFormationPackage where
  junctionType : Type u
  adhesionMoleculesPresent : Prop
  cytoskeletalLinkage : Prop
  junctionAssemblyRegulation : Prop

structure CellCellJunctionFormationEvidence (J : CellCellJunctionFormationPackage) where
  adhesionMoleculesPresentClosed : J.adhesionMoleculesPresent
  cytoskeletalLinkageClosed : J.cytoskeletalLinkage
  junctionAssemblyRegulationClosed : J.junctionAssemblyRegulation

def CellCellJunctionFormationClosed (J : CellCellJunctionFormationPackage) : Prop :=
  J.adhesionMoleculesPresent ∧ J.cytoskeletalLinkage ∧ J.junctionAssemblyRegulation

theorem cell_cell_junction_formation_closed_from_evidence
    (J : CellCellJunctionFormationPackage) (E : CellCellJunctionFormationEvidence J) :
    CellCellJunctionFormationClosed J := by
  exact And.intro E.adhesionMoleculesPresentClosed
    (And.intro E.cytoskeletalLinkageClosed E.junctionAssemblyRegulationClosed)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
