import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure ECMInteractionPackage where
  collagenTypes : Type u
  fibronectin : Type v
  laminins : Type w
  proteoglycans : Type x
  integrinBinding : Prop
  matrixRemodeling : Prop
  mechanicalSignaling : Prop

structure ECMInteractionEvidence (E : ECMInteractionPackage) where
  collagenTypesDefined : Nonempty E.collagenTypes
  fibronectinDefined : Nonempty E.fibronectin
  lamininsDefined : Nonempty E.laminins
  proteoglycansDefined : Nonempty E.proteoglycans
  integrinBindingClosed : E.integrinBinding
  matrixRemodelingClosed : E.matrixRemodeling
  mechanicalSignalingClosed : E.mechanicalSignaling

def ECMInteractionClosed (E : ECMInteractionPackage) : Prop :=
  Nonempty E.collagenTypes ∧ Nonempty E.fibronectin ∧ Nonempty E.laminins ∧
  Nonempty E.proteoglycans ∧ E.integrinBinding ∧ E.matrixRemodeling ∧ E.mechanicalSignaling

theorem ecm_interaction_closed_from_evidence (ECM : ECMInteractionPackage) (Ev : ECMInteractionEvidence ECM) :
    ECMInteractionClosed ECM := by
  exact And.intro Ev.collagenTypesDefined
    (And.intro Ev.fibronectinDefined
      (And.intro Ev.lamininsDefined
        (And.intro Ev.proteoglycansDefined
          (And.intro Ev.integrinBindingClosed
            (And.intro Ev.matrixRemodelingClosed Ev.mechanicalSignalingClosed)))))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse