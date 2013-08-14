#############################
#  HiForest2 Configuration  #
#############################

git clone -b 53x_2013-18-14-1418 git@github.com:CmsHI/HiForestProduction.git ./

# Simulations
cvs co -r V00-01-14 GeneratorInterface/HiGenCommon
cvs co -r V02-02-26 GeneratorInterface/PyquenInterface

# pat macros
cvs co -r pPbProd_v14              HeavyIonsAnalysis/Configuration

cvs co -r pPbProd_v10              RecoHI/HiCentralityAlgos
cvs co -r pPbProd_v05              DataFormats/HeavyIonEvent

cvs co -r branch_hi538             RecoJets/JetProducers

# trigger analyzers
cvs co -r hi538_01 HLTrigger/HLTanalyzers

#
cvs co -r V00-02-01 RecoHI/HiJetAlgos

# Build!

scram build --convertxml
scram build -j4

