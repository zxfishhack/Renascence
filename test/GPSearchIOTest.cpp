#include "test/GPTest.h"
#include "core/GPProducer.h"
#include "core/GPFunctionDataBase.h"
#include "core/GPStreamFactory.h"
#include "core/GPFactory.h"
#include "head.h"
#include <iostream>
#include <fstream>
#include <sstream>
#include <utils/GPDebug.h>
using namespace std;
class GPSearchIOTest:public GPTest
{
    public:
        virtual void run()
        {
            GPPtr<GPWStream> screen = GPStreamFactory::NewWStreamFromStl(cout);
            /*Single*/
            GPFunctionDataBase* base = GPFactory::createDataBase("func.xml", NULL);
            AUTOCLEAN(base);
            {
                GPProducer* sys = GPFactory::createProducer(base);
                GPProducer& gen = *sys;
                AUTOCLEAN(sys);
                const IStatusType* ist = base->vQueryType(string("TrFilterMatrix"));
                const IStatusType* bmp = base->vQueryType("TrBmp");
                vector<const IStatusType*> out;
                out.push_back(ist);
                vector<const IStatusType*> inp(2, bmp);
                IGPAutoDefFunction* f = gen.createFunction(out, inp);
                GPContents GPinp;
                GPPtr<GPStream> input = GPStreamFactory::NewStream("input.jpg");
                GPinp.push(bmp->vLoad(input.get()), bmp);
                input = GPStreamFactory::NewStream("output.jpg");
                GPinp.push(bmp->vLoad(input.get()), bmp);
                input = NULL;
                auto _output = f->vRun(&GPinp);
                GPASSERT(_output->size()==1);
                ist->vSave(_output->get(0), screen.get());
                cout <<endl;
                delete _output;
                f->decRef();
                /*Multi*/
                auto f_mul = gen.listAllFunction(out, inp);
                GPASSERT(!f_mul.empty());
                cout <<"Multi function's size = "<< f_mul.size() << endl;
                for (int i=0; i<f_mul.size()&&i<10; ++i)
                {
                    ostringstream fileName;
                    fileName << "output/GPSearchIOTest/"<<i<<".xml";
                    auto _output2 = f_mul[i]->vRun(&GPinp);
                    GPASSERT(_output2->size()==1);
                    ist->vSave(_output2->get(0), screen.get());
                    cout << endl;
                    delete _output2;
                    GPPtr<GPWStream> output = GPStreamFactory::NewWStream(fileName.str().c_str());
                    GPPtr<GPTreeNode> n = f_mul[i]->vSave();
                    xmlReader::dumpNodes(n.get(), output.get());
                }
            }
        }
        GPSearchIOTest(){}
        virtual ~GPSearchIOTest(){}
};

static GPTestRegister<GPSearchIOTest> a("GPSearchIOTest");
