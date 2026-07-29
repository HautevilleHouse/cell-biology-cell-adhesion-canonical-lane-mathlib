import canonicalLaneMathlib.AdmissibleClass

/-!
# Cell Adhesion Signaling Package
-/

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CellAdhesionSignalingPackage where
  integrinSignaling : Prop
  cadherinSignaling : Prop
  focalAdhesionKinase : Prop
  downstreamPathways : Prop

def CellAdhesionSignalingClosed (S : CellAdhesionSignalingPackage) : Prop :=
  S.integrinSignaling ∧ S.cadherinSignaling ∧ S.focalAdhesionKinase ∧ S.downstreamPathways

structure CellAdhesionSignalingEvidence (S : CellAdhesionSignalingPackage) where
  integrinSignalingClosed : S.integrinSignaling
  cadherinSignalingClosed : S.cadherinSignaling
  focalAdhesionKinaseClosed : S.focalAdhesionKinase
  downstreamPathwaysClosed : S.downstreamPathways

theorem cell_adhesion_signaling_closed_from_evidence (S : CellAdhesionSignalingPackage) (E : CellAdhesionSignalingEvidence S) :
    CellAdhesionSignalingClosed S := by
  exact And.intro E.integrinSignalingClosed (And.intro E.cadherinSignalingClosed (And.intro E.focalAdhesionKinaseClosed E.downstreamPathwaysClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse