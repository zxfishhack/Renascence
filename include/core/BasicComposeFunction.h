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
#ifndef CORE_BASICCOMPOSEFUNCTION_H
#define CORE_BASICCOMPOSEFUNCTION_H
#include "IGPAutoDefFunction.h"
#include <vector>
class IBoolADF:public RefCount
{
    public:
        virtual bool value(const GP_Input& inputs) = 0;
        IBoolADF(){}
        virtual ~IBoolADF(){}
};
class GPBoolADF:public IBoolADF
{
    public:
        virtual bool value(const GP_Input& inputs);
        GPBoolADF(IGPAutoDefFunction* gp);
        virtual ~GPBoolADF();
        inline IGPAutoDefFunction* get() const {return mGP;}
    private:
        IGPAutoDefFunction* mGP;
};
/*f(x) = f1(x1) U f2(x2) U f3(x3) U ... U fn(xn), x = x1 U x2 U x3 U ... U xn*/
class GPCombineADF:public IGPAutoDefFunction
{
    public:
        GPCombineADF(std::vector<IGPAutoDefFunction*> funcs);
        virtual GP_Output run(const GP_Input& inputs);
        virtual void save(std::ostream& os);
        virtual void load(std::istream& is);
        virtual void mutate();
        virtual ~GPCombineADF();
        virtual int inputNumber() const;
        virtual int outputNumber() const;
    private:
        std::vector<IGPAutoDefFunction*> mFunctions;
};
/*f(x) = s(x1) ? a(x2) : b(x3), x = x1 U x2 U x3*/
class GPSwitchADF:public IGPAutoDefFunction
{
    public:
        GPSwitchADF(IGPAutoDefFunction* _s, IGPAutoDefFunction* _a, IGPAutoDefFunction* _b);
        GPSwitchADF(GPBoolADF* _s, IGPAutoDefFunction* _a, IGPAutoDefFunction* _b);
        virtual ~GPSwitchADF();
        virtual GP_Output run(const GP_Input& inputs);
        virtual void save(std::ostream& os);
        virtual void load(std::istream& is);
        virtual void mutate();
    
        virtual int inputNumber() const;
        virtual int outputNumber() const;
    private:
        IGPAutoDefFunction* a;
        IGPAutoDefFunction* b;
        GPBoolADF* s;
};
#endif