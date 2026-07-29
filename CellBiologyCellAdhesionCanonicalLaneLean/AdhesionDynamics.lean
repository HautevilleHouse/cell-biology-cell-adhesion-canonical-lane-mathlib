import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionDynamics (M : AdhesionMolecule) (J : CellJunction M) where
  formationRate : Prop
  disassemblyRate : Prop
  turnoverBalanced : Prop

def AdhesionDynamicsClosed {M : AdhesionMolecule} {J : CellJunction M}
    (D : AdhesionDynamics M J) : Prop :=
  D.formationRate ∧ D.disassemblyRate ∧ D.turnoverBalanced

theorem adhesion_dynamics_closed_from_evidence
    {M : AdhesionMolecule} {J : CellJunction M}
    (D : AdhesionDynamics M J) (hF : D.formationRate) (hD : D.disassemblyRate)
    (hT : D.turnoverBalanced) : AdhesionDynamicsClosed D := by
  exact And.intro hF (And.intro hD hT)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
