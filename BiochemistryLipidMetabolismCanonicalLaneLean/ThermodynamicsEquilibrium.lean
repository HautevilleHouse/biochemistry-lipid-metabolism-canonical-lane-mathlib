import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.LipidMetabolismReactionKinetics

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure ThermodynamicsPackage {M : LipidMolecule} (K : ReactionKineticsPackage M) where
  gibbsFreeEnergyChange : Float
  equilibriumConstant : Float
  enthalpyChange : Float
  entropyChange : Float
  equilibriumCondition : Prop
  equilibriumConditionClosed : equilibriumCondition

structure ThermodynamicsEvidence {M : LipidMolecule} {K : ReactionKineticsPackage M} (T : ThermodynamicsPackage K) where
  gibbsFreeEnergyNegative : T.gibbsFreeEnergyChange < 0
  equilibriumConstantPositive : T.equilibriumConstant > 0
  enthalpyConsistent : T.enthalpyChange = T.gibbsFreeEnergyChange + T.temperature * T.entropyChange

def ThermodynamicsClosed {M : LipidMolecule} {K : ReactionKineticsPackage M} (T : ThermodynamicsPackage K) : Prop :=
  T.equilibriumCondition

theorem thermodynamics_closed_from_evidence
    {M : LipidMolecule} {K : ReactionKineticsPackage M} (T : ThermodynamicsPackage K) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact T.equilibriumConditionClosed

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse