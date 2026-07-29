import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure CadherinCateninPackage (E : ExtracellularMatrixPackage) where
  cadherinType : Type u
  cateninBinding : Prop
  adherensJunctionStability : Prop
  forceTransmission : Prop

structure CadherinCateninEvidence {E : ExtracellularMatrixPackage} (C : CadherinCateninPackage E) where
  cateninBindingClosed : C.cateninBinding
  adherensJunctionStabilityClosed : C.adherensJunctionStability
  forceTransmissionClosed : C.forceTransmission

def CadherinCateninClosed {E : ExtracellularMatrixPackage} (C : CadherinCateninPackage E) : Prop :=
  C.cateninBinding ∧ C.adherensJunctionStability ∧ C.forceTransmission

theorem cadherin_catenin_closed_from_evidence {E : ExtracellularMatrixPackage} (C : CadherinCateninPackage E) (Ev : CadherinCateninEvidence C) :
    CadherinCateninClosed C := by
  exact And.intro Ev.cateninBindingClosed (And.intro Ev.adherensJunctionStabilityClosed Ev.forceTransmissionClosed)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
