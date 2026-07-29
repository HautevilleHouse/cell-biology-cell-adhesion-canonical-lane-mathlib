import canonicalLaneMathlib.CellAdhesionMolecules

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CadherinFamily where
  cadherinType : Type u
  extracellularDomain : Prop
  intracellularDomain : Prop
  calciumDependent : Prop
  homophilicBinding : Prop
  cateninBinding : Prop

structure CadherinBindingPackage (C : CadherinFamily) where
  transBindingAffinity : Prop
  cisDimerization : Prop
  adhesionStrength : Prop
  bindingEvidence : C.homophilicBinding ∧ C.cateninBinding

structure CadherinEvidence {C : CadherinFamily} (P : CadherinBindingPackage C) where
  transBindingAffinityClosed : P.transBindingAffinity
  cisDimerizationClosed : P.cisDimerization
  adhesionStrengthClosed : P.adhesionStrength

def CadherinBindingClosed {C : CadherinFamily} (P : CadherinBindingPackage C) : Prop :=
  P.transBindingAffinity ∧ P.cisDimerization ∧ P.adhesionStrength

theorem cadherin_binding_closed_from_evidence
    {C : CadherinFamily} (P : CadherinBindingPackage C) (E : CadherinEvidence P) :
    CadherinBindingClosed P := by
  exact And.intro E.transBindingAffinityClosed
    (And.intro E.cisDimerizationClosed E.adhesionStrengthClosed)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
