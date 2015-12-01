.class Lcom/htc/camera/viewfinder/GLViewFinder$5;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$5;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$5;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->ARGB_CONFIG_ATTRS:[I
    invoke-static {}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$500()[I

    move-result-object v1

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->createEGLConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v0, p1, p2, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$600(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to setup EGL configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
