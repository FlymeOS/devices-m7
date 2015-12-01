.class abstract Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "SEGLSurfaceView.java"

# interfaces
.implements Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;[I)V
    .locals 1

    .prologue
    .line 742
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    invoke-direct {p0, p2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    .line 744
    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 775
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$200(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 787
    :goto_0
    return-object p1

    .line 781
    :cond_0
    array-length v1, p1

    .line 782
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    .line 783
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x3040

    aput v3, v0, v2

    .line 785
    const/4 v2, 0x4

    aput v2, v0, v1

    .line 786
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3038

    aput v2, v0, v1

    move-object p1, v0

    .line 787
    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 747
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 748
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    aget v4, v5, v4

    .line 755
    if-gtz v4, :cond_1

    .line 756
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 760
    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 761
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 764
    if-nez v0, :cond_3

    .line 765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_3
    return-object v0
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
