import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure LipogenesisPackage where
  acetylCoACarboxylase : Prop
  malonylCoA : Prop
  fattyAcidSynthase : Prop
  palmitateProduction : Prop
  elongationDesaturation : Prop
  regulationByInsulin : Prop
  citrateShuttle : Prop

structure LipogenesisEvidence (L : LipogenesisPackage) where
  acetylCoACarboxylaseClosed : L.acetylCoACarboxylase
  malonylCoAClosed : L.malonylCoA
  fattyAcidSynthaseClosed : L.fattyAcidSynthase
  palmitateProductionClosed : L.palmitateProduction
  elongationDesaturationClosed : L.elongationDesaturation
  regulationByInsulinClosed : L.regulationByInsulin
  citrateShuttleClosed : L.citrateShuttle

def LipogenesisClosed (L : LipogenesisPackage) : Prop :=
  L.acetylCoACarboxylase ∧ L.malonylCoA ∧
  L.fattyAcidSynthase ∧ L.palmitateProduction ∧
  L.elongationDesaturation ∧ L.regulationByInsulin ∧
  L.citrateShuttle

theorem lipogenesis_closed_from_evidence
    (L : LipogenesisPackage) (E : LipogenesisEvidence L) :
    LipogenesisClosed L := by
  exact And.intro E.acetylCoACarboxylaseClosed
    (And.intro E.malonylCoAClosed
      (And.intro E.fattyAcidSynthaseClosed
        (And.intro E.palmitateProductionClosed
          (And.intro E.elongationDesaturationClosed
            (And.intro E.regulationByInsulinClosed
              E.citrateShuttleClosed)))))

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse