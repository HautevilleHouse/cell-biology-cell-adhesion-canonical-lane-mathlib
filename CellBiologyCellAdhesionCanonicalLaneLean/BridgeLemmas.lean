import CellBiologyCellAdhesionCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellAdhesionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse