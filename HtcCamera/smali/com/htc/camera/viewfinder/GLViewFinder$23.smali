.class Lcom/htc/camera/viewfinder/GLViewFinder$23;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$23;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$23;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onDrawGLSurfaceView(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v0, p1}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4600(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1475
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$23;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onGLSurfaceViewChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4500(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1469
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$23;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # invokes: Lcom/htc/camera/viewfinder/GLViewFinder;->onGLSurfaceViewCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    invoke-static {v0, p1, p2}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$4400(Lcom/htc/camera/viewfinder/GLViewFinder;Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1463
    return-void
.end method
