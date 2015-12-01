.class Lcom/htc/camera/effect/VideoSceneController$3;
.super Ljava/lang/Object;
.source "VideoSceneController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CameraParamsSetupEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/VideoSceneController;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/VideoSceneController;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/camera/effect/VideoSceneController$3;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CameraParamsSetupEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$3;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$100(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$3;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # invokes: Lcom/htc/camera/effect/VideoSceneController;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$200(Lcom/htc/camera/effect/VideoSceneController;)Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$3;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    iget-object v1, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    # invokes: Lcom/htc/camera/effect/VideoSceneController;->setupParamsBeforeStartingPreview(Lcom/htc/camera/CameraController;)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/VideoSceneController;->access$300(Lcom/htc/camera/effect/VideoSceneController;Lcom/htc/camera/CameraController;)V

    .line 140
    :goto_0
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 141
    return-void

    .line 136
    :cond_0
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    const-string v1, "video-hdr"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    const-string v1, "video-mode"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController$3;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/VideoSceneController;->access$400(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preparingParamsBeforePreviewStartEvent in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/VideoSceneController$3;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # invokes: Lcom/htc/camera/effect/VideoSceneController;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v2}, Lcom/htc/camera/effect/VideoSceneController;->access$500(Lcom/htc/camera/effect/VideoSceneController;)Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode, m_Scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/effect/VideoSceneController$3;->this$0:Lcom/htc/camera/effect/VideoSceneController;

    # getter for: Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/effect/VideoSceneController;->access$100(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 126
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/effect/VideoSceneController$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
