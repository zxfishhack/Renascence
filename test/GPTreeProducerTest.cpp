#include "test/GPTest.h"
#include "core/GPFunctionDataBase.h"
#include "core/GPProducer.h"
#include "core/GPFactory.h"
#include "core/GPStreamFactory.h"
using namespace std;
class GPTreeProducerTest:public GPTest
{
    public:
        virtual void run();
        GPTreeProducerTest(){}
        virtual ~GPTreeProducerTest(){}
};
void GPTreeProducerTest::run()
{
    GPPtr<GPFunctionDataBase> base = GPFactory::createDataBase("func.xml", NULL);
    {
        GPProducer* sys = GPFactory::createProducer(base.get());
        AUTOCLEAN(sys);
        const IStatusType* bmp = base->vQueryType(string("TrBmp"));
        /*Construct compose function*/
        vector<IGPAutoDefFunction*> funcs;
        vector<const IStatusType*> input(3, bmp);
        vector<const IStatusType*> output(1, bmp);
        auto fs = sys->listAllFunction(output, input);
        GPASSERT(fs.size()>0);
        GPContents inp;
        GPPtr<GPStream> inputStream = GPStreamFactory::NewStream("input.jpg");
        inp.push(bmp->vLoad(inputStream.get()), bmp);
        inputStream = GPStreamFactory::NewStream("input_sharp.jpg");
        inp.push(bmp->vLoad(inputStream.get()), bmp);
        inputStream = GPStreamFactory::NewStream("input_test_simple.jpg");
        inp.push(bmp->vLoad(inputStream.get()), bmp);
        std::vector<const IStatusType*> temp_inputs(2, bmp);
        IGPAutoDefFunction* fit = sys->createFunction("FIT(x0, x1)", temp_inputs);
        
        GPContents targetBitmap;
        inputStream = GPStreamFactory::NewStream("input_test_simple.jpg");
        targetBitmap.push(bmp->vLoad(inputStream.get()), bmp);
        inputStream = NULL;
        int sum = 0;
        for (auto f : fs)
        {
            auto bmpoutput = f->vRun(&inp);
            bmpoutput->merge(targetBitmap);
            auto fitoutput = fit->vRun(bmpoutput);
            double* __fit = (double*)fitoutput->get(0);
            FUNC_PRINT_ALL(*__fit, f);
            delete bmpoutput;
            sum++;
            if (sum >=10)
            {
                break;
            }
        }
    }
}

static GPTestRegister<GPTreeProducerTest> a("GPTreeProducerTest");
