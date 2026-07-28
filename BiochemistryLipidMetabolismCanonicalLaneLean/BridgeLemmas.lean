import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LipidWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse