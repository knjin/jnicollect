//
// Created by Jing on 17/2/18.
//

/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
#include <string.h>

/* Header for class com_knjin_testjni_JniTest */



/*
 * Class:     com_knjin_testjni_JniTest
 * Method:    stringFromJNI
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_knjin_testjni_JniTest_stringFromJNI
  (JNIEnv *env, jobject thiz){
    return (*env)->NewStringUTF(env, "你好jni");

  }
