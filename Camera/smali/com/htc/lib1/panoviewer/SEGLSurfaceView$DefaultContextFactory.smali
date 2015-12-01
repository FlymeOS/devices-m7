.class Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "SEGLSurfaceView.java"

# interfaces
.implements Lcom/htc/lib1/panoviewer/SEGLSurfaceView$EGLContextFactory;


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)V
    .locals 1

    .prologue
    .line 682
    iput-object p1, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    const/16 v0, 0x3098

    iput v0, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;Lcom/htc/lib1/panoviewer/SEGLSurfaceView$1;)V
    .locals 0

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;-><init>(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .prologue
    .line 686
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$200(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 688
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/htc/lib1/panoviewer/SEGLSurfaceView$DefaultContextFactory;->this$0:Lcom/htc/lib1/panoviewer/SEGLSurfaceView;

    # getter for: Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/htc/lib1/panoviewer/SEGLSurfaceView;->access$200(Lcom/htc/lib1/panoviewer/SEGLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 693
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 694
    return-void
.end method
