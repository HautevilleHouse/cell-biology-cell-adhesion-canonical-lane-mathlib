import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionReceptorBindingPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : Prop
  bindingSpecificity : Prop
  downstreamSignalingActivated : Prop

structure AdhesionReceptorBindingEvidence (P : AdhesionReceptorBindingPackage) where
  bindingAffinityClosed : P.bindingAffinity
  bindingSpecificityClosed : P.bindingSpecificity
  downstreamSignalingActivatedClosed : P.downstreamSignalingActivated

def AdhesionReceptorBindingClosed (P : AdhesionReceptorBindingPackage) : Prop :=
  P.bindingAffinity ∧ P.bindingSpecificity ∧ P.downstreamSignalingActivated

theorem adhesion_receptor_binding_closed_from_evidence
    (P : AdhesionReceptorBindingPackage) (E : AdhesionReceptorBindingEvidence P) :
    AdhesionReceptorBindingClosed P := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.bindingSpecificityClosed E.downstreamSignalingActivatedClosed)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
