import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionMolecules

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure FocalAdhesionKinase where
  activation : Prop
  phosphorylation : Prop
  downstreamSignaling : Prop
  activationTerm : activation
  phosphorylationTerm : phosphorylation
  downstreamSignalingTerm : downstreamSignaling

structure RhoGTPase where
  rhoA : Prop
  rac1 : Prop
  cdc42 : Prop
  cytoskeletalDynamics : Prop
  rhoATerm : rhoA
  rac1Term : rac1
  cdc42Term : cdc42
  cytoskeletalDynamicsTerm : cytoskeletalDynamics

structure AdhesionSignalingPackage {M : AdhesionMoleculesPackage} where
  focalAdhesionKinase : FocalAdhesionKinase
  rhoGTPase : RhoGTPase
  integrinSignaling : Prop
  cadherinSignaling : Prop

structure AdhesionSignalingEvidence {M : AdhesionMoleculesPackage} (S : AdhesionSignalingPackage M) where
  integrinSignalingClosed : S.integrinSignaling
  cadherinSignalingClosed : S.cadherinSignaling

def AdhesionSignalingClosed {M : AdhesionMoleculesPackage} (S : AdhesionSignalingPackage M) : Prop :=
  S.integrinSignaling ∧ S.cadherinSignaling

theorem adhesion_signaling_closed_from_evidence
    {M : AdhesionMoleculesPackage} (S : AdhesionSignalingPackage M)
    (E : AdhesionSignalingEvidence S) : AdhesionSignalingClosed S := by
  exact And.intro E.integrinSignalingClosed E.cadherinSignalingClosed

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse