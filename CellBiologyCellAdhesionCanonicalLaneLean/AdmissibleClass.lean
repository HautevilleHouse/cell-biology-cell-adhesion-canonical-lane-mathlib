import CellBiologyCellAdhesionCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdmissibleClass where
  object : CellAdhesionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellAdhesionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse