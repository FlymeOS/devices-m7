.class Lcom/htc/camera/component/AutoFocusController$10;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$10;->this$0:Lcom/htc/camera/component/AutoFocusController;

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
    .line 925
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$10;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->m_ContiAFDisableHandles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$1700(Lcom/htc/camera/component/AutoFocusController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$10;->this$0:Lcom/htc/camera/component/AutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/component/AutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    iget-object v0, p3, Lcom/htc/camera/CameraParamsSetupEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    .line 928
    if-eqz v0, :cond_0

    .line 929
    iget-object v1, p0, Lcom/htc/camera/component/AutoFocusController$10;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-virtual {v1}, Lcom/htc/camera/component/AutoFocusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v1, v2, :cond_2

    .line 930
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 934
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$10;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$2200(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set focus mode to continuous"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 937
    :cond_1
    return-void

    .line 932
    :cond_2
    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 921
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/AutoFocusController$10;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
