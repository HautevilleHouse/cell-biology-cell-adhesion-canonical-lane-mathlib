import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionMoleculeFamilyPackage where
  cadherinFamily : Type
  integrinFamily : Type
  selectinFamily : Type
  cadherinHomophilicBinding : Prop
  integrinHeterophilicBinding : Prop
  selectinCarbohydrateBinding : Prop

structure AdhesionMoleculeFamilyEvidence (F : AdhesionMoleculeFamilyPackage) where
  cadherinHomophilicBindingClosed : F.cadherinHomophilicBinding
  integrinHeterophilicBindingClosed : F.integrinHeterophilicBinding
  selectinCarbohydrateBindingClosed : F.selectinCarbohydrateBinding

def AdhesionMoleculeFamilyClosed (F : AdhesionMoleculeFamilyPackage) : Prop :=
  F.cadherinHomophilicBinding ∧ F.integrinHeterophilicBinding ∧ F.selectinCarbohydrateBinding

theorem adhesion_molecule_family_closed_from_evidence (F : AdhesionMoleculeFamilyPackage) (E : AdhesionMoleculeFamilyEvidence F) :
    AdhesionMoleculeFamilyClosed F :=
  And.intro E.cadherinHomophilicBindingClosed (And.intro E.integrinHeterophilicBindingClosed E.selectinCarbohydrateBindingClosed)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse