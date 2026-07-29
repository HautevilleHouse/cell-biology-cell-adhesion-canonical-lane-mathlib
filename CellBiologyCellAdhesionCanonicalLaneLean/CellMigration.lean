import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionMolecules
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionSignaling

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure Lamellipodium where
  actinPolymerization : Prop
  protrusionForce : Prop
  membraneExtension : Prop
  actinPolymerizationTerm : actinPolymerization
  protrusionForceTerm : protrusionForce
  membraneExtensionTerm : membraneExtension

structure FocalAdhesionTurnover where
  assembly : Prop
  disassembly : Prop
  tractionForce : Prop
  assemblyTerm : assembly
  disassemblyTerm : disassembly
  tractionForceTerm : tractionForce

structure CellMigrationPackage {M : AdhesionMoleculesPackage} {S : AdhesionSignalingPackage M} where
  lamellipodium : Lamellipodium
  focalAdhesionTurnover : FocalAdhesionTurnover
  migrationRate : Prop
  chemotaxis : Prop

structure CellMigrationEvidence {M : AdhesionMoleculesPackage} {S : AdhesionSignalingPackage M}
    (C : CellMigrationPackage M S) where
  migrationRateClosed : C.migrationRate
  chemotaxisClosed : C.chemotaxis

def CellMigrationClosed {M : AdhesionMoleculesPackage} {S : AdhesionSignalingPackage M}
    (C : CellMigrationPackage M S) : Prop :=
  C.migrationRate ∧ C.chemotaxis

theorem cell_migration_closed_from_evidence
    {M : AdhesionMoleculesPackage} {S : AdhesionSignalingPackage M}
    (C : CellMigrationPackage M S) (E : CellMigrationEvidence C) :
    CellMigrationClosed C := by
  exact And.intro E.migrationRateClosed E.chemotaxisClosed

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse