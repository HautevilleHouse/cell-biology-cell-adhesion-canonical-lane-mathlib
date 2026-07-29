import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionSignalingPathwayPackage where
  receptorType : Type u
  intracellularSignalingCascade : Prop
  geneExpressionChanges : Prop
  cellPolarityRegulation : Prop

structure AdhesionSignalingPathwayEvidence (S : AdhesionSignalingPathwayPackage) where
  intracellularSignalingCascadeClosed : S.intracellularSignalingCascade
  geneExpressionChangesClosed : S.geneExpressionChanges
  cellPolarityRegulationClosed : S.cellPolarityRegulation

def AdhesionSignalingPathwayClosed (S : AdhesionSignalingPathwayPackage) : Prop :=
  S.intracellularSignalingCascade ∧ S.geneExpressionChanges ∧ S.cellPolarityRegulation

theorem adhesion_signaling_pathway_closed_from_evidence
    (S : AdhesionSignalingPathwayPackage) (E : AdhesionSignalingPathwayEvidence S) :
    AdhesionSignalingPathwayClosed S := by
  exact And.intro E.intracellularSignalingCascadeClosed
    (And.intro E.geneExpressionChangesClosed E.cellPolarityRegulationClosed)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
