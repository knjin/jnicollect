#include "bar.h"
#include <jni.h>

#ifndef _Included_com_knjin_testjni_JniTest
#define _Included_com_knjin_testjni_JniTest
#ifndef __cplusplus
#endif
JNIEXPORT jint JNICALL Java_com_knjin_testjni_JniTest_something
  (JNIEnv *env, jobject thiz){
    return bar(42);
  }

  #ifndef __cplusplus
#endif
#endif
