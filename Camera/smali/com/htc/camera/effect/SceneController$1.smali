.class Lcom/htc/camera/effect/SceneController$1;
.super Ljava/lang/Object;
.source "SceneController.java"

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
.field final synthetic this$0:Lcom/htc/camera/effect/SceneController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/SceneController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/camera/effect/SceneController$1;->this$0:Lcom/htc/camera/effect/SceneController;

    iput-object p2, p0, Lcom/htc/camera/effect/SceneController$1;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V
    .locals 2
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
    .line 83
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController$1;->this$0:Lcom/htc/camera/effect/SceneController;

    # getter for: Lcom/htc/camera/effect/SceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/SceneController;->access$000(Lcom/htc/camera/effect/SceneController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/SceneController$1;->this$0:Lcom/htc/camera/effect/SceneController;

    # getter for: Lcom/htc/camera/effect/SceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/effect/SceneController;->access$000(Lcom/htc/camera/effect/SceneController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/camera/effect/SceneController$1;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    iget-object v1, p0, Lcom/htc/camera/effect/SceneController$1;->this$0:Lcom/htc/camera/effect/SceneController;

    # getter for: Lcom/htc/camera/effect/SceneController;->m_Scene:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/effect/SceneController;->access$000(Lcom/htc/camera/effect/SceneController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 78
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/effect/SceneController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
