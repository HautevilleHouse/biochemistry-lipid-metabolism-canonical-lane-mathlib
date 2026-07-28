import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.LipidMetabolismThermodynamics

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure LipidMetabolismModel where
  reactions : List ReactionThermodynamics
  steadyStateConcentrations : Prop
  homeostasisCondition : Prop
  modelValid : Prop

structure ModelEvidence (M : LipidMetabolismModel) where
  steadyStateConcentrationsClosed : M.steadyStateConcentrations
  homeostasisConditionClosed : M.homeostasisCondition
  modelValidClosed : M.modelValid

def ModelClosed (M : LipidMetabolismModel) : Prop :=
  M.steadyStateConcentrations ∧ M.homeostasisCondition ∧ M.modelValid

theorem model_closed_from_evidence (M : LipidMetabolismModel) (E : ModelEvidence M) :
    ModelClosed M := by
  exact And.intro E.steadyStateConcentrationsClosed (And.intro E.homeostasisConditionClosed E.modelValidClosed)

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse