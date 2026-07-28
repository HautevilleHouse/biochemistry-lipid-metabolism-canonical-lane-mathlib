import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure LipidBiosynthesisPackage where
  acetylCoACarboxylase : Prop
  fattyAcidSynthase : Prop
  elongationDesaturation : Prop
  triglycerideSynthesis : Prop
  phospholipidSynthesis : Prop
  regulationByHormones : Prop

structure LipidBiosynthesisEvidence (L : LipidBiosynthesisPackage) where
  acetylCoACarboxylaseClosed : L.acetylCoACarboxylase
  fattyAcidSynthaseClosed : L.fattyAcidSynthase
  elongationDesaturationClosed : L.elongationDesaturation
  triglycerideSynthesisClosed : L.triglycerideSynthesis
  phospholipidSynthesisClosed : L.phospholipidSynthesis
  regulationByHormonesClosed : L.regulationByHormones

def LipidBiosynthesisClosed (L : LipidBiosynthesisPackage) : Prop :=
  L.acetylCoACarboxylase ∧ L.fattyAcidSynthase ∧ L.elongationDesaturation ∧
  L.triglycerideSynthesis ∧ L.phospholipidSynthesis ∧ L.regulationByHormones

theorem lipid_biosynthesis_closed_from_evidence (L : LipidBiosynthesisPackage)
    (E : LipidBiosynthesisEvidence L) : LipidBiosynthesisClosed L := by
  exact And.intro E.acetylCoACarboxylaseClosed
    (And.intro E.fattyAcidSynthaseClosed
      (And.intro E.elongationDesaturationClosed
        (And.intro E.triglycerideSynthesisClosed
          (And.intro E.phospholipidSynthesisClosed E.regulationByHormonesClosed))))

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse