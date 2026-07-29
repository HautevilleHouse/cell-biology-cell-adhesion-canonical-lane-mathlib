import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellAdhesionCanonicalLaneLean.AdhesionReceptorBinding
import CellBiologyCellAdhesionCanonicalLaneLean.CellCellJunctionFormation
import CellBiologyCellAdhesionCanonicalLaneLean.AdhesionSignalingPathway

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

def ConstrainedCellAdhesionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_adhesion_endgame (A : AdmissibleClass) :
    ConstrainedCellAdhesionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
