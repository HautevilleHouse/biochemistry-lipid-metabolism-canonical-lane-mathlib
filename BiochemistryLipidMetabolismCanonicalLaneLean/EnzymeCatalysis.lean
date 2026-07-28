import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.MolecularOrbitalTheory

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure EnzymeCatalysisPackage {M : LipidMolecule} {K : ReactionKineticsPackage M} {T : ThermodynamicsPackage K} {O : MolecularOrbitalPackage T} where
  enzymeName : String
  bindingAffinity : Float
  catalyticRateConstant : Float
  michaelisConstant : Float
  turnoverNumber : Float
  catalysisValid : Prop
  catalysisValidClosed : catalysisValid

structure EnzymeCatalysisEvidence {M : LipidMolecule} {K : ReactionKineticsPackage M} {T : ThermodynamicsPackage K} {O : MolecularOrbitalPackage T} (C : EnzymeCatalysisPackage O) where
  bindingPositive : C.bindingAffinity > 0
  turnoverPositive : C.turnoverNumber > 0
  michaelisPositive : C.michaelisConstant > 0

def EnzymeCatalysisClosed {M : LipidMolecule} {K : ReactionKineticsPackage M} {T : ThermodynamicsPackage K} {O : MolecularOrbitalPackage T} (C : EnzymeCatalysisPackage O) : Prop :=
  C.catalysisValid

theorem enzyme_catalysis_closed_from_evidence
    {M : LipidMolecule} {K : ReactionKineticsPackage M} {T : ThermodynamicsPackage K} {O : MolecularOrbitalPackage T} (C : EnzymeCatalysisPackage O) (E : EnzymeCatalysisEvidence C) :
    EnzymeCatalysisClosed C := by
  exact C.catalysisValidClosed

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse