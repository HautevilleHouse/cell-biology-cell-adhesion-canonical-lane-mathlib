import canonicalLaneMathlib.AdmissibleClass

/-!
# Cell-Cell Adhesion Dynamics Package
-/

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CellCellAdhesionDynamicsPackage where
  bindingKinetics : Prop
  forceTransmission : Prop
  clusteringBehaviour : Prop
  turnoverRates : Prop

def CellCellAdhesionDynamicsClosed (D : CellCellAdhesionDynamicsPackage) : Prop :=
  D.bindingKinetics ∧ D.forceTransmission ∧ D.clusteringBehaviour ∧ D.turnoverRates

structure CellCellAdhesionDynamicsEvidence (D : CellCellAdhesionDynamicsPackage) where
  bindingKineticsClosed : D.bindingKinetics
  forceTransmissionClosed : D.forceTransmission
  clusteringBehaviourClosed : D.clusteringBehaviour
  turnoverRatesClosed : D.turnoverRates

theorem cell_cell_adhesion_dynamics_closed_from_evidence (D : CellCellAdhesionDynamicsPackage) (E : CellCellAdhesionDynamicsEvidence D) :
    CellCellAdhesionDynamicsClosed D := by
  exact And.intro E.bindingKineticsClosed (And.intro E.forceTransmissionClosed (And.intro E.clusteringBehaviourClosed E.turnoverRatesClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse