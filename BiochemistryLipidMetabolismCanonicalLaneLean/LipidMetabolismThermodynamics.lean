import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.LipidMetabolismReactionKinetics

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : ℝ
  enthalpy : ℝ
  entropy : ℝ
  temperature : ℝ
  spontaneityCondition : gibbsFreeEnergy < 0

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy = T.enthalpy - T.temperature * T.entropy ∧ T.spontaneityCondition

theorem thermodynamics_closed_from_definition (T : ThermodynamicsPackage) :
    ThermodynamicsClosed T := by
  exact ⟨by ring, T.spontaneityCondition⟩

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse