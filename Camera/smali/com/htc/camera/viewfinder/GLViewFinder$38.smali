.class Lcom/htc/camera/viewfinder/GLViewFinder$38;
.super Ljava/lang/Object;
.source "GLViewFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/viewfinder/GLViewFinder;


# direct methods
.method constructor <init>(Lcom/htc/camera/viewfinder/GLViewFinder;)V
    .locals 0

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    # getter for: Lcom/htc/camera/viewfinder/GLViewFinder;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->access$7100(Lcom/htc/camera/viewfinder/GLViewFinder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCameraThreadRunning() - Setup event handlers in camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Lcom/htc/camera/viewfinder/GLViewFinder$38;->this$0:Lcom/htc/camera/viewfinder/GLViewFinder;

    invoke-virtual {v0}, Lcom/htc/camera/viewfinder/GLViewFinder;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 1810
    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$38$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$38$1;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder$38;)V

    .line 1817
    iget-object v2, v0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/viewfinder/GLViewFinder$38$2;

    invoke-direct {v3, p0, v1}, Lcom/htc/camera/viewfinder/GLViewFinder$38$2;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder$38;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1827
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewSize:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/viewfinder/GLViewFinder$38$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/viewfinder/GLViewFinder$38$3;-><init>(Lcom/htc/camera/viewfinder/GLViewFinder$38;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1841
    return-void
.end method
