import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CellAdhesionAdmittedObject where
  adhesionMolecule : Type
  bindingAffinity : Prop
  signalingCascade : Prop
  cytoskeletalLinkage : Prop
  conclusion : bindingAffinity ∧ signalingCascade ∧ cytoskeletalLinkage

structure AdmissibleClass where
  object : CellAdhesionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.bindingAffinity ∧ A.object.signalingCascade ∧ A.object.cytoskeletalLinkage) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse