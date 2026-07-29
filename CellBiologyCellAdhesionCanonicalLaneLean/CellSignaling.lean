import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CellSignalingPackage (A : AdhesionMoleculePackage) where
  pathwayActivation : Prop
  downstreamEffectors : Prop
  feedbackLoops : Prop
  signalDuration : Prop

structure CellSignalingEvidence {A : AdhesionMoleculePackage} (S : CellSignalingPackage A) where
  pathwayActivationClosed : S.pathwayActivation
  downstreamEffectorsClosed : S.downstreamEffectors
  feedbackLoopsClosed : S.feedbackLoops
  signalDurationClosed : S.signalDuration

def CellSignalingClosed {A : AdhesionMoleculePackage} (S : CellSignalingPackage A) : Prop :=
  S.pathwayActivation ∧ S.downstreamEffectors ∧ S.feedbackLoops ∧ S.signalDuration

theorem cell_signaling_closed_from_evidence {A : AdhesionMoleculePackage} (S : CellSignalingPackage A) (E : CellSignalingEvidence S) :
    CellSignalingClosed S := by
  exact And.intro E.pathwayActivationClosed (And.intro E.downstreamEffectorsClosed (And.intro E.feedbackLoopsClosed E.signalDurationClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
