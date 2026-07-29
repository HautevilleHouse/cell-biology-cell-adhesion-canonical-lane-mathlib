import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure AdhesionSignalingPathwayPackage where
  focalAdhesionKinase : Type u
  srcFamilyKinases : Type v
  rhoGtpases : Type w
  pi3kAktMtor : Type x
  mapkErk : Type y
  downstreamTranscription : Prop
  cellSurvivalSignals : Prop
  migrationSignals : Prop

structure AdhesionSignalingPathwayEvidence (P : AdhesionSignalingPathwayPackage) where
  focalAdhesionKinaseClosed : Nonempty P.focalAdhesionKinase
  srcFamilyKinasesClosed : Nonempty P.srcFamilyKinases
  rhoGtpasesClosed : Nonempty P.rhoGtpases
  pi3kAktMtorClosed : Nonempty P.pi3kAktMtor
  mapkErkClosed : Nonempty P.mapkErk
  downstreamTranscriptionClosed : P.downstreamTranscription
  cellSurvivalSignalsClosed : P.cellSurvivalSignals
  migrationSignalsClosed : P.migrationSignals

def AdhesionSignalingPathwayClosed (P : AdhesionSignalingPathwayPackage) : Prop :=
  Nonempty P.focalAdhesionKinase ∧ Nonempty P.srcFamilyKinases ∧ Nonempty P.rhoGtpases ∧
  Nonempty P.pi3kAktMtor ∧ Nonempty P.mapkErk ∧ P.downstreamTranscription ∧ P.cellSurvivalSignals ∧
  P.migrationSignals

theorem adhesion_signaling_pathway_closed_from_evidence
    (P : AdhesionSignalingPathwayPackage) (E : AdhesionSignalingPathwayEvidence P) :
    AdhesionSignalingPathwayClosed P := by
  exact And.intro E.focalAdhesionKinaseClosed
    (And.intro E.srcFamilyKinasesClosed
      (And.intro E.rhoGtpasesClosed
        (And.intro E.pi3kAktMtorClosed
          (And.intro E.mapkErkClosed
            (And.intro E.downstreamTranscriptionClosed
              (And.intro E.cellSurvivalSignalsClosed E.migrationSignalsClosed))))))

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse