import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.LipidMetabolismAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

def LipidMetabolismBridgeClosed (O : LipidMetabolismAdmittedObject) : Prop :=
  O.endpointCondition

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LipidMetabolismBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse