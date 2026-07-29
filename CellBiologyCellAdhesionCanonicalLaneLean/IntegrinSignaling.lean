import canonicalLaneMathlib.IntegrinSignaling

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure IntegrinFamily where
  alphaSubunit : Type u
  betaSubunit : Type v
  extracellularLigand : Prop
  insideOutActivation : Prop
  focalAdhesionKinase : Prop
  talinBinding : Prop

structure IntegrinSignalingPackage (I : IntegrinFamily) where
  ligandBindingInduced : Prop
  talinRecruitment : Prop
  fakActivation : Prop
  downstreamSignaling : Prop
  signalingEvidence : I.focalAdhesionKinase ∧ I.talinBinding

structure IntegrinSignalingEvidence {I : IntegrinFamily} (S : IntegrinSignalingPackage I) where
  ligandBindingInducedClosed : S.ligandBindingInduced
  talinRecruitmentClosed : S.talinRecruitment
  fakActivationClosed : S.fakActivation
  downstreamSignalingClosed : S.downstreamSignaling

def IntegrinSignalingClosed {I : IntegrinFamily} (S : IntegrinSignalingPackage I) : Prop :=
  S.ligandBindingInduced ∧ S.talinRecruitment ∧ S.fakActivation ∧ S.downstreamSignaling

theorem integrin_signaling_closed_from_evidence
    {I : IntegrinFamily} (S : IntegrinSignalingPackage I) (E : IntegrinSignalingEvidence S) :
    IntegrinSignalingClosed S := by
  exact And.intro E.ligandBindingInducedClosed
    (And.intro E.talinRecruitmentClosed
      (And.intro E.fakActivationClosed E.downstreamSignalingClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
