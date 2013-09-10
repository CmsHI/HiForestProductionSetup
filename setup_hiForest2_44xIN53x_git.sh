#############################
#  HiForest2 Configuration  #
#############################

git clone -b 44xIN53x git@github.com:CmsHI/HiForestProduction.git ./

# pat macros
cvs co -r hi44X_03                 HeavyIonsAnalysis/Configuration

# Latest hiSelectedTrack (= hiGoodTightTrack)
cvs co -r hi44X_03                 RecoHI/HiTracking
cvs co -r hi44X_03                 RecoHI/HiMuonAlgos
cvs co -r hi44X_03                 RecoHI/HiJetAlgos
cvs co -r hi44X_03                 RecoHI/HiCentralityAlgos
cvs co -r hi44X_03                 RecoHI/HiEvtPlaneAlgos
cvs co -r hi44X_03                 CondFormats/HIObjects
cvs co -r hi44X_02                 DataFormats/HeavyIonEvent


cvs co -r hi44X_04                 RecoHI/HiEgammaAlgos

# Yen-Jie: checking with Matt to see if we need to update to HEAD
cvs co -r hi44X_02_01              RecoHI/Configuration

# trigger analyzers
cvs co -r hi44X_02 HLTrigger/HLTanalyzers

# Build!

scram build --convertxml

# UCT code
git clone https://github.com/uwcms/UCT2015.git L1Trigger/UCT2015
cvs co -r UCT2015_v4 L1Trigger/RegionalCaloTrigger
addpkg DataFormats/L1CaloTrigger 
addpkg L1TriggerConfig/L1ScalesProducers

# patch the CVS code for compilation fixes
# INCLUDE UCT PATCH
patch -N -p0 < ForestConfigurations/44xIN53x.patch


scram build -j20
