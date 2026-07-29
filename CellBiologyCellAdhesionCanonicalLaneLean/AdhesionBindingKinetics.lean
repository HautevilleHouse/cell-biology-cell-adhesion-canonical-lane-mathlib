import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionMoleculeFamily

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure BindingKineticsPackage {F : AdhesionMoleculeFamilyPackage} where
  onRate : ℝ
  offRate : ℝ
  affinity : ℝ
  onRatePositive : onRate > 0
  offRatePositive : offRate > 0
  affinityPositive : affinity > 0
  equilibriumConstantDefined : affinity = onRate / offRate

structure BindingKineticsEvidence {F : AdhesionMoleculeFamilyPackage} (K : BindingKineticsPackage F) where
  onRatePositiveClosed : K.onRatePositive
  offRatePositiveClosed : K.offRatePositive
  affinityPositiveClosed : K.affinityPositive
  equilibriumConstantDefinedClosed : K.equilibriumConstantDefined

def BindingKineticsClosed {F : AdhesionMoleculeFamilyPackage} (K : BindingKineticsPackage F) : Prop :=
  K.onRatePositive ∧ K.offRatePositive ∧ K.affinityPositive ∧ K.equilibriumConstantDefined

theorem binding_kinetics_closed_from_evidence {F : AdhesionMoleculeFamilyPackage} (K : BindingKineticsPackage F) (E : BindingKineticsEvidence K) :
    BindingKineticsClosed K :=
  And.intro E.onRatePositiveClosed (And.intro E.offRatePositiveClosed (And.intro E.affinityPositiveClosed E.equilibriumConstantDefinedClosed))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse