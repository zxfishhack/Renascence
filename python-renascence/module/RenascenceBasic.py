# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.7
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.





from sys import version_info
if version_info >= (2, 6, 0):
    def swig_import_helper():
        from os.path import dirname
        import imp
        fp = None
        try:
            fp, pathname, description = imp.find_module('_RenascenceBasic', [dirname(__file__)])
        except ImportError:
            import _RenascenceBasic
            return _RenascenceBasic
        if fp is not None:
            try:
                _mod = imp.load_module('_RenascenceBasic', fp, pathname, description)
            finally:
                fp.close()
            return _mod
    _RenascenceBasic = swig_import_helper()
    del swig_import_helper
else:
    import _RenascenceBasic
del version_info
try:
    _swig_property = property
except NameError:
    pass  # Python < 2.2 doesn't have 'property'.


def _swig_setattr_nondynamic(self, class_type, name, value, static=1):
    if (name == "thisown"):
        return self.this.own(value)
    if (name == "this"):
        if type(value).__name__ == 'SwigPyObject':
            self.__dict__[name] = value
            return
    method = class_type.__swig_setmethods__.get(name, None)
    if method:
        return method(self, value)
    if (not static):
        if _newclass:
            object.__setattr__(self, name, value)
        else:
            self.__dict__[name] = value
    else:
        raise AttributeError("You cannot add attributes to %s" % self)


def _swig_setattr(self, class_type, name, value):
    return _swig_setattr_nondynamic(self, class_type, name, value, 0)


def _swig_getattr_nondynamic(self, class_type, name, static=1):
    if (name == "thisown"):
        return self.this.own()
    method = class_type.__swig_getmethods__.get(name, None)
    if method:
        return method(self)
    if (not static):
        return object.__getattr__(self, name)
    else:
        raise AttributeError(name)

def _swig_getattr(self, class_type, name):
    return _swig_getattr_nondynamic(self, class_type, name, 0)


def _swig_repr(self):
    try:
        strthis = "proxy of " + self.this.__repr__()
    except:
        strthis = ""
    return "<%s.%s; %s >" % (self.__class__.__module__, self.__class__.__name__, strthis,)

try:
    _object = object
    _newclass = 1
except AttributeError:
    class _object:
        pass
    _newclass = 0



def GP_Set_Lib_Path(basic_path):
    return _RenascenceBasic.GP_Set_Lib_Path(basic_path)
GP_Set_Lib_Path = _RenascenceBasic.GP_Set_Lib_Path

def GP_Set_Stream_Path(basic_path):
    return _RenascenceBasic.GP_Set_Stream_Path(basic_path)
GP_Set_Stream_Path = _RenascenceBasic.GP_Set_Stream_Path

def GP_Stream_Create(filename):
    return _RenascenceBasic.GP_Stream_Create(filename)
GP_Stream_Create = _RenascenceBasic.GP_Stream_Create

def GP_Stream_Destroy(s):
    return _RenascenceBasic.GP_Stream_Destroy(s)
GP_Stream_Destroy = _RenascenceBasic.GP_Stream_Destroy

def GP_WStream_Create(filename):
    return _RenascenceBasic.GP_WStream_Create(filename)
GP_WStream_Create = _RenascenceBasic.GP_WStream_Create

def GP_WStream_Destroy(s):
    return _RenascenceBasic.GP_WStream_Destroy(s)
GP_WStream_Destroy = _RenascenceBasic.GP_WStream_Destroy

def GP_Contents_Load(producer, inputs, typeNames, n):
    return _RenascenceBasic.GP_Contents_Load(producer, inputs, typeNames, n)
GP_Contents_Load = _RenascenceBasic.GP_Contents_Load

def GP_Contents_Size(contents):
    return _RenascenceBasic.GP_Contents_Size(contents)
GP_Contents_Size = _RenascenceBasic.GP_Contents_Size

def GP_Contents_Get(contents, n):
    return _RenascenceBasic.GP_Contents_Get(contents, n)
GP_Contents_Get = _RenascenceBasic.GP_Contents_Get

def GP_Contents_GetDouble(contents, n):
    return _RenascenceBasic.GP_Contents_GetDouble(contents, n)
GP_Contents_GetDouble = _RenascenceBasic.GP_Contents_GetDouble

def GP_Contents_SetDouble(contents, value, n):
    return _RenascenceBasic.GP_Contents_SetDouble(contents, value, n)
GP_Contents_SetDouble = _RenascenceBasic.GP_Contents_SetDouble

def GP_Contents_Save(content, outputs, n):
    return _RenascenceBasic.GP_Contents_Save(content, outputs, n)
GP_Contents_Save = _RenascenceBasic.GP_Contents_Save

def GP_Contents_Destroy(content):
    return _RenascenceBasic.GP_Contents_Destroy(content)
GP_Contents_Destroy = _RenascenceBasic.GP_Contents_Destroy

def GP_Contents_CreateCollector():
    return _RenascenceBasic.GP_Contents_CreateCollector()
GP_Contents_CreateCollector = _RenascenceBasic.GP_Contents_CreateCollector

def GP_Contents_Collect(Collector, B, n):
    return _RenascenceBasic.GP_Contents_Collect(Collector, B, n)
GP_Contents_Collect = _RenascenceBasic.GP_Contents_Collect

def GP_Producer_Create(metaStream, table, n, type):
    return _RenascenceBasic.GP_Producer_Create(metaStream, table, n, type)
GP_Producer_Create = _RenascenceBasic.GP_Producer_Create

def GP_Producer_Destroy(p):
    return _RenascenceBasic.GP_Producer_Destroy(p)
GP_Producer_Destroy = _RenascenceBasic.GP_Producer_Destroy
class GPOptimizorInfo(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, GPOptimizorInfo, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, GPOptimizorInfo, name)
    __repr__ = _swig_repr
    __swig_setmethods__["nMaxADFDepth"] = _RenascenceBasic.GPOptimizorInfo_nMaxADFDepth_set
    __swig_getmethods__["nMaxADFDepth"] = _RenascenceBasic.GPOptimizorInfo_nMaxADFDepth_get
    if _newclass:
        nMaxADFDepth = _swig_property(_RenascenceBasic.GPOptimizorInfo_nMaxADFDepth_get, _RenascenceBasic.GPOptimizorInfo_nMaxADFDepth_set)
    __swig_setmethods__["nOptimizeType"] = _RenascenceBasic.GPOptimizorInfo_nOptimizeType_set
    __swig_getmethods__["nOptimizeType"] = _RenascenceBasic.GPOptimizorInfo_nOptimizeType_get
    if _newclass:
        nOptimizeType = _swig_property(_RenascenceBasic.GPOptimizorInfo_nOptimizeType_get, _RenascenceBasic.GPOptimizorInfo_nOptimizeType_set)
    __swig_setmethods__["pFitComputeFunction"] = _RenascenceBasic.GPOptimizorInfo_pFitComputeFunction_set
    __swig_getmethods__["pFitComputeFunction"] = _RenascenceBasic.GPOptimizorInfo_pFitComputeFunction_get
    if _newclass:
        pFitComputeFunction = _swig_property(_RenascenceBasic.GPOptimizorInfo_pFitComputeFunction_get, _RenascenceBasic.GPOptimizorInfo_pFitComputeFunction_set)
    __swig_setmethods__["pMeta"] = _RenascenceBasic.GPOptimizorInfo_pMeta_set
    __swig_getmethods__["pMeta"] = _RenascenceBasic.GPOptimizorInfo_pMeta_get
    if _newclass:
        pMeta = _swig_property(_RenascenceBasic.GPOptimizorInfo_pMeta_get, _RenascenceBasic.GPOptimizorInfo_pMeta_set)
    __swig_setmethods__["nMaxRunTimes"] = _RenascenceBasic.GPOptimizorInfo_nMaxRunTimes_set
    __swig_getmethods__["nMaxRunTimes"] = _RenascenceBasic.GPOptimizorInfo_nMaxRunTimes_get
    if _newclass:
        nMaxRunTimes = _swig_property(_RenascenceBasic.GPOptimizorInfo_nMaxRunTimes_get, _RenascenceBasic.GPOptimizorInfo_nMaxRunTimes_set)

    def __init__(self):
        this = _RenascenceBasic.new_GPOptimizorInfo()
        try:
            self.this.append(this)
        except:
            self.this = this
    __swig_destroy__ = _RenascenceBasic.delete_GPOptimizorInfo
    __del__ = lambda self: None
GPOptimizorInfo_swigregister = _RenascenceBasic.GPOptimizorInfo_swigregister
GPOptimizorInfo_swigregister(GPOptimizorInfo)


def GP_Function_Create_ByType(p, outputTypes, inputTypes, pInfo):
    return _RenascenceBasic.GP_Function_Create_ByType(p, outputTypes, inputTypes, pInfo)
GP_Function_Create_ByType = _RenascenceBasic.GP_Function_Create_ByType

def GP_Function_Create_ByFormula(p, formula, inputType, pInfo):
    return _RenascenceBasic.GP_Function_Create_ByFormula(p, formula, inputType, pInfo)
GP_Function_Create_ByFormula = _RenascenceBasic.GP_Function_Create_ByFormula

def GP_Function_Run(f, input):
    return _RenascenceBasic.GP_Function_Run(f, input)
GP_Function_Run = _RenascenceBasic.GP_Function_Run

def GP_Function_Destroy(f):
    return _RenascenceBasic.GP_Function_Destroy(f)
GP_Function_Destroy = _RenascenceBasic.GP_Function_Destroy

def GP_Function_Create_ByStream(p, xmlFile):
    return _RenascenceBasic.GP_Function_Create_ByStream(p, xmlFile)
GP_Function_Create_ByStream = _RenascenceBasic.GP_Function_Create_ByStream

def GP_Function_Save(f, output):
    return _RenascenceBasic.GP_Function_Save(f, output)
GP_Function_Save = _RenascenceBasic.GP_Function_Save

def GP_Function_Optimize(f, pInfo):
    return _RenascenceBasic.GP_Function_Optimize(f, pInfo)
GP_Function_Optimize = _RenascenceBasic.GP_Function_Optimize

def GP_Streams_Malloc(n):
    return _RenascenceBasic.GP_Streams_Malloc(n)
GP_Streams_Malloc = _RenascenceBasic.GP_Streams_Malloc

def GP_Streams_Free(streams):
    return _RenascenceBasic.GP_Streams_Free(streams)
GP_Streams_Free = _RenascenceBasic.GP_Streams_Free

def GP_Streams_Get(streams, n):
    return _RenascenceBasic.GP_Streams_Get(streams, n)
GP_Streams_Get = _RenascenceBasic.GP_Streams_Get

def GP_Streams_Set(streams, contents, n):
    return _RenascenceBasic.GP_Streams_Set(streams, contents, n)
GP_Streams_Set = _RenascenceBasic.GP_Streams_Set

def GP_Strings_Number(strings):
    return _RenascenceBasic.GP_Strings_Number(strings)
GP_Strings_Number = _RenascenceBasic.GP_Strings_Number

def GP_Strings_Get(strings, n):
    return _RenascenceBasic.GP_Strings_Get(strings, n)
GP_Strings_Get = _RenascenceBasic.GP_Strings_Get

def GP_Strings_Free(strings):
    return _RenascenceBasic.GP_Strings_Free(strings)
GP_Strings_Free = _RenascenceBasic.GP_Strings_Free

def GP_Function_GetFormula(f, name):
    return _RenascenceBasic.GP_Function_GetFormula(f, name)
GP_Function_GetFormula = _RenascenceBasic.GP_Function_GetFormula

def GP_Function_GetParameters(f):
    return _RenascenceBasic.GP_Function_GetParameters(f)
GP_Function_GetParameters = _RenascenceBasic.GP_Function_GetParameters

def GP_Producer_ListFunctions(producer):
    return _RenascenceBasic.GP_Producer_ListFunctions(producer)
GP_Producer_ListFunctions = _RenascenceBasic.GP_Producer_ListFunctions

def GP_Producer_ListTypes(producer):
    return _RenascenceBasic.GP_Producer_ListTypes(producer)
GP_Producer_ListTypes = _RenascenceBasic.GP_Producer_ListTypes

def GP_Contents_Types(contents):
    return _RenascenceBasic.GP_Contents_Types(contents)
GP_Contents_Types = _RenascenceBasic.GP_Contents_Types

_RenascenceBasic.GP_OPTIMIZOR_VALUE_swigconstant(_RenascenceBasic)
GP_OPTIMIZOR_VALUE = _RenascenceBasic.GP_OPTIMIZOR_VALUE

_RenascenceBasic.GP_OPTIMIZOR_TIME_swigconstant(_RenascenceBasic)
GP_OPTIMIZOR_TIME = _RenascenceBasic.GP_OPTIMIZOR_TIME

def GP_OptimzorInfo_CreateTemplate(depth, maxtimes, type, pInput):
    return _RenascenceBasic.GP_OptimzorInfo_CreateTemplate(depth, maxtimes, type, pInput)
GP_OptimzorInfo_CreateTemplate = _RenascenceBasic.GP_OptimzorInfo_CreateTemplate

def GP_OptimzorInfo_FreeTemplate(pInfo):
    return _RenascenceBasic.GP_OptimzorInfo_FreeTemplate(pInfo)
GP_OptimzorInfo_FreeTemplate = _RenascenceBasic.GP_OptimzorInfo_FreeTemplate

def GP_Contents_CreateDouble(value):
    return _RenascenceBasic.GP_Contents_CreateDouble(value)
GP_Contents_CreateDouble = _RenascenceBasic.GP_Contents_CreateDouble
# This file is compatible with both classic and new-style classes.


