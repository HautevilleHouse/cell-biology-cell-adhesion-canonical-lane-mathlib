import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionBindingKinetics

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CellJunctionAssemblyPackage {F : AdhesionMoleculeFamilyPackage} {K : BindingKineticsPackage F} where
  tightJunctionAssembly : Prop
  adherensJunctionAssembly : Prop
  desmosomeAssembly : Prop
  junctionMaturation : Prop

structure CellJunctionAssemblyEvidence {F : AdhesionMoleculeFamilyPackage} {K : BindingKineticsPackage F} (J : CellJunctionAssemblyPackage F K) where
  tightJunctionAssemblyClosed : J.tightJunctionAssembly
  adherensJunctionAssemblyClosed : J.adherensJunctionAssembly
  desmosomeAssemblyClosed : J.desmosomeAssembly
  junctionMaturationClosed : J.junctionMaturation

def CellJunctionAssemblyClosed {F : AdhesionMoleculeFamilyPackage} {K : BindingKineticsPackage F} (J : CellJunctionAssemblyPackage F K) : Prop :=
  J.tightJunctionAssembly ∧ J.adherensJunctionAssembly ∧ J.desmosomeAssembly ∧ J.junctionMaturation

theorem cell_junction_assembly_closed_from_evidence {F : AdhesionMoleculeFamilyPackage} {K : BindingKineticsPackage F} (J : CellJunctionAssemblyPackage F K) (E : CellJunctionAssemblyEvidence J) :
    CellJunctionAssemblyClosed J :=
  And.intro E.tightJunctionAssemblyClosed (And.intro E.adherensJunctionAssemblyClosed (And.intro E.desmosomeAssemblyClosed E.junctionMaturationClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse