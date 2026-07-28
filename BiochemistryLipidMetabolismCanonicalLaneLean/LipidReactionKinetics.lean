import BiochemistryLipidMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  orderDetermined : Prop
  activationEnergy : Prop
  enzymeCatalysis : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateLawClosed : K.rateLaw
  orderDeterminedClosed : K.orderDetermined
  activationEnergyClosed : K.activationEnergy
  enzymeCatalysisClosed : K.enzymeCatalysis

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateLaw ∧ K.orderDetermined ∧ K.activationEnergy ∧ K.enzymeCatalysis

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.rateLawClosed
    (And.intro E.orderDeterminedClosed
      (And.intro E.activationEnergyClosed E.enzymeCatalysisClosed))

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse