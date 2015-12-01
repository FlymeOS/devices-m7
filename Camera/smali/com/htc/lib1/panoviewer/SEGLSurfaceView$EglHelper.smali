.class Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "SEGLSurfaceView.java"


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 922
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 928
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 929
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$500(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$500(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 936
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_2

    .line 937
    :cond_1
    const-string v0, "createWindowSurface"

    invoke-direct {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 945
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 948
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 949
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLWrapper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$600(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 950
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mGLWrapper:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$600(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 953
    :cond_4
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mDebugFlags:I
    invoke-static {v1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$700(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_7

    .line 954
    const/4 v1, 0x0

    .line 955
    const/4 v2, 0x0

    .line 956
    iget-object v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$700(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 957
    const/4 v1, 0x1

    .line 959
    :cond_5
    iget-object v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$700(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 960
    new-instance v2, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;

    invoke-direct {v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$LogWriter;-><init>()V

    .line 962
    :cond_6
    invoke-static {v0, v1, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 964
    :cond_7
    return-object v0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 984
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 985
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 986
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$500(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 989
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 992
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 994
    iput-object v4, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 998
    iput-object v4, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1000
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 881
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 886
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 888
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 889
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 896
    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 897
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLConfigChooser:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$300(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 905
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextFactory:Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$400(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 906
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    .line 907
    :cond_2
    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 910
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 911
    return-void
.end method

.method public swap()Z
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 980
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verifyContext()Z
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 1009
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
