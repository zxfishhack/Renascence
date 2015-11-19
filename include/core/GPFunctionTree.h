/******************************************************************
   Copyright 2015, Jiang Xiao-tang

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
#ifndef CORE_GPFUNCTIONTREE_H
#define CORE_GPFUNCTIONTREE_H
#include "math/GPAbstractPoint.h"
#include "GPFunctionDataBase.h"
#include "GPParameter.h"
class GPFunctionTreePoint:public GPAbstractPoint
{
public:
    GPFunctionTreePoint(const GPFunctionDataBase::function* f, int inputNumber);
    virtual ~GPFunctionTreePoint();
    inline const GPFunctionDataBase::function* function() const {return mF;}
    inline int inputNumber() const {return mInputNumber;}
    class Iter :public RefCount
    {
    public:
        Iter(){}
        virtual ~Iter(){}
        virtual GPFunctionTreePoint* vCurrent() const= 0;
        virtual bool vNext() = 0;
    };
private:
    /*mF=NULL for input node, mInputNumber = -1 for function node*/
    const GPFunctionDataBase::function* mF;
    int mInputNumber;
};

class GPFunctionTree:public RefCount
{
public:
    GPFunctionTree(GPPtr<GPFunctionTreePoint> root);
    virtual ~GPFunctionTree();

    inline GPFunctionTreePoint* root() const {return mRoot.get();}
    
    /*This kind of tree can be changed by mapStructure*/
    void addVariableSubTree(GPFunctionTreePoint* subtree);
    /*Parameters to determine neighbour structure, return the number of parameter needed, do nothing if para == null, after this API, the number of vMap returned may changed*/
    int mapStructure(GPParameter* para, bool& changed);
    
    /*Set self Parameters without change the structure, Return the number of parameter needed, do nothing if para==null, the number of vMap will not change*/
    int map(GPParameter* para);
    /*This kind of tree can be changed by map*/
    void addVariablePoint(GPFunctionTreePoint* point);
private:
    GPPtr<GPFunctionTreePoint> mRoot;
    std::vector<GPFunctionTreePoint*> mVariableSubTree;
    std::vector<GPFunctionTreePoint*> mVariablePoints;
};

#endif
