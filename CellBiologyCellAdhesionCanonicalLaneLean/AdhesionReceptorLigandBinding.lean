import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  receptor : String
  ligand : String
  bindingKinetics : Prop
  affinityConstant : Float
  bindingClosed : Prop

structure ReceptorLigandBindingEvidence (P : ReceptorLigandBindingPackage) where
  bindingKineticsClosed : P.bindingKinetics
  affinityConstantClosed : P.affinityConstant > 0.0

def ReceptorLigandBindingClosed (P : ReceptorLigandBindingPackage) : Prop :=
  P.bindingKinetics ∧ P.affinityConstant > 0.0

theorem receptor_ligand_binding_closed_from_evidence
    (P : ReceptorLigandBindingPackage) (E : ReceptorLigandBindingEvidence P) :
    ReceptorLigandBindingClosed P := by
  exact And.intro E.bindingKineticsClosed E.affinityConstantClosed

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
