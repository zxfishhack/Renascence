/******************************************************************
 Copyright 2014, Jiang Xiao-tang
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 ******************************************************************/
#ifndef CORE_GPFACTORY_H
#define CORE_GPFACTORY_H
class GPProducer;
#include "GPFunctionDataBase.h"
class IFunctionTable;
#include <istream>
class GPFactory
{
public:
    typedef enum
    {
        TREE,
        GRAPHIC,
        UNKNOWN
    }TYPE;
    static GPProducer* createProducer(const GPFunctionDataBase* base, TYPE t = TREE);
    static GPFunctionDataBase* createDataBase(const char* metafile, IFunctionTable* t);
    static GPFunctionDataBase* createDataBase(std::istream& metafile, IFunctionTable* t);
};
#endif
