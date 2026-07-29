import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellAdhesionCanonicalLaneLean

structure Collagen where
  typeI : Prop
  typeIV : Prop
  networkFormation : Prop
  integrinBinding : Prop
  typeITerm : typeI
  typeIVTerm : typeIV
  networkFormationTerm : networkFormation
  integrinBindingTerm : integrinBinding

structure Fibronectin where
  rgdSequence : Prop
  integrinBinding : Prop
  fibrillogenesis : Prop
  rgdSequenceTerm : rgdSequence
  integrinBindingTerm : integrinBinding
  fibrillogenesisTerm : fibrillogenesis

structure ExtracellularMatrixPackage where
  collagen : Collagen
  fibronectin : Fibronectin
  laminin : Prop
  proteoglycans : Prop
  basementMembrane : Prop

end CellBiologyCellAdhesionCanonicalLaneLean
end HautevilleHouse