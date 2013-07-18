#############################
#  HiForest2 Configuration  #
#############################

git clone -b 44x git@github.com:CmsHI/HiForestProduction.git ./

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

scram build -c
scram b -j4
