.class public Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;
.source "SEGLSurfaceView.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Z)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 858
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    .line 859
    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;IIIIII)V

    .line 860
    iput v8, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    .line 861
    iput v8, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 862
    iput v8, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    .line 863
    return-void

    :cond_0
    move v6, v5

    .line 859
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    .prologue
    .line 857
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    .prologue
    .line 857
    invoke-super {p0, p1, p2, p3}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$ComponentSizeChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method
