.class Lcom/htc/camera/component/AudioResourceRestricController$4;
.super Ljava/lang/Object;
.source "AudioResourceRestricController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AudioResourceRestricController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioResourceRestricController;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/camera/component/AudioResourceRestricController$4;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$4;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    # getter for: Lcom/htc/camera/component/AudioResourceRestricController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AudioResourceRestricController;->access$200(Lcom/htc/camera/component/AudioResourceRestricController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCameraThreadRunning() - Setup event handlers in camera thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$4;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    invoke-virtual {v0}, Lcom/htc/camera/component/AudioResourceRestricController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 153
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/AudioResourceRestricController$4$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AudioResourceRestricController$4$1;-><init>(Lcom/htc/camera/component/AudioResourceRestricController$4;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 165
    return-void
.end method
