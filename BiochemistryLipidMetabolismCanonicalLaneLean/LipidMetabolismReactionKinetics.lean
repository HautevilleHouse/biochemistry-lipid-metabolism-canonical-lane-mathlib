import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.LipidMetabolismAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure ReactionKineticsPackage where
  forwardRateConstant : ℝ
  backwardRateConstant : ℝ
  rateLaw : ℝ → ℝ → ℝ  -- time, concentration -> rate
  equilibriumCondition : forwardRateConstant * backwardRateConstant = 1
  initialCondition : ℝ

def RateLawClosed (R : ReactionKineticsPackage) : Prop :=
  R.forwardRateConstant > 0 ∧ R.backwardRateConstant > 0 ∧ R.equilibriumCondition

theorem rate_law_closed_from_definition (R : ReactionKineticsPackage) :
    RateLawClosed R := by
  refine ⟨by positivity, by positivity, R.equilibriumCondition⟩

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse