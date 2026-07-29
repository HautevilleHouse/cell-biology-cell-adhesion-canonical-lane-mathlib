import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionSignalingPathway

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure IntegrinActivationKinetics {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} where
  insideOutSignaling : Prop
  affinityModulation : Prop
  clusteringDynamics : Prop
  forceTransmission : Prop
  insideOutSignalingTerm : insideOutSignaling
  affinityModulationTerm : affinityModulation
  clusteringDynamicsTerm : clusteringDynamics
  forceTransmissionTerm : forceTransmission

structure IntegrinActivationKineticsEvidence {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} (I : IntegrinActivationKinetics P) where
  insideOutSignalingClosed : I.insideOutSignaling
  affinityModulationClosed : I.affinityModulation
  clusteringDynamicsClosed : I.clusteringDynamics
  forceTransmissionClosed : I.forceTransmission

def IntegrinActivationKineticsClosed {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} (I : IntegrinActivationKinetics P) : Prop :=
  I.insideOutSignaling ∧ I.affinityModulation ∧ I.clusteringDynamics ∧ I.forceTransmission

theorem integrin_activation_kinetics_closed_from_evidence
    {M : AdhesionMolecule} {J : CellJunction M} {P : AdhesionSignalingPathway J}
    (I : IntegrinActivationKinetics P) (E : IntegrinActivationKineticsEvidence I) :
    IntegrinActivationKineticsClosed I := by
  exact And.intro E.insideOutSignalingClosed
    (And.intro E.affinityModulationClosed
      (And.intro E.clusteringDynamicsClosed E.forceTransmissionClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
