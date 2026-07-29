import CellBiologyCellAdhesionCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse