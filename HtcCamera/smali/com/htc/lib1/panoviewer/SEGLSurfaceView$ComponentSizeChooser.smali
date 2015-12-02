.class Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;
.super Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;
.source "SEGLSurfaceView.java"


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field final synthetic this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;IIIIII)V
    .locals 3

    .prologue
    .line 811
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    .line 812
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;[I)V

    .line 821
    iput p2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 822
    iput p3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 823
    iput p4, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 824
    iput p5, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 825
    iput p6, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 826
    iput p7, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 827
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    .prologue
    .line 803
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 804
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    const/4 v1, 0x0

    aget p5, v0, v1

    .line 807
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 14

    .prologue
    .line 831
    const/4 v8, 0x0

    .line 832
    const v7, 0x186a0

    .line 833
    move-object/from16 v0, p3

    array-length v10, v0

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v4, p3, v9

    .line 834
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 835
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    .line 836
    iget v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt v11, v2, :cond_1

    iget v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt v1, v2, :cond_1

    .line 837
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mRedSize:I

    sub-int v11, v1, v2

    .line 838
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    sub-int v12, v1, v2

    .line 839
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    sub-int v13, v1, v2

    .line 840
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    sub-int/2addr v1, v2

    .line 841
    mul-int v2, v11, v11

    mul-int v3, v12, v12

    add-int/2addr v2, v3

    mul-int v3, v13, v13

    add-int/2addr v2, v3

    mul-int/2addr v1, v1

    add-int/2addr v1, v2

    .line 842
    if-ge v1, v7, :cond_1

    .line 833
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move v7, v1

    move-object v8, v4

    goto :goto_0

    .line 848
    :cond_0
    return-object v8

    :cond_1
    move v1, v7

    move-object v4, v8

    goto :goto_1
.end method
