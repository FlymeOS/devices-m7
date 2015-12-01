.class Lcom/htc/camera/zoe/ZoeController$7;
.super Ljava/lang/Object;
.source "ZoeController.java"

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
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$7;->this$0:Lcom/htc/camera/zoe/ZoeController;

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
    .line 1177
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$7;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$7;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1500(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$7;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$1600(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$7;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v1, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->setupParamsBeforeStartingPreview(Lcom/htc/camera/CameraController;)V
    invoke-static {v0, v1}, Lcom/htc/camera/zoe/ZoeController;->access$1700(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraController;)V

    .line 1180
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 1182
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1173
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/zoe/ZoeController$7;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
