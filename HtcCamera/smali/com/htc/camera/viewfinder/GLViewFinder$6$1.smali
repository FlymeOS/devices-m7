.class Lcom/htc/camera/viewfinder/GLViewFinder$6$1;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/viewfinder/GLViewFinder$6;

.field final synthetic val$context:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder$6;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6$1;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$6;

    iput-object p2, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6$1;->val$context:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6$1;->this$1:Lcom/htc/camera/viewfinder/GLViewFinder$6;

    iget-object v0, v0, Lcom/htc/camera/viewfinder/GLViewFinder$6;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    iget-object v1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$6$1;->val$context:Ljavax/microedition/khronos/egl/EGLContext;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onSharedEGLContextCreated(Ljavax/microedition/khronos/egl/EGLContext;)V
    invoke-static {v0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$2100(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 325
    return-void
.end method
