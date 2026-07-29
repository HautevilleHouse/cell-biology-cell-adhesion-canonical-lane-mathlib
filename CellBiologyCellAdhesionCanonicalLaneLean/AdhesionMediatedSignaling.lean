import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionSignalingModule where
  mechanosensation : Prop
  outsideInSignaling : Prop
  insideOutSignaling : Prop
  adhesionTurnover : Prop
  cellPolarity : Prop
  forceTransmission : Prop

structure AdhesionSignalingModuleEvidence (M : AdhesionSignalingModule) where
  mechanosensationClosed : M.mechanosensation
  outsideInSignalingClosed : M.outsideInSignaling
  insideOutSignalingClosed : M.insideOutSignaling
  adhesionTurnoverClosed : M.adhesionTurnover
  cellPolarityClosed : M.cellPolarity
  forceTransmissionClosed : M.forceTransmission

def AdhesionSignalingModuleClosed (M : AdhesionSignalingModule) : Prop :=
  M.mechanosensation ∧ M.outsideInSignaling ∧ M.insideOutSignaling ∧
  M.adhesionTurnover ∧ M.cellPolarity ∧ M.forceTransmission

theorem adhesion_signaling_module_closed_from_evidence
    (M : AdhesionSignalingModule) (E : AdhesionSignalingModuleEvidence M) :
    AdhesionSignalingModuleClosed M := by
  exact And.intro E.mechanosensationClosed
    (And.intro E.outsideInSignalingClosed
      (And.intro E.insideOutSignalingClosed
        (And.intro E.adhesionTurnoverClosed
          (And.intro E.cellPolarityClosed E.forceTransmissionClosed))))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse