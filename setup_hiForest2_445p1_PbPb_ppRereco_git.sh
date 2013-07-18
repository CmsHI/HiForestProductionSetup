#############################
#  HiForest2 Configuration  #
#############################

git clone -b 445p1 git@github.com:CmsHI/HiForestProduction.git ./

# Simulations
cvs co -r V00-01-14 GeneratorInterface/HiGenCommon
cvs co -r V02-02-26 GeneratorInterface/PyquenInterface

# pat macros
cvs co -r pPbProd_v07              HeavyIonsAnalysis/Configuration

cvs co -r pPbProd_v05              RecoHI/HiCentralityAlgos
cvs co -r pPbProd_v04              DataFormats/HeavyIonEvent

cvs co -r backport44X RecoHI/HiJetAlgos

# trigger analyzers
cvs co -r hi44X_02 HLTrigger/HLTanalyzers


# Build!

scram build -c
scram b -j4

