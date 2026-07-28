import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  lipidConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "biochemistry-lipid-metabolism-canonical-lane",
  theoremName := "Lipid Metabolism Constrained Closure",
  theoremObject := "Lipid metabolism pathway and kinetics",
  classicalBoundary := "Classical boundary: all chemical reactions accounted",
  lipidConstrainedStatement := "Lipid-constrained theorem certificate internalized through reaction kinetics, thermodynamics, and pathway closure",
  certificateLane := "lipid_constrained",
  carriedRemainder := "Remaining classical boundary carried separately"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "biochemistry-lipid-metabolism-canonical-lane" := by
  rfl

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse