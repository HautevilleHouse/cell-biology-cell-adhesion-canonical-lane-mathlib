import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure SignalingPathway (M : AdhesionMolecule) where
  receptor : Type u
  intracellularSignal : Prop
  downstreamEffect : Prop

def SignalingPathwayClosed {M : AdhesionMolecule} (S : SignalingPathway M) : Prop :=
  S.receptor ∧ S.intracellularSignal ∧ S.downstreamEffect

theorem signaling_pathway_closed_from_evidence {M : AdhesionMolecule}
    (S : SignalingPathway M) (hR : S.receptor) (hI : S.intracellularSignal)
    (hD : S.downstreamEffect) : SignalingPathwayClosed S := by
  exact And.intro hR (And.intro hI hD)

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse
