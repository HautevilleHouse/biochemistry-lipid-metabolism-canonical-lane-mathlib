import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.ThermodynamicsEquilibrium

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure MolecularOrbitalPackage {M : LipidMolecule} {K : ReactionKineticsPackage M} {T : ThermodynamicsPackage K} where
  hamiltonianMatrix : Type
  orbitalEnergies : List Float
  homoEnergy : Float
  lumoEnergy : Float
  gapPositive : Prop
  gapPositiveClosed : gapPositive

structure MolecularOrbitalEvidence {M : LipidMolecule} {K : ReactionKineticsPackage M} {T : ThermodynamicsPackage K} (O : MolecularOrbitalPackage T) where
  homoLumoGapPositive : O.gapPositive
  orbitalEnergiesNonempty : O.orbitalEnergies ≠ []

def MolecularOrbitalClosed {M : LipidMolecule} {K : ReactionKineticsPackage M} {T : ThermodynamicsPackage K} (O : MolecularOrbitalPackage T) : Prop :=
  O.gapPositive

theorem molecular_orbital_closed_from_evidence
    {M : LipidMolecule} {K : ReactionKineticsPackage M} {T : ThermodynamicsPackage K} (O : MolecularOrbitalPackage T) (E : MolecularOrbitalEvidence O) :
    MolecularOrbitalClosed O := by
  exact O.gapPositiveClosed

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse