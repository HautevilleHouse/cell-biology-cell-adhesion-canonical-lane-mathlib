import canonicalLaneMathlib.CellMatrixInteractions

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure ExtracellularMatrix where
  collagen : Type u
  fibronectin : Type v
  laminin : Type w
  proteoglycans : Prop
  integrinBindingSites : Prop

structure CellMatrixAdhesionPackage (M : ExtracellularMatrix) where
  integrinLigandBinding : Prop
  focalAdhesionFormation : Prop
  matrixRemodeling : Prop
  signalingFeedback : Prop
  adhesionEvidence : M.integrinBindingSites

structure CellMatrixAdhesionEvidence {M : ExtracellularMatrix} (A : CellMatrixAdhesionPackage M) where
  integrinLigandBindingClosed : A.integrinLigandBinding
  focalAdhesionFormationClosed : A.focalAdhesionFormation
  matrixRemodelingClosed : A.matrixRemodeling
  signalingFeedbackClosed : A.signalingFeedback

def CellMatrixAdhesionClosed {M : ExtracellularMatrix} (A : CellMatrixAdhesionPackage M) : Prop :=
  A.integrinLigandBinding ∧ A.focalAdhesionFormation ∧ A.matrixRemodeling ∧ A.signalingFeedback

theorem cell_matrix_adhesion_closed_from_evidence
    {M : ExtracellularMatrix} (A : CellMatrixAdhesionPackage M) (E : CellMatrixAdhesionEvidence A) :
    CellMatrixAdhesionClosed A := by
  exact And.intro E.integrinLigandBindingClosed
    (And.intro E.focalAdhesionFormationClosed
      (And.intro E.matrixRemodelingClosed E.signalingFeedbackClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
