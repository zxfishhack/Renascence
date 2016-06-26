all:libGP.a libGP.so test.out example.out 

ALL_INCLUESlibGP.a= include//backend/GPBackEndProducer.h include//backend/GPBasicPiecesFunctionCreator.h include//backend/GPComputePoint.h include//backend/GPDAGPiecesFunctionCreator.h include//backend/GPPiecesFunctionCreator.h include//backend/GPSingleParallelMachine.h include//backend/GPStreamADFProducer.h include//backend/GPTreeADF.h include//backend/GPTreePiecesFunctionCreator.h include//backend/GPTreeProducer.h include//core/GPFactory.h include//core/GPFunction.h include//core/GPFunctionDataBase.h include//core/GPFunctionTree.h include//core/GPMultiTable.h include//core/GPParallelMachineSet.h include//core/GPParameter.h include//core/GPPieceFactory.h include//core/GPProducer.h include//core/GPStatusContent.h include//core/GPStreamFactory.h include//core/GPStreamUtils.h include//core/IGPAutoDefFunction.h include//evolution/genetic_operator.h include//evolution/GPEvolutionGroup.h include//evolution/group.h include//frontend/GPFormulaTree.h include//frontend/GPFrontEndProducer.h include//frontend/GPFunctionFrontEndProducer.h include//frontend/GPProducerUtils.h include//GPStrings.h include//head.h include//lowlevelAPI/GPContents.h include//lowlevelAPI/GPParallelType.h include//lowlevelAPI/GPPieces.h include//lowlevelAPI/GPPiecesFunction.h include//lowlevelAPI/GPRefCount.h include//lowlevelAPI/GPStream.h include//lowlevelAPI/GPTypes.h include//lowlevelAPI/IFunctionTable.h include//lowlevelAPI/IGPFunction.h include//lowlevelAPI/IParallelMachine.h include//lowlevelAPI/IStatusType.h include//math/carryArray.h include//math/carryGroup.h include//math/carryPoint.h include//math/carryTree.h include//math/GPAbstractPoint.h include//math/GPCarryVaryGroup.h include//math/GPSingleTree.h include//math/GPSingleTreeFunction.h include//midend/GPMapReduceMerger.h include//midend/GPMultiLayerTree.h include//optimizor/GPGoldenDivideOpt.h include//optimizor/GPNetSearchOpt.h include//optimizor/GPOptimizorFactory.h include//optimizor/GPParticleSwarmOpt.h include//optimizor/IGPOptimizor.h include//platform/GPSystem.h include//platform/system_lib.h include//user/GPAPI.h include//utils/AutoClean.h include//utils/AutoStorage.h include//utils/GPBlock.h include//utils/GPClock.h include//utils/GPDebug.h include//utils/GPRandom.h include//utils/GPStringHelper.h include//utils/GPTreeNode.h include//xml/xmlReader.h

