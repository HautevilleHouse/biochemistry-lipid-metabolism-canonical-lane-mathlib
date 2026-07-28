import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure CholesterolMetabolismPackage where
  hmgCoAReductase : Prop
  mevalonatePathway : Prop
  squaleneSynthesis : Prop
  lanosterolCyclization : Prop
  cholesterolSynthesis : Prop
  ldlReceptorUptake : Prop
  bileAcidSynthesis : Prop
  regulationBySrebp : Prop

structure CholesterolMetabolismEvidence (C : CholesterolMetabolismPackage) where
  hmgCoAReductaseClosed : C.hmgCoAReductase
  mevalonatePathwayClosed : C.mevalonatePathway
  squaleneSynthesisClosed : C.squaleneSynthesis
  lanosterolCyclizationClosed : C.lanosterolCyclization
  cholesterolSynthesisClosed : C.cholesterolSynthesis
  ldlReceptorUptakeClosed : C.ldlReceptorUptake
  bileAcidSynthesisClosed : C.bileAcidSynthesis
  regulationBySrebpClosed : C.regulationBySrebp

def CholesterolMetabolismClosed (C : CholesterolMetabolismPackage) : Prop :=
  C.hmgCoAReductase ∧ C.mevalonatePathway ∧
  C.squaleneSynthesis ∧ C.lanosterolCyclization ∧
  C.cholesterolSynthesis ∧ C.ldlReceptorUptake ∧
  C.bileAcidSynthesis ∧ C.regulationBySrebp

theorem cholesterol_metabolism_closed_from_evidence
    (C : CholesterolMetabolismPackage) (E : CholesterolMetabolismEvidence C) :
    CholesterolMetabolismClosed C := by
  exact And.intro E.hmgCoAReductaseClosed
    (And.intro E.mevalonatePathwayClosed
      (And.intro E.squaleneSynthesisClosed
        (And.intro E.lanosterolCyclizationClosed
          (And.intro E.cholesterolSynthesisClosed
            (And.intro E.ldlReceptorUptakeClosed
              (And.intro E.bileAcidSynthesisClosed
                E.regulationBySrebpClosed))))))

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse