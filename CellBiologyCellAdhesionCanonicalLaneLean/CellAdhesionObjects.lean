import CellBiologyCellAdhesionCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdhesionMolecule where
  name : String
  bindingAffinity : Float
  cellType : String

structure CellAdhesionSpace where
  carrier : Type
  membrane : Carrier → Prop
  adhesionMolecules : List AdhesionMolecule

structure CellAdhesionAdmittedObject where
  space : CellAdhesionSpace
  adhesionComplexFormed : Prop
  signalingCascade : Prop
  conclusion : adhesionComplexFormed ∧ signalingCascade

def CellAdhesionWitnessClosed (O : CellAdhesionAdmittedObject) : Prop :=
  O.adhesionComplexFormed ∧ O.signalingCascade

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse