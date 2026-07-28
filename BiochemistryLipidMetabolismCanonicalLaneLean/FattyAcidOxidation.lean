import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure FattyAcidOxidationPackage where
  betaOxidationCycle : Prop
  acylCoADehydrogenase : Prop
  enoylCoAHydratase : Prop
  hydroxyacylCoADehydrogenase : Prop
  thiolase : Prop
  transportIntoMitochondria : Prop

structure FattyAcidOxidationEvidence (F : FattyAcidOxidationPackage) where
  betaOxidationCycleClosed : F.betaOxidationCycle
  acylCoADehydrogenaseClosed : F.acylCoADehydrogenase
  enoylCoAHydrataseClosed : F.enoylCoAHydratase
  hydroxyacylCoADehydrogenaseClosed : F.hydroxyacylCoADehydrogenase
  thiolaseClosed : F.thiolase
  transportIntoMitochondriaClosed : F.transportIntoMitochondria

def FattyAcidOxidationClosed (F : FattyAcidOxidationPackage) : Prop :=
  F.betaOxidationCycle ∧ F.acylCoADehydrogenase ∧ F.enoylCoAHydratase ∧
  F.hydroxyacylCoADehydrogenase ∧ F.thiolase ∧ F.transportIntoMitochondria

theorem fatty_acid_oxidation_closed_from_evidence (F : FattyAcidOxidationPackage)
    (E : FattyAcidOxidationEvidence F) : FattyAcidOxidationClosed F := by
  exact And.intro E.betaOxidationCycleClosed
    (And.intro E.acylCoADehydrogenaseClosed
      (And.intro E.enoylCoAHydrataseClosed
        (And.intro E.hydroxyacylCoADehydrogenaseClosed
          (And.intro E.thiolaseClosed E.transportIntoMitochondriaClosed))))

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse