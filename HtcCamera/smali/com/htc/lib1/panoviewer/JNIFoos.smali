.class public Lcom/htc/lib1/panoviewer/JNIFoos;
.super Ljava/lang/Object;
.source "JNIFoos.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "bv_panodata_hdk_v6"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native checkPano(Ljava/io/FileDescriptor;)I
.end method

.method public native getRoiRect(Ljava/io/FileDescriptor;[I)I
.end method

.method public native getThumb(Ljava/io/FileDescriptor;IILandroid/graphics/Bitmap;[I)I
.end method

.method public native getXmpInfo(Ljava/io/FileDescriptor;[I)I
.end method

.method public native onCommand(III)V
.end method

.method public native setFd(Ljava/io/FileDescriptor;)I
.end method
