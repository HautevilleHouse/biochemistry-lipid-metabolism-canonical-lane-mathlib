import BiochemistryLipidMetabolismCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure ThermodynamicsPackage where
  freeEnergyChange : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  equilibriumConstant : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  freeEnergyChangeClosed : T.freeEnergyChange
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  equilibriumConstantClosed : T.equilibriumConstant

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.freeEnergyChange ∧ T.enthalpyChange ∧ T.entropyChange ∧ T.equilibriumConstant

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.freeEnergyChangeClosed
    (And.intro E.enthalpyChangeClosed
      (And.intro E.entropyChangeClosed E.equilibriumConstantClosed))

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse