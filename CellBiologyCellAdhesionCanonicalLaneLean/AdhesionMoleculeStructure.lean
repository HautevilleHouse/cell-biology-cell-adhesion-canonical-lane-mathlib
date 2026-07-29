import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionMolecule where
  extracellularDomain : Prop
  transmembraneDomain : Prop
  intracellularDomain : Prop
  ligandBindingAffinity : Prop
  homotypicBinding : Prop
  heterotypicBinding : Prop
  extracellularDomainTerm : extracellularDomain
  transmembraneDomainTerm : transmembraneDomain
  intracellularDomainTerm : intracellularDomain
  ligandBindingAffinityTerm : ligandBindingAffinity
  homotypicBindingTerm : homotypicBinding
  heterotypicBindingTerm : heterotypicBinding

structure AdhesionMoleculeEvidence (M : AdhesionMolecule) where
  extracellularDomainClosed : M.extracellularDomain
  transmembraneDomainClosed : M.transmembraneDomain
  intracellularDomainClosed : M.intracellularDomain
  ligandBindingAffinityClosed : M.ligandBindingAffinity
  homotypicBindingClosed : M.homotypicBinding
  heterotypicBindingClosed : M.heterotypicBinding

def AdhesionMoleculeClosed (M : AdhesionMolecule) : Prop :=
  M.extracellularDomain ∧ M.transmembraneDomain ∧ M.intracellularDomain ∧
  M.ligandBindingAffinity ∧ M.homotypicBinding ∧ M.heterotypicBinding

theorem adhesion_molecule_closed_from_evidence (M : AdhesionMolecule) (E : AdhesionMoleculeEvidence M) :
    AdhesionMoleculeClosed M := by
  exact And.intro E.extracellularDomainClosed
    (And.intro E.transmembraneDomainClosed
      (And.intro E.intracellularDomainClosed
        (And.intro E.ligandBindingAffinityClosed
          (And.intro E.homotypicBindingClosed E.heterotypicBindingClosed))))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