libGP.a:  build/src_backend_GPBasicPiecesFunctionCreator.o build/src_backend_GPComputePoint.o build/src_backend_GPDAGPiecesFunction.o build/src_backend_GPDAGPiecesFunctionCreator.o build/src_backend_GPSingleParallelMachine.o build/src_backend_GPStreamADF.o build/src_backend_GPStreamADFProducer.o build/src_backend_GPTreeADF.o build/src_backend_GPTreePiecesFunctionCreator.o build/src_backend_GPTreeProducer.o build/src_core_GPDoubleType.o build/src_core_GPFactory.o build/src_core_GPFileStream.o build/src_core_GPFunctionDataBase.o build/src_core_GPFunctionTree.o build/src_core_GPMultiTable.o build/src_core_GPParallelMachineSet.o build/src_core_GPParameter.o build/src_core_GPPieceFactory.o build/src_core_GPProducer.o build/src_core_GPStatusContent.o build/src_core_GPStlStream.o build/src_core_GPStreamFactory.o build/src_core_GPStreamUtils.o build/src_core_GPStringType.o build/src_core_GPUserStream.o build/src_evolution_GPEvolutionGroup.o build/src_frontend_GPFormulaTree.o build/src_frontend_GPFunctionFrontEndProducer.o build/src_frontend_GPProducerUtils.o build/src_frontend_recurse_tree.o build/src_GPStrings.o build/src_math_carryArray.o build/src_math_carryPoint.o build/src_math_GPAbstractPoint.o build/src_math_GPCarryVaryGroup.o build/src_math_GPSingleTree.o build/src_math_GPSingleTreeFunction.o build/src_midend_GPMapReduceMerger.o build/src_midend_GPMultiLayerTree.o build/src_optimizor_GPGoldenDivideOpt.o build/src_optimizor_GPNetSearchOpt.o build/src_optimizor_GPOptimizorFactory.o build/src_optimizor_GPParticleSwarmOpt.o build/src_platform_GPSystem.o build/src_user_GPAPI.o build/src_utils_GPBlock.o build/src_utils_GPClock.o build/src_utils_GPRandom.o build/src_utils_GPStringHelper.o build/src_utils_GPTreeNode.o build/src_xml_xmlReader.o 
	rm -f libGP.a
	ar rcs libGP.a  build/src_backend_GPBasicPiecesFunctionCreator.o build/src_backend_GPComputePoint.o build/src_backend_GPDAGPiecesFunction.o build/src_backend_GPDAGPiecesFunctionCreator.o build/src_backend_GPSingleParallelMachine.o build/src_backend_GPStreamADF.o build/src_backend_GPStreamADFProducer.o build/src_backend_GPTreeADF.o build/src_backend_GPTreePiecesFunctionCreator.o build/src_backend_GPTreeProducer.o build/src_core_GPDoubleType.o build/src_core_GPFactory.o build/src_core_GPFileStream.o build/src_core_GPFunctionDataBase.o build/src_core_GPFunctionTree.o build/src_core_GPMultiTable.o build/src_core_GPParallelMachineSet.o build/src_core_GPParameter.o build/src_core_GPPieceFactory.o build/src_core_GPProducer.o build/src_core_GPStatusContent.o build/src_core_GPStlStream.o build/src_core_GPStreamFactory.o build/src_core_GPStreamUtils.o build/src_core_GPStringType.o build/src_core_GPUserStream.o build/src_evolution_GPEvolutionGroup.o build/src_frontend_GPFormulaTree.o build/src_frontend_GPFunctionFrontEndProducer.o build/src_frontend_GPProducerUtils.o build/src_frontend_recurse_tree.o build/src_GPStrings.o build/src_math_carryArray.o build/src_math_carryPoint.o build/src_math_GPAbstractPoint.o build/src_math_GPCarryVaryGroup.o build/src_math_GPSingleTree.o build/src_math_GPSingleTreeFunction.o build/src_midend_GPMapReduceMerger.o build/src_midend_GPMultiLayerTree.o build/src_optimizor_GPGoldenDivideOpt.o build/src_optimizor_GPNetSearchOpt.o build/src_optimizor_GPOptimizorFactory.o build/src_optimizor_GPParticleSwarmOpt.o build/src_platform_GPSystem.o build/src_user_GPAPI.o build/src_utils_GPBlock.o build/src_utils_GPClock.o build/src_utils_GPRandom.o build/src_utils_GPStringHelper.o build/src_utils_GPTreeNode.o build/src_xml_xmlReader.o ${SELF_VARIABLES}
build/src_backend_GPBasicPiecesFunctionCreator.o : src/backend/GPBasicPiecesFunctionCreator.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPBasicPiecesFunctionCreator.o -c src/backend/GPBasicPiecesFunctionCreator.cpp -Iinclude
  
build/src_backend_GPComputePoint.o : src/backend/GPComputePoint.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPComputePoint.o -c src/backend/GPComputePoint.cpp -Iinclude
  
build/src_backend_GPDAGPiecesFunction.o : src/backend/GPDAGPiecesFunction.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPDAGPiecesFunction.o -c src/backend/GPDAGPiecesFunction.cpp -Iinclude
  
build/src_backend_GPDAGPiecesFunctionCreator.o : src/backend/GPDAGPiecesFunctionCreator.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPDAGPiecesFunctionCreator.o -c src/backend/GPDAGPiecesFunctionCreator.cpp -Iinclude
  
build/src_backend_GPSingleParallelMachine.o : src/backend/GPSingleParallelMachine.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPSingleParallelMachine.o -c src/backend/GPSingleParallelMachine.cpp -Iinclude
  
build/src_backend_GPStreamADF.o : src/backend/GPStreamADF.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPStreamADF.o -c src/backend/GPStreamADF.cpp -Iinclude
  
build/src_backend_GPStreamADFProducer.o : src/backend/GPStreamADFProducer.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPStreamADFProducer.o -c src/backend/GPStreamADFProducer.cpp -Iinclude
  
build/src_backend_GPTreeADF.o : src/backend/GPTreeADF.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPTreeADF.o -c src/backend/GPTreeADF.cpp -Iinclude
  
build/src_backend_GPTreePiecesFunctionCreator.o : src/backend/GPTreePiecesFunctionCreator.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPTreePiecesFunctionCreator.o -c src/backend/GPTreePiecesFunctionCreator.cpp -Iinclude
  
build/src_backend_GPTreeProducer.o : src/backend/GPTreeProducer.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_backend_GPTreeProducer.o -c src/backend/GPTreeProducer.cpp -Iinclude
  
build/src_core_GPDoubleType.o : src/core/GPDoubleType.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPDoubleType.o -c src/core/GPDoubleType.cpp -Iinclude
  
build/src_core_GPFactory.o : src/core/GPFactory.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPFactory.o -c src/core/GPFactory.cpp -Iinclude
  
build/src_core_GPFileStream.o : src/core/GPFileStream.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPFileStream.o -c src/core/GPFileStream.cpp -Iinclude
  
build/src_core_GPFunctionDataBase.o : src/core/GPFunctionDataBase.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPFunctionDataBase.o -c src/core/GPFunctionDataBase.cpp -Iinclude
  
build/src_core_GPFunctionTree.o : src/core/GPFunctionTree.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPFunctionTree.o -c src/core/GPFunctionTree.cpp -Iinclude
  
build/src_core_GPMultiTable.o : src/core/GPMultiTable.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPMultiTable.o -c src/core/GPMultiTable.cpp -Iinclude
  
build/src_core_GPParallelMachineSet.o : src/core/GPParallelMachineSet.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPParallelMachineSet.o -c src/core/GPParallelMachineSet.cpp -Iinclude
  
build/src_core_GPParameter.o : src/core/GPParameter.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPParameter.o -c src/core/GPParameter.cpp -Iinclude
  
build/src_core_GPPieceFactory.o : src/core/GPPieceFactory.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPPieceFactory.o -c src/core/GPPieceFactory.cpp -Iinclude
  
build/src_core_GPProducer.o : src/core/GPProducer.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPProducer.o -c src/core/GPProducer.cpp -Iinclude
  
build/src_core_GPStatusContent.o : src/core/GPStatusContent.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPStatusContent.o -c src/core/GPStatusContent.cpp -Iinclude
  
build/src_core_GPStlStream.o : src/core/GPStlStream.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPStlStream.o -c src/core/GPStlStream.cpp -Iinclude
  
build/src_core_GPStreamFactory.o : src/core/GPStreamFactory.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPStreamFactory.o -c src/core/GPStreamFactory.cpp -Iinclude
  
build/src_core_GPStreamUtils.o : src/core/GPStreamUtils.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPStreamUtils.o -c src/core/GPStreamUtils.cpp -Iinclude
  
build/src_core_GPStringType.o : src/core/GPStringType.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPStringType.o -c src/core/GPStringType.cpp -Iinclude
  
build/src_core_GPUserStream.o : src/core/GPUserStream.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_core_GPUserStream.o -c src/core/GPUserStream.cpp -Iinclude
  
build/src_evolution_GPEvolutionGroup.o : src/evolution/GPEvolutionGroup.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_evolution_GPEvolutionGroup.o -c src/evolution/GPEvolutionGroup.cpp -Iinclude
  
build/src_frontend_GPFormulaTree.o : src/frontend/GPFormulaTree.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_frontend_GPFormulaTree.o -c src/frontend/GPFormulaTree.cpp -Iinclude
  
build/src_frontend_GPFunctionFrontEndProducer.o : src/frontend/GPFunctionFrontEndProducer.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_frontend_GPFunctionFrontEndProducer.o -c src/frontend/GPFunctionFrontEndProducer.cpp -Iinclude
  
build/src_frontend_GPProducerUtils.o : src/frontend/GPProducerUtils.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_frontend_GPProducerUtils.o -c src/frontend/GPProducerUtils.cpp -Iinclude
  
build/src_frontend_recurse_tree.o : src/frontend/recurse_tree.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_frontend_recurse_tree.o -c src/frontend/recurse_tree.cpp -Iinclude
  
build/src_GPStrings.o : src/GPStrings.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_GPStrings.o -c src/GPStrings.cpp -Iinclude
  
build/src_math_carryArray.o : src/math/carryArray.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_math_carryArray.o -c src/math/carryArray.cpp -Iinclude
  
build/src_math_carryPoint.o : src/math/carryPoint.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_math_carryPoint.o -c src/math/carryPoint.cpp -Iinclude
  
build/src_math_GPAbstractPoint.o : src/math/GPAbstractPoint.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_math_GPAbstractPoint.o -c src/math/GPAbstractPoint.cpp -Iinclude
  
build/src_math_GPCarryVaryGroup.o : src/math/GPCarryVaryGroup.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_math_GPCarryVaryGroup.o -c src/math/GPCarryVaryGroup.cpp -Iinclude
  
build/src_math_GPSingleTree.o : src/math/GPSingleTree.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_math_GPSingleTree.o -c src/math/GPSingleTree.cpp -Iinclude
  
build/src_math_GPSingleTreeFunction.o : src/math/GPSingleTreeFunction.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_math_GPSingleTreeFunction.o -c src/math/GPSingleTreeFunction.cpp -Iinclude
  
build/src_midend_GPMapReduceMerger.o : src/midend/GPMapReduceMerger.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_midend_GPMapReduceMerger.o -c src/midend/GPMapReduceMerger.cpp -Iinclude
  
build/src_midend_GPMultiLayerTree.o : src/midend/GPMultiLayerTree.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_midend_GPMultiLayerTree.o -c src/midend/GPMultiLayerTree.cpp -Iinclude
  
build/src_optimizor_GPGoldenDivideOpt.o : src/optimizor/GPGoldenDivideOpt.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_optimizor_GPGoldenDivideOpt.o -c src/optimizor/GPGoldenDivideOpt.cpp -Iinclude
  
build/src_optimizor_GPNetSearchOpt.o : src/optimizor/GPNetSearchOpt.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_optimizor_GPNetSearchOpt.o -c src/optimizor/GPNetSearchOpt.cpp -Iinclude
  
build/src_optimizor_GPOptimizorFactory.o : src/optimizor/GPOptimizorFactory.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_optimizor_GPOptimizorFactory.o -c src/optimizor/GPOptimizorFactory.cpp -Iinclude
  
build/src_optimizor_GPParticleSwarmOpt.o : src/optimizor/GPParticleSwarmOpt.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_optimizor_GPParticleSwarmOpt.o -c src/optimizor/GPParticleSwarmOpt.cpp -Iinclude
  
build/src_platform_GPSystem.o : src/platform/GPSystem.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_platform_GPSystem.o -c src/platform/GPSystem.cpp -Iinclude
  
build/src_user_GPAPI.o : src/user/GPAPI.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_user_GPAPI.o -c src/user/GPAPI.cpp -Iinclude
  
build/src_utils_GPBlock.o : src/utils/GPBlock.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_utils_GPBlock.o -c src/utils/GPBlock.cpp -Iinclude
  
build/src_utils_GPClock.o : src/utils/GPClock.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_utils_GPClock.o -c src/utils/GPClock.cpp -Iinclude
  
build/src_utils_GPRandom.o : src/utils/GPRandom.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_utils_GPRandom.o -c src/utils/GPRandom.cpp -Iinclude
  
build/src_utils_GPStringHelper.o : src/utils/GPStringHelper.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_utils_GPStringHelper.o -c src/utils/GPStringHelper.cpp -Iinclude
  
build/src_utils_GPTreeNode.o : src/utils/GPTreeNode.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_utils_GPTreeNode.o -c src/utils/GPTreeNode.cpp -Iinclude
  
build/src_xml_xmlReader.o : src/xml/xmlReader.cpp   ${ALL_INCLUESlibGP.a}
	g++ -std=c++11 -O3 -g -fPIC -o build/src_xml_xmlReader.o -c src/xml/xmlReader.cpp -Iinclude
  

ALL_INCLUESlibGP.so= include//backend/GPBackEndProducer.h include//backend/GPBasicPiecesFunctionCreator.h include//backend/GPComputePoint.h include//backend/GPDAGPiecesFunctionCreator.h include//backend/GPPiecesFunctionCreator.h include//backend/GPSingleParallelMachine.h include//backend/GPStreamADFProducer.h include//backend/GPTreeADF.h include//backend/GPTreePiecesFunctionCreator.h include//backend/GPTreeProducer.h include//core/GPFactory.h include//core/GPFunction.h include//core/GPFunctionDataBase.h include//core/GPFunctionTree.h include//core/GPMultiTable.h include//core/GPParallelMachineSet.h include//core/GPParameter.h include//core/GPPieceFactory.h include//core/GPProducer.h include//core/GPStatusContent.h include//core/GPStreamFactory.h include//core/GPStreamUtils.h include//core/IGPAutoDefFunction.h include//evolution/genetic_operator.h include//evolution/GPEvolutionGroup.h include//evolution/group.h include//frontend/GPFormulaTree.h include//frontend/GPFrontEndProducer.h include//frontend/GPFunctionFrontEndProducer.h include//frontend/GPProducerUtils.h include//GPStrings.h include//head.h include//lowlevelAPI/GPContents.h include//lowlevelAPI/GPParallelType.h include//lowlevelAPI/GPPieces.h include//lowlevelAPI/GPPiecesFunction.h include//lowlevelAPI/GPRefCount.h include//lowlevelAPI/GPStream.h include//lowlevelAPI/GPTypes.h include//lowlevelAPI/IFunctionTable.h include//lowlevelAPI/IGPFunction.h include//lowlevelAPI/IParallelMachine.h include//lowlevelAPI/IStatusType.h include//math/carryArray.h include//math/carryGroup.h include//math/carryPoint.h include//math/carryTree.h include//math/GPAbstractPoint.h include//math/GPCarryVaryGroup.h include//math/GPSingleTree.h include//math/GPSingleTreeFunction.h include//midend/GPMapReduceMerger.h include//midend/GPMultiLayerTree.h include//optimizor/GPGoldenDivideOpt.h include//optimizor/GPNetSearchOpt.h include//optimizor/GPOptimizorFactory.h include//optimizor/GPParticleSwarmOpt.h include//optimizor/IGPOptimizor.h include//platform/GPSystem.h include//platform/system_lib.h include//user/GPAPI.h include//utils/AutoClean.h include//utils/AutoStorage.h include//utils/GPBlock.h include//utils/GPClock.h include//utils/GPDebug.h include//utils/GPRandom.h include//utils/GPStringHelper.h include//utils/GPTreeNode.h include//xml/xmlReader.h

libGP.so:  build/src_backend_GPBasicPiecesFunctionCreator.o build/src_backend_GPComputePoint.o build/src_backend_GPDAGPiecesFunction.o build/src_backend_GPDAGPiecesFunctionCreator.o build/src_backend_GPSingleParallelMachine.o build/src_backend_GPStreamADF.o build/src_backend_GPStreamADFProducer.o build/src_backend_GPTreeADF.o build/src_backend_GPTreePiecesFunctionCreator.o build/src_backend_GPTreeProducer.o build/src_core_GPDoubleType.o build/src_core_GPFactory.o build/src_core_GPFileStream.o build/src_core_GPFunctionDataBase.o build/src_core_GPFunctionTree.o build/src_core_GPMultiTable.o build/src_core_GPParallelMachineSet.o build/src_core_GPParameter.o build/src_core_GPPieceFactory.o build/src_core_GPProducer.o build/src_core_GPStatusContent.o build/src_core_GPStlStream.o build/src_core_GPStreamFactory.o build/src_core_GPStreamUtils.o build/src_core_GPStringType.o build/src_core_GPUserStream.o build/src_evolution_GPEvolutionGroup.o build/src_frontend_GPFormulaTree.o build/src_frontend_GPFunctionFrontEndProducer.o build/src_frontend_GPProducerUtils.o build/src_frontend_recurse_tree.o build/src_GPStrings.o build/src_math_carryArray.o build/src_math_carryPoint.o build/src_math_GPAbstractPoint.o build/src_math_GPCarryVaryGroup.o build/src_math_GPSingleTree.o build/src_math_GPSingleTreeFunction.o build/src_midend_GPMapReduceMerger.o build/src_midend_GPMultiLayerTree.o build/src_optimizor_GPGoldenDivideOpt.o build/src_optimizor_GPNetSearchOpt.o build/src_optimizor_GPOptimizorFactory.o build/src_optimizor_GPParticleSwarmOpt.o build/src_platform_GPSystem.o build/src_user_GPAPI.o build/src_utils_GPBlock.o build/src_utils_GPClock.o build/src_utils_GPRandom.o build/src_utils_GPStringHelper.o build/src_utils_GPTreeNode.o build/src_xml_xmlReader.o 
	g++ -std=c++11   build/src_backend_GPBasicPiecesFunctionCreator.o build/src_backend_GPComputePoint.o build/src_backend_GPDAGPiecesFunction.o build/src_backend_GPDAGPiecesFunctionCreator.o build/src_backend_GPSingleParallelMachine.o build/src_backend_GPStreamADF.o build/src_backend_GPStreamADFProducer.o build/src_backend_GPTreeADF.o build/src_backend_GPTreePiecesFunctionCreator.o build/src_backend_GPTreeProducer.o build/src_core_GPDoubleType.o build/src_core_GPFactory.o build/src_core_GPFileStream.o build/src_core_GPFunctionDataBase.o build/src_core_GPFunctionTree.o build/src_core_GPMultiTable.o build/src_core_GPParallelMachineSet.o build/src_core_GPParameter.o build/src_core_GPPieceFactory.o build/src_core_GPProducer.o build/src_core_GPStatusContent.o build/src_core_GPStlStream.o build/src_core_GPStreamFactory.o build/src_core_GPStreamUtils.o build/src_core_GPStringType.o build/src_core_GPUserStream.o build/src_evolution_GPEvolutionGroup.o build/src_frontend_GPFormulaTree.o build/src_frontend_GPFunctionFrontEndProducer.o build/src_frontend_GPProducerUtils.o build/src_frontend_recurse_tree.o build/src_GPStrings.o build/src_math_carryArray.o build/src_math_carryPoint.o build/src_math_GPAbstractPoint.o build/src_math_GPCarryVaryGroup.o build/src_math_GPSingleTree.o build/src_math_GPSingleTreeFunction.o build/src_midend_GPMapReduceMerger.o build/src_midend_GPMultiLayerTree.o build/src_optimizor_GPGoldenDivideOpt.o build/src_optimizor_GPNetSearchOpt.o build/src_optimizor_GPOptimizorFactory.o build/src_optimizor_GPParticleSwarmOpt.o build/src_platform_GPSystem.o build/src_user_GPAPI.o build/src_utils_GPBlock.o build/src_utils_GPClock.o build/src_utils_GPRandom.o build/src_utils_GPStringHelper.o build/src_utils_GPTreeNode.o build/src_xml_xmlReader.o -O3 -g -fPIC  --shared  -lpthread -ldl -o libGP.so ${SELF_VARIABLES}

ALL_INCLUEStest.out= include//backend/GPBackEndProducer.h include//backend/GPBasicPiecesFunctionCreator.h include//backend/GPComputePoint.h include//backend/GPDAGPiecesFunctionCreator.h include//backend/GPPiecesFunctionCreator.h include//backend/GPSingleParallelMachine.h include//backend/GPStreamADFProducer.h include//backend/GPTreeADF.h include//backend/GPTreePiecesFunctionCreator.h include//backend/GPTreeProducer.h include//core/GPFactory.h include//core/GPFunction.h include//core/GPFunctionDataBase.h include//core/GPFunctionTree.h include//core/GPMultiTable.h include//core/GPParallelMachineSet.h include//core/GPParameter.h include//core/GPPieceFactory.h include//core/GPProducer.h include//core/GPStatusContent.h include//core/GPStreamFactory.h include//core/GPStreamUtils.h include//core/IGPAutoDefFunction.h include//evolution/genetic_operator.h include//evolution/GPEvolutionGroup.h include//evolution/group.h include//frontend/GPFormulaTree.h include//frontend/GPFrontEndProducer.h include//frontend/GPFunctionFrontEndProducer.h include//frontend/GPProducerUtils.h include//GPStrings.h include//head.h include//lowlevelAPI/GPContents.h include//lowlevelAPI/GPParallelType.h include//lowlevelAPI/GPPieces.h include//lowlevelAPI/GPPiecesFunction.h include//lowlevelAPI/GPRefCount.h include//lowlevelAPI/GPStream.h include//lowlevelAPI/GPTypes.h include//lowlevelAPI/IFunctionTable.h include//lowlevelAPI/IGPFunction.h include//lowlevelAPI/IParallelMachine.h include//lowlevelAPI/IStatusType.h include//math/carryArray.h include//math/carryGroup.h include//math/carryPoint.h include//math/carryTree.h include//math/GPAbstractPoint.h include//math/GPCarryVaryGroup.h include//math/GPSingleTree.h include//math/GPSingleTreeFunction.h include//midend/GPMapReduceMerger.h include//midend/GPMultiLayerTree.h include//optimizor/GPGoldenDivideOpt.h include//optimizor/GPNetSearchOpt.h include//optimizor/GPOptimizorFactory.h include//optimizor/GPParticleSwarmOpt.h include//optimizor/IGPOptimizor.h include//platform/GPSystem.h include//platform/system_lib.h include//user/GPAPI.h include//utils/AutoClean.h include//utils/AutoStorage.h include//utils/GPBlock.h include//utils/GPClock.h include//utils/GPDebug.h include//utils/GPRandom.h include//utils/GPStringHelper.h include//utils/GPTreeNode.h include//xml/xmlReader.h

test.out:  build/test_AbstractPointTest.o build/test_GPAPITest.o build/test_GPBasicPiecesFunctionCreatorTest.o build/test_GPcarryGroupTest.o build/test_GPCarryVaryGroupTest.o build/test_GPFormulaADFTest.o build/test_GPFormulaTreeTest.o build/test_GPFrontEndProducerTest.o build/test_GPGoldenDividerTest.o build/test_GPMultiLayerTreeTest.o build/test_GPNetSearchTest.o build/test_GPParallelTest.o build/test_GPPiecesFunctionFactoryTest.o build/test_GPPSOTest.o build/test_GPSearchIOTest.o build/test_GPSingleParallelMachineTest.o build/test_GPSingleTreeTest.o build/test_GPStreamADFTest.o build/test_GPStreamTest.o build/test_GPSystemTest.o build/test_GPTest.o build/test_GPTestMain.o build/test_GPThreadParallelTest.o build/test_GPTreeProducerTest.o build/test_GPXmlEvolutionTest.o libGP.so
	g++ -std=c++11   build/test_AbstractPointTest.o build/test_GPAPITest.o build/test_GPBasicPiecesFunctionCreatorTest.o build/test_GPcarryGroupTest.o build/test_GPCarryVaryGroupTest.o build/test_GPFormulaADFTest.o build/test_GPFormulaTreeTest.o build/test_GPFrontEndProducerTest.o build/test_GPGoldenDividerTest.o build/test_GPMultiLayerTreeTest.o build/test_GPNetSearchTest.o build/test_GPParallelTest.o build/test_GPPiecesFunctionFactoryTest.o build/test_GPPSOTest.o build/test_GPSearchIOTest.o build/test_GPSingleParallelMachineTest.o build/test_GPSingleTreeTest.o build/test_GPStreamADFTest.o build/test_GPStreamTest.o build/test_GPSystemTest.o build/test_GPTest.o build/test_GPTestMain.o build/test_GPThreadParallelTest.o build/test_GPTreeProducerTest.o build/test_GPXmlEvolutionTest.o -O3 -g -fPIC   ./libGP.so -lpthread -ldl -o test.out ${SELF_VARIABLES}
build/test_AbstractPointTest.o : test/AbstractPointTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_AbstractPointTest.o -c test/AbstractPointTest.cpp -Iinclude
  
build/test_GPAPITest.o : test/GPAPITest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPAPITest.o -c test/GPAPITest.cpp -Iinclude
  
build/test_GPBasicPiecesFunctionCreatorTest.o : test/GPBasicPiecesFunctionCreatorTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPBasicPiecesFunctionCreatorTest.o -c test/GPBasicPiecesFunctionCreatorTest.cpp -Iinclude
  
build/test_GPcarryGroupTest.o : test/GPcarryGroupTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPcarryGroupTest.o -c test/GPcarryGroupTest.cpp -Iinclude
  
build/test_GPCarryVaryGroupTest.o : test/GPCarryVaryGroupTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPCarryVaryGroupTest.o -c test/GPCarryVaryGroupTest.cpp -Iinclude
  
build/test_GPFormulaADFTest.o : test/GPFormulaADFTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPFormulaADFTest.o -c test/GPFormulaADFTest.cpp -Iinclude
  
build/test_GPFormulaTreeTest.o : test/GPFormulaTreeTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPFormulaTreeTest.o -c test/GPFormulaTreeTest.cpp -Iinclude
  
build/test_GPFrontEndProducerTest.o : test/GPFrontEndProducerTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPFrontEndProducerTest.o -c test/GPFrontEndProducerTest.cpp -Iinclude
  
build/test_GPGoldenDividerTest.o : test/GPGoldenDividerTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPGoldenDividerTest.o -c test/GPGoldenDividerTest.cpp -Iinclude
  
build/test_GPMultiLayerTreeTest.o : test/GPMultiLayerTreeTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPMultiLayerTreeTest.o -c test/GPMultiLayerTreeTest.cpp -Iinclude
  
build/test_GPNetSearchTest.o : test/GPNetSearchTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPNetSearchTest.o -c test/GPNetSearchTest.cpp -Iinclude
  
build/test_GPParallelTest.o : test/GPParallelTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPParallelTest.o -c test/GPParallelTest.cpp -Iinclude
  
build/test_GPPiecesFunctionFactoryTest.o : test/GPPiecesFunctionFactoryTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPPiecesFunctionFactoryTest.o -c test/GPPiecesFunctionFactoryTest.cpp -Iinclude
  
build/test_GPPSOTest.o : test/GPPSOTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPPSOTest.o -c test/GPPSOTest.cpp -Iinclude
  
build/test_GPSearchIOTest.o : test/GPSearchIOTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPSearchIOTest.o -c test/GPSearchIOTest.cpp -Iinclude
  
build/test_GPSingleParallelMachineTest.o : test/GPSingleParallelMachineTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPSingleParallelMachineTest.o -c test/GPSingleParallelMachineTest.cpp -Iinclude
  
build/test_GPSingleTreeTest.o : test/GPSingleTreeTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPSingleTreeTest.o -c test/GPSingleTreeTest.cpp -Iinclude
  
build/test_GPStreamADFTest.o : test/GPStreamADFTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPStreamADFTest.o -c test/GPStreamADFTest.cpp -Iinclude
  
build/test_GPStreamTest.o : test/GPStreamTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPStreamTest.o -c test/GPStreamTest.cpp -Iinclude
  
build/test_GPSystemTest.o : test/GPSystemTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPSystemTest.o -c test/GPSystemTest.cpp -Iinclude
  
build/test_GPTest.o : test/GPTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPTest.o -c test/GPTest.cpp -Iinclude
  
build/test_GPTestMain.o : test/GPTestMain.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPTestMain.o -c test/GPTestMain.cpp -Iinclude
  
build/test_GPThreadParallelTest.o : test/GPThreadParallelTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPThreadParallelTest.o -c test/GPThreadParallelTest.cpp -Iinclude
  
build/test_GPTreeProducerTest.o : test/GPTreeProducerTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPTreeProducerTest.o -c test/GPTreeProducerTest.cpp -Iinclude
  
build/test_GPXmlEvolutionTest.o : test/GPXmlEvolutionTest.cpp libGP.so  ${ALL_INCLUEStest.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/test_GPXmlEvolutionTest.o -c test/GPXmlEvolutionTest.cpp -Iinclude
  

ALL_INCLUESexample.out=

example.out:  build/simple_main.o libGP.a
	g++ -std=c++11   build/simple_main.o -O3 -g -fPIC   ./libGP.a -ldl -lpthread -o example.out ${SELF_VARIABLES}
build/simple_main.o : simple_main.cpp libGP.a  ${ALL_INCLUESexample.out}
	g++ -std=c++11 -O3 -g -fPIC -o build/simple_main.o -c simple_main.cpp -Iinclude
  

clean:
	rm build/*.o
	rm libGP.a
	rm libGP.so
	rm test.out
	rm example.out