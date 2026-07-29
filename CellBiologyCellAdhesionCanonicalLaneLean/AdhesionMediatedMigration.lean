import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.IntegrinActivationKinetics

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionMediatedMigration {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} {I : IntegrinActivationKinetics P} where
  frontRearPolarity : Prop
  focalAdhesionTurnover : Prop
  tractionForceGeneration : Prop
  directionalPersistence : Prop
  frontRearPolarityTerm : frontRearPolarity
  focalAdhesionTurnoverTerm : focalAdhesionTurnover
  tractionForceGenerationTerm : tractionForceGeneration
  directionalPersistenceTerm : directionalPersistence

structure AdhesionMediatedMigrationEvidence {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} {I : IntegrinActivationKinetics P}
    (A : AdhesionMediatedMigration I) where
  frontRearPolarityClosed : A.frontRearPolarity
  focalAdhesionTurnoverClosed : A.focalAdhesionTurnover
  tractionForceGenerationClosed : A.tractionForceGeneration
  directionalPersistenceClosed : A.directionalPersistence

def AdhesionMediatedMigrationClosed {M : AdhesionMolecule} {J : CellJunction M}
    {P : AdhesionSignalingPathway J} {I : IntegrinActivationKinetics P}
    (A : AdhesionMediatedMigration I) : Prop :=
  A.frontRearPolarity ∧ A.focalAdhesionTurnover ∧ A.tractionForceGeneration ∧ A.directionalPersistence

theorem adhesion_mediated_migration_closed_from_evidence
    {M : AdhesionMolecule} {J : CellJunction M} {P : AdhesionSignalingPathway J}
    {I : IntegrinActivationKinetics P} (A : AdhesionMediatedMigration I)
    (E : AdhesionMediatedMigrationEvidence A) : AdhesionMediatedMigrationClosed A := by
  exact And.intro E.frontRearPolarityClosed
    (And.intro E.focalAdhesionTurnoverClosed
      (And.intro E.tractionForceGenerationClosed E.directionalPersistenceClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
