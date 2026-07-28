import HautevilleHouse.CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LipidMolecule where
  name : String
  formula : String
  classification : String
  physiologicalConcentration : Float

default instance : Inhabited LipidMolecule := ⟨{
  name := "", formula := "", classification := "", physiologicalConcentration := 0.0}⟩

structure LipidAdmittedObject where
  molecule : LipidMolecule
  reactionRateValid : Prop
  thermodynamicsConsistent : Prop
  orbitalModelComplete : Prop
  catalysis : Prop
  conclusion : reactionRateValid ∧ thermodynamicsConsistent ∧ orbitalModelComplete ∧ catalysis

structure LipidEndgameState where
  object : LipidAdmittedObject

def LipidWitnessClosed (O : LipidAdmittedObject) : Prop :=
  O.conclusion

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse