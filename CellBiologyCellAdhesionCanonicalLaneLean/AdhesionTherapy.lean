import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionMolecules
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionSignaling
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.CellMigration
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.ExtracellularMatrix
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.BarrierFunction

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure DrugTarget where
  integrinAntagonist : Prop
  cadherinModulator : Prop
  fakInhibitor : Prop
  integrinAntagonistTerm : integrinAntagonist
  cadherinModulatorTerm : cadherinModulator
  fakInhibitorTerm : fakInhibitor

structure MetastasisModel where
  invasion : Prop
  intravasation : Prop
  extravasation : Prop
  invasionTerm : invasion
  intravasationTerm : intravasation
  extravasationTerm : extravasation

structure AdhesionTherapyPackage
    {Ma : AdhesionMoleculesPackage}
    {Sg : AdhesionSignalingPackage Ma}
    {Cm : CellMigrationPackage Ma Sg}
    {Ec : ExtracellularMatrixPackage}
    {Bf : BarrierFunctionPackage Ma} where
  drugTarget : DrugTarget
  metastasisModel : MetastasisModel
  therapeuticEfficacy : Prop
  clinicalTranslation : Prop

structure AdhesionTherapyEvidence
    {Ma : AdhesionMoleculesPackage}
    {Sg : AdhesionSignalingPackage Ma}
    {Cm : CellMigrationPackage Ma Sg}
    {Ec : ExtracellularMatrixPackage}
    {Bf : BarrierFunctionPackage Ma}
    (A : AdhesionTherapyPackage Ma Sg Cm Ec Bf) where
  therapeuticEfficacyClosed : A.therapeuticEfficacy
  clinicalTranslationClosed : A.clinicalTranslation

def AdhesionTherapyClosed
    {Ma : AdhesionMoleculesPackage}
    {Sg : AdhesionSignalingPackage Ma}
    {Cm : CellMigrationPackage Ma Sg}
    {Ec : ExtracellularMatrixPackage}
    {Bf : BarrierFunctionPackage Ma}
    (A : AdhesionTherapyPackage Ma Sg Cm Ec Bf) : Prop :=
  A.therapeuticEfficacy ∧ A.clinicalTranslation

theorem adhesion_therapy_closed_from_evidence
    {Ma : AdhesionMoleculesPackage}
    {Sg : AdhesionSignalingPackage Ma}
    {Cm : CellMigrationPackage Ma Sg}
    {Ec : ExtracellularMatrixPackage}
    {Bf : BarrierFunctionPackage Ma}
    (A : AdhesionTherapyPackage Ma Sg Cm Ec Bf)
    (E : AdhesionTherapyEvidence A) :
    AdhesionTherapyClosed A := by
  exact And.intro E.therapeuticEfficacyClosed E.clinicalTranslationClosed

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse