/******************************************************************
   Copyright 2016, Jiang Xiao-tang

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
#include "MGPThread.h"
#include <semaphore.h>
#include <pthread.h>
#include <assert.h>

struct TData
{
    pthread_t id;
    MGPSema* lock;
};

bool MGPThread::platform_create()
{
    TData* data = new TData;
    if (mLoop)
    {
        data->lock = new MGPSema;
    }
    mData = (void*)data;
    pthread_create(&(data->id), NULL, MGPThread::threadLoop, this);
    return true;
}

bool MGPThread::platform_wake()
{
    assert(NULL!=mData);
    TData* data = (TData*)mData;
    data->lock->post();
    return true;
}

bool MGPThread::platform_destroy()
{
    assert(NULL!=mData);
    TData* data = (TData*)mData;
    if (mLoop)
    {
        delete data->lock;
    }
    delete data;
    mData = NULL;
    return true;
}

bool MGPThread::platform_join()
{
    assert(NULL!=mData);
    TData* data = (TData*)mData;
    pthread_join(data->id, NULL);
    return true;
}

void MGPThread::platform_wait()
{
    assert(NULL!=mData);
    TData* data = (TData*)mData;
    data->lock->wait();
}

class SemaData
{
public:
    SemaData()
    {
        pthread_mutex_init(&mMutex, NULL);
        pthread_cond_init(&mCondition, NULL);
        mNum = 0;
    }
    ~SemaData()
    {
        pthread_cond_destroy(&mCondition);
        pthread_mutex_destroy(&mMutex);
    }
    
    void wait()
    {
        pthread_mutex_lock(&mMutex);
        mNum--;
        while (0 > mNum)
        {
            pthread_cond_wait(&mCondition, &mMutex);
        }
        pthread_mutex_unlock(&mMutex);
    }
    
    void post()
    {
        pthread_mutex_lock(&mMutex);
        mNum++;
        pthread_mutex_unlock(&mMutex);
        
        pthread_cond_signal(&mCondition);
    }
private:
    pthread_mutex_t mMutex;
    pthread_cond_t mCondition;
    int mNum;
};

MGPSema::MGPSema()
{
    SemaData* s = new SemaData;
    mData = (void*)s;
}

MGPSema::~MGPSema()
{
    assert(NULL!=mData);
    SemaData* s = (SemaData*)(mData);
    delete s;
}

void MGPSema::wait()
{
    assert(NULL!=mData);
    SemaData* s = (SemaData*)(mData);
    s->wait();
}

void MGPSema::post()
{
    assert(NULL!=mData);
    SemaData* s = (SemaData*)(mData);
    s->post();
}

MGPMutex::MGPMutex()
{
    pthread_mutex_t* m = new pthread_mutex_t;
    pthread_mutex_init(m, NULL);
    mData = (void*)m;
}

MGPMutex::~MGPMutex()
{
    assert(NULL!=mData);
    pthread_mutex_t* m = (pthread_mutex_t*)mData;
    pthread_mutex_destroy(m);
    delete m;
}

void MGPMutex::lock()
{
    assert(NULL!=mData);
    pthread_mutex_lock((pthread_mutex_t*)mData);
}

void MGPMutex::unlock()
{
    assert(NULL!=mData);
    pthread_mutex_unlock((pthread_mutex_t*)mData);
}