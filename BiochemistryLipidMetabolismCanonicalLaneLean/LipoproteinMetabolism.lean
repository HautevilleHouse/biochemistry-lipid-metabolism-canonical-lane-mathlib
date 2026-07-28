import HautevilleHouse.BiochemistryLipidMetabolismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryLipidMetabolismCanonicalLaneLean

structure LipoproteinMetabolismPackage where
  chylomicronFormation : Prop
  VLDLSecretion : Prop
  LDLReceptor : Prop
  HDLBiogenesis : Prop
  lipidTransferProteins : Prop
  reverseCholesterolTransport : Prop

structure LipoproteinMetabolismEvidence (L : LipoproteinMetabolismPackage) where
  chylomicronFormationClosed : L.chylomicronFormation
  VLDLSecretionClosed : L.VLDLSecretion
  LDLReceptorClosed : L.LDLReceptor
  HDLBiogenesisClosed : L.HDLBiogenesis
  lipidTransferProteinsClosed : L.lipidTransferProteins
  reverseCholesterolTransportClosed : L.reverseCholesterolTransport

def LipoproteinMetabolismClosed (L : LipoproteinMetabolismPackage) : Prop :=
  L.chylomicronFormation ∧ L.VLDLSecretion ∧ L.LDLReceptor ∧
  L.HDLBiogenesis ∧ L.lipidTransferProteins ∧ L.reverseCholesterolTransport

theorem lipoprotein_metabolism_closed_from_evidence (L : LipoproteinMetabolismPackage)
    (E : LipoproteinMetabolismEvidence L) : LipoproteinMetabolismClosed L := by
  exact And.intro E.chylomicronFormationClosed
    (And.intro E.VLDLSecretionClosed
      (And.intro E.LDLReceptorClosed
        (And.intro E.HDLBiogenesisClosed
          (And.intro E.lipidTransferProteinsClosed E.reverseCholesterolTransportClosed))))

end BiochemistryLipidMetabolismCanonicalLaneLean
end HautevilleHouse