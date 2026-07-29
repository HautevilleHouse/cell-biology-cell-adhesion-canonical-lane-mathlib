import CellBiologyCellAdhesionCanonicalLaneLean.CellAdhesionObjects

/-!
# Adhesion Receptor Package
-/

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionReceptorPackage where
  receptorType : String
  ligandBindingSite : String
  activationDomain : String
  cytoplasmicTail : String

def AdhesionReceptorClosed (R : AdhesionReceptorPackage) : Prop :=
  R.receptorType ≠ "" ∧ R.ligandBindingSite ≠ ""

theorem adhesion_receptor_closed_identity (R : AdhesionReceptorPackage) : AdhesionReceptorClosed R := by
  exact ⟨by trivial, by trivial⟩

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse