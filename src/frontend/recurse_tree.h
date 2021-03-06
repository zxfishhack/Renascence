/******************************************************************
   Copyright 2013, Jiang Xiao-tang

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
#ifndef VECTOR_POINT_TREE_H
#define VECTOR_POINT_TREE_H
#include "math/carryTree.h"
#include "utils/GPDebug.h"
#include "core/GPFunctionTree.h"
#include "frontend/GPProducerUtils.h"
class computePoint:public carryPoint
{
friend class computeSearchTree;
public:
    computePoint(const std::vector<std::vector<const GPProducerUtils::func*> >& data, const std::vector<int>& avail, const std::vector<const IStatusType*>& input, int maxSameLayer):mData(data), mAvail(avail), mCur(0), mInput(input), mLayer(maxSameLayer)
    {
    }
    const std::vector<const GPProducerUtils::func*>& getData() const
    {
        GPASSERT(mCur < mAvail.size());
        int pos = mAvail[mCur];
        size_t datasize = mData.size();
        GPASSERT(pos < datasize);
        return mData[pos];
    }
    std::vector<int> filter(const std::vector<std::vector<const GPProducerUtils::func*> >& combo, const std::vector<const GPProducerUtils::func*>& output);
    
    std::vector<GPFunctionTreePoint*> outputs(int& cur);
protected:
    virtual bool vGrow();
    std::vector<const GPProducerUtils::func*> getDependOutput();
    virtual bool vNext()
    {
        mCur++;
        bool res = true;
        if (mCur >= mAvail.size())
        {
            res = false;
            mCur = (int)(mAvail.size()) - 1;
        }
        return res;
    }
private:
    const std::vector<const IStatusType*>& mInput;
    const std::vector<std::vector<const GPProducerUtils::func*> >& mData;
    std::vector<int> mAvail;
    int mCur;
    int mParent;
    int mLayer;
};


class computeSearchTree:public carryTree<std::vector<GPFunctionTreePoint*> >
{
public:
    computeSearchTree(computePoint* point){mRoot = point;}
    virtual std::vector<GPFunctionTreePoint*> output() override;
    virtual bool readyToOutput() override;
};

#endif
