import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellAdhesionCanonicalLaneLean.AdhesionMolecules

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure TightJunction where
  claudins : Prop
  occludin : Prop
  zonulaOccludens : Prop
  paracellularBarrier : Prop
  claudinsTerm : claudins
  occludinTerm : occludin
  zonulaOccludensTerm : zonulaOccludens
  paracellularBarrierTerm : paracellularBarrier

structure AdherensJunction where
  cadherinCateninComplex : Prop
  actinCytoskeletonLink : Prop
  cellCellAdhesion : Prop
  cadherinCateninComplexTerm : cadherinCateninComplex
  actinCytoskeletonLinkTerm : actinCytoskeletonLink
  cellCellAdhesionTerm : cellCellAdhesion

structure BarrierFunctionPackage {M : AdhesionMoleculesPackage} where
  tightJunction : TightJunction
  adherensJunction : AdherensJunction
  barrierIntegrity : Prop
  permeability : Prop

structure BarrierFunctionEvidence {M : AdhesionMoleculesPackage}
    (B : BarrierFunctionPackage M) where
  barrierIntegrityClosed : B.barrierIntegrity
  permeabilityClosed : B.permeability

def BarrierFunctionClosed {M : AdhesionMoleculesPackage}
    (B : BarrierFunctionPackage M) : Prop :=
  B.barrierIntegrity ∧ B.permeability

theorem barrier_function_closed_from_evidence
    {M : AdhesionMoleculesPackage} (B : BarrierFunctionPackage M)
    (E : BarrierFunctionEvidence B) : BarrierFunctionClosed B := by
  exact And.intro E.barrierIntegrityClosed E.permeabilityClosed

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse