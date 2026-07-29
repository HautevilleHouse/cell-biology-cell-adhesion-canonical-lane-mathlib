import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionMoleculeFamily where
  cadherins : Type u
  integrins : Type v
  selectins : Type w
  igSfMembers : Type x
  heterophilicBinding : Prop
  homophilicBinding : Prop
  calciumDependent : Prop

structure AdhesionMoleculeEvidence (F : AdhesionMoleculeFamily) where
  cadherinsDefined : Nonempty F.cadherins
  integrinsDefined : Nonempty F.integrins
  selectinsDefined : Nonempty F.selectins
  igSfMembersDefined : Nonempty F.igSfMembers
  heterophilicBindingClosed : F.heterophilicBinding
  homophilicBindingClosed : F.homophilicBinding
  calciumDependentClosed : F.calciumDependent

def AdhesionMoleculeClosed (F : AdhesionMoleculeFamily) : Prop :=
  Nonempty F.cadherins ∧ Nonempty F.integrins ∧ Nonempty F.selectins ∧ Nonempty F.igSfMembers ∧
  F.heterophilicBinding ∧ F.homophilicBinding ∧ F.calciumDependent

theorem adhesion_molecule_closed_from_evidence (F : AdhesionMoleculeFamily) (E : AdhesionMoleculeEvidence F) :
    AdhesionMoleculeClosed F := by
  exact And.intro E.cadherinsDefined
    (And.intro E.integrinsDefined
      (And.intro E.selectinsDefined
        (And.intro E.igSfMembersDefined
          (And.intro E.heterophilicBindingClosed
            (And.intro E.homophilicBindingClosed E.calciumDependentClosed)))))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse