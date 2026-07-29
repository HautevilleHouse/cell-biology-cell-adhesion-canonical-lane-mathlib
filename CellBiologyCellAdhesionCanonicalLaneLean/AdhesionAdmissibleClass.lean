import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionAdmittedObject where
  cellType : Type
  adhesionMolecules : List String
  bindingAffinity : Prop
  downstreamSignaling : Prop
  conclusion : bindingAffinity ∧ downstreamSignaling

structure AdmissibleClass where
  object : AdhesionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion.1 ∧ A.object.conclusion.2) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
