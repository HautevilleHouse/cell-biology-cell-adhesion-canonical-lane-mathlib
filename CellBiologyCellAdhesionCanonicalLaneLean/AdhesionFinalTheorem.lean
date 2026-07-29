import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

def ConstrainedAdhesionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_adhesion_endgame (A : AdmissibleClass) :
    ConstrainedAdhesionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
