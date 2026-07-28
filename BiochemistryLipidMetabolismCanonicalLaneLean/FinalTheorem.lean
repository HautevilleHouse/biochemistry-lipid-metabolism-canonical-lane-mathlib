import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

def ConstrainedLipidMetabolismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lipid_metabolism_endgame (A : AdmissibleClass) :
    ConstrainedLipidMetabolismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse