/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.7
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.xiaying.renascence;

public class GPOptimizorInfo {
  private transient long swigCPtr;
  protected transient boolean swigCMemOwn;

  protected GPOptimizorInfo(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(GPOptimizorInfo obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        RenascenceBasicJNI.delete_GPOptimizorInfo(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public void setNMaxADFDepth(int value) {
    RenascenceBasicJNI.GPOptimizorInfo_nMaxADFDepth_set(swigCPtr, this, value);
  }

  public int getNMaxADFDepth() {
    return RenascenceBasicJNI.GPOptimizorInfo_nMaxADFDepth_get(swigCPtr, this);
  }

  public void setNOptimizeType(int value) {
    RenascenceBasicJNI.GPOptimizorInfo_nOptimizeType_set(swigCPtr, this, value);
  }

  public int getNOptimizeType() {
    return RenascenceBasicJNI.GPOptimizorInfo_nOptimizeType_get(swigCPtr, this);
  }

  public void setPFitComputeFunction(SWIGTYPE_p_f_p_IGPAutoDefFunction_p_void__double value) {
    RenascenceBasicJNI.GPOptimizorInfo_pFitComputeFunction_set(swigCPtr, this, SWIGTYPE_p_f_p_IGPAutoDefFunction_p_void__double.getCPtr(value));
  }

  public SWIGTYPE_p_f_p_IGPAutoDefFunction_p_void__double getPFitComputeFunction() {
    long cPtr = RenascenceBasicJNI.GPOptimizorInfo_pFitComputeFunction_get(swigCPtr, this);
    return (cPtr == 0) ? null : new SWIGTYPE_p_f_p_IGPAutoDefFunction_p_void__double(cPtr, false);
  }

  public void setPMeta(SWIGTYPE_p_void value) {
    RenascenceBasicJNI.GPOptimizorInfo_pMeta_set(swigCPtr, this, SWIGTYPE_p_void.getCPtr(value));
  }

  public SWIGTYPE_p_void getPMeta() {
    long cPtr = RenascenceBasicJNI.GPOptimizorInfo_pMeta_get(swigCPtr, this);
    return (cPtr == 0) ? null : new SWIGTYPE_p_void(cPtr, false);
  }

  public void setNMaxRunTimes(int value) {
    RenascenceBasicJNI.GPOptimizorInfo_nMaxRunTimes_set(swigCPtr, this, value);
  }

  public int getNMaxRunTimes() {
    return RenascenceBasicJNI.GPOptimizorInfo_nMaxRunTimes_get(swigCPtr, this);
  }

  public void setFTargetBestValue(double value) {
    RenascenceBasicJNI.GPOptimizorInfo_fTargetBestValue_set(swigCPtr, this, value);
  }

  public double getFTargetBestValue() {
    return RenascenceBasicJNI.GPOptimizorInfo_fTargetBestValue_get(swigCPtr, this);
  }

  public void setPBestInfo(SWIGTYPE_p_GPWStream value) {
    RenascenceBasicJNI.GPOptimizorInfo_pBestInfo_set(swigCPtr, this, SWIGTYPE_p_GPWStream.getCPtr(value));
  }

  public SWIGTYPE_p_GPWStream getPBestInfo() {
    long cPtr = RenascenceBasicJNI.GPOptimizorInfo_pBestInfo_get(swigCPtr, this);
    return (cPtr == 0) ? null : new SWIGTYPE_p_GPWStream(cPtr, false);
  }

  public void setFOutputBest(double value) {
    RenascenceBasicJNI.GPOptimizorInfo_fOutputBest_set(swigCPtr, this, value);
  }

  public double getFOutputBest() {
    return RenascenceBasicJNI.GPOptimizorInfo_fOutputBest_get(swigCPtr, this);
  }

  public GPOptimizorInfo() {
    this(RenascenceBasicJNI.new_GPOptimizorInfo__SWIG_0(), true);
  }

  public GPOptimizorInfo(GPOptimizorInfo info) {
    this(RenascenceBasicJNI.new_GPOptimizorInfo__SWIG_1(GPOptimizorInfo.getCPtr(info), info), true);
  }

}
