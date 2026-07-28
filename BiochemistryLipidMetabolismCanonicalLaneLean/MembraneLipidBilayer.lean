import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure PhospholipidBilayerPackage where
  amphipathicPhospholipids : Prop
  hydrophobicCore : Prop
  fluidMosaicModel : Prop
  lateralDiffusion : Prop
  transverseDiffusion : Prop
  membraneProteins : Prop
  selectivePermeability : Prop

structure PhospholipidBilayerEvidence (M : PhospholipidBilayerPackage) where
  amphipathicPhospholipidsClosed : M.amphipathicPhospholipids
  hydrophobicCoreClosed : M.hydrophobicCore
  fluidMosaicModelClosed : M.fluidMosaicModel
  lateralDiffusionClosed : M.lateralDiffusion
  transverseDiffusionClosed : M.transverseDiffusion
  membraneProteinsClosed : M.membraneProteins
  selectivePermeabilityClosed : M.selectivePermeability

def PhospholipidBilayerClosed (M : PhospholipidBilayerPackage) : Prop :=
  M.amphipathicPhospholipids ∧ M.hydrophobicCore ∧
  M.fluidMosaicModel ∧ M.lateralDiffusion ∧
  M.transverseDiffusion ∧ M.membraneProteins ∧
  M.selectivePermeability

theorem phospholipid_bilayer_closed_from_evidence
    (M : PhospholipidBilayerPackage) (E : PhospholipidBilayerEvidence M) :
    PhospholipidBilayerClosed M := by
  exact And.intro E.amphipathicPhospholipidsClosed
    (And.intro E.hydrophobicCoreClosed
      (And.intro E.fluidMosaicModelClosed
        (And.intro E.lateralDiffusionClosed
          (And.intro E.transverseDiffusionClosed
            (And.intro E.membraneProteinsClosed
              E.selectivePermeabilityClosed)))))

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse