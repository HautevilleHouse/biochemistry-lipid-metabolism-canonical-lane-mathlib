import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure LipidMetabolismAdmittedObject where
  lipidSpecies : Type
  concentration : lipidSpecies → ℝ
  reactionNetwork : List (lipidSpecies × lipidSpecies)
  equilibriumConstant : ℝ
  endpointCondition : Prop
  conclusion : endpointCondition

structure AdmissibleClass where
  object : LipidMetabolismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LipidMetabolismBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse