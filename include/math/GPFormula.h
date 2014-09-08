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
#ifndef MATH_GPFORMULA_H
#define MATH_GPFORMULA_H
#include <vector>
#include <string>
class GPFormula
{
    public:
        GPFormula(const std::string& formula);
        ~GPFormula();
        static void analysis(std::vector<int>& func, std::vector<int>& number, const std::string& formula);
        inline const std::vector<int>& get() const {return mQueue;}
    private:
        std::vector<int> mQueue;
};
#endif
