/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.7
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.xiaying.renascence;

public class RenascenceBasicJNI {
  public final static native void GP_Set_Lib_Path(String jarg1);
  public final static native void GP_Set_Stream_Path(String jarg1);
  public final static native long GP_Stream_Create(String jarg1);
  public final static native void GP_Stream_Destroy(long jarg1);
  public final static native long GP_WStream_Create(String jarg1);
  public final static native void GP_WStream_Destroy(long jarg1);
  public final static native long GP_Contents_Load(long jarg1, long jarg2, String jarg3, int jarg4);
  public final static native int GP_Contents_Size(long jarg1);
  public final static native long GP_Contents_Get(long jarg1, int jarg2);
  public final static native double GP_Contents_GetDouble(long jarg1, int jarg2);
  public final static native void GP_Contents_SetDouble(long jarg1, double jarg2, int jarg3);
  public final static native long GP_Contents_CreateDouble(double jarg1);
  public final static native void GP_Contents_Save(long jarg1, long jarg2, int jarg3);
  public final static native void GP_Contents_Destroy(long jarg1);
  public final static native long GP_Contents_CreateCollector();
  public final static native void GP_Contents_Collect(long jarg1, long jarg2, int jarg3);
  public final static native long GP_Producer_Create(long jarg1, long jarg2, int jarg3, int jarg4);
  public final static native void GP_Producer_Destroy(long jarg1);
  public final static native void GPOptimizorInfo_nMaxADFDepth_set(long jarg1, GPOptimizorInfo jarg1_, int jarg2);
  public final static native int GPOptimizorInfo_nMaxADFDepth_get(long jarg1, GPOptimizorInfo jarg1_);
  public final static native void GPOptimizorInfo_nOptimizeType_set(long jarg1, GPOptimizorInfo jarg1_, int jarg2);
  public final static native int GPOptimizorInfo_nOptimizeType_get(long jarg1, GPOptimizorInfo jarg1_);
  public final static native void GPOptimizorInfo_pFitComputeFunction_set(long jarg1, GPOptimizorInfo jarg1_, long jarg2);
  public final static native long GPOptimizorInfo_pFitComputeFunction_get(long jarg1, GPOptimizorInfo jarg1_);
  public final static native void GPOptimizorInfo_pMeta_set(long jarg1, GPOptimizorInfo jarg1_, long jarg2);
  public final static native long GPOptimizorInfo_pMeta_get(long jarg1, GPOptimizorInfo jarg1_);
  public final static native void GPOptimizorInfo_nMaxRunTimes_set(long jarg1, GPOptimizorInfo jarg1_, int jarg2);
  public final static native int GPOptimizorInfo_nMaxRunTimes_get(long jarg1, GPOptimizorInfo jarg1_);
  public final static native void GPOptimizorInfo_fTargetBestValue_set(long jarg1, GPOptimizorInfo jarg1_, double jarg2);
  public final static native double GPOptimizorInfo_fTargetBestValue_get(long jarg1, GPOptimizorInfo jarg1_);
  public final static native void GPOptimizorInfo_pBestInfo_set(long jarg1, GPOptimizorInfo jarg1_, long jarg2);
  public final static native long GPOptimizorInfo_pBestInfo_get(long jarg1, GPOptimizorInfo jarg1_);
  public final static native void GPOptimizorInfo_fOutputBest_set(long jarg1, GPOptimizorInfo jarg1_, double jarg2);
  public final static native double GPOptimizorInfo_fOutputBest_get(long jarg1, GPOptimizorInfo jarg1_);
  public final static native long new_GPOptimizorInfo__SWIG_0();
  public final static native long new_GPOptimizorInfo__SWIG_1(long jarg1, GPOptimizorInfo jarg1_);
  public final static native void delete_GPOptimizorInfo(long jarg1);
  public final static native long GP_Function_Create_ByType(long jarg1, String jarg2, String jarg3, long jarg4, GPOptimizorInfo jarg4_);
  public final static native long GP_Function_Create_ByFormula(long jarg1, String jarg2, String jarg3, long jarg4, GPOptimizorInfo jarg4_);
  public final static native long GP_Function_Run(long jarg1, long jarg2);
  public final static native void GP_Function_Destroy(long jarg1);
  public final static native long GP_Function_Create_ByStream(long jarg1, long jarg2);
  public final static native void GP_Function_Save(long jarg1, long jarg2);
  public final static native void GP_Function_Optimize(long jarg1, long jarg2, GPOptimizorInfo jarg2_);
  public final static native long GP_Streams_Malloc(int jarg1);
  public final static native void GP_Streams_Free(long jarg1);
  public final static native long GP_Streams_Get(long jarg1, int jarg2);
  public final static native void GP_Streams_Set(long jarg1, long jarg2, int jarg3);
  public final static native int GP_Strings_Number(long jarg1);
  public final static native String GP_Strings_Get(long jarg1, int jarg2);
  public final static native void GP_Strings_Free(long jarg1);
  public final static native long GP_Function_GetFormula(long jarg1, String jarg2);
  public final static native long GP_Function_GetParameters(long jarg1);
  public final static native void GP_Function_MapParameters(long jarg1, String jarg2);
  public final static native long GP_Producer_ListFunctions(long jarg1);
  public final static native long GP_Producer_ListTypes(long jarg1);
  public final static native long GP_Contents_Types(long jarg1);
  public final static native int GP_OPTIMIZOR_VALUE_get();
  public final static native int GP_OPTIMIZOR_TIME_get();
  public final static native long GP_OptimzorInfo_CreateTemplate(int jarg1, int jarg2, int jarg3, long jarg4, long jarg5, long jarg6, long jarg7);
  public final static native void GP_OptimzorInfo_FreeTemplate(long jarg1, GPOptimizorInfo jarg1_);
  public final static native double GP_OptimzorInfo_TemplateGetBestValue(long jarg1, GPOptimizorInfo jarg1_);
  public final static native long GP_PiecesProducer_Create(long jarg1, long jarg2, long jarg3, int jarg4, long jarg5, int jarg6);
  public final static native void GP_PiecesProducer_Destroy(long jarg1);
  public final static native long GP_PiecesProducer_ListType(long jarg1);
  public final static native long GP_PiecesFunction_Create(long jarg1, String jarg2, String jarg3, String jarg4);
  public final static native long GP_PiecesFunction_Run(long jarg1, long jarg2, int jarg3);
  public final static native void GP_PiecesFunction_Destroy(long jarg1);
  public final static native long GP_Pieces_Load(long jarg1, String jarg2, String jarg3, String jarg4);
  public final static native void GP_Pieces_Save(long jarg1, String jarg2, String jarg3);
  public final static native void GP_Pieces_Destroy(long jarg1);
}
