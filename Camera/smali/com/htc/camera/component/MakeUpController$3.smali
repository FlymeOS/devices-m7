.class Lcom/htc/camera/component/MakeUpController$3;
.super Ljava/lang/Object;
.source "MakeUpController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/MakeUpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/MakeUpController;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController$3;->this$0:Lcom/htc/camera/component/MakeUpController;

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
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$3;->this$0:Lcom/htc/camera/component/MakeUpController;

    # getter for: Lcom/htc/camera/component/MakeUpController;->m_NeedToSetParams:Z
    invoke-static {v0}, Lcom/htc/camera/component/MakeUpController;->access$000(Lcom/htc/camera/component/MakeUpController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$3;->this$0:Lcom/htc/camera/component/MakeUpController;

    # getter for: Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/MakeUpController;->access$100(Lcom/htc/camera/component/MakeUpController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set parameters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$3;->this$0:Lcom/htc/camera/component/MakeUpController;

    # setter for: Lcom/htc/camera/component/MakeUpController;->m_NeedToSetParams:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/MakeUpController;->access$002(Lcom/htc/camera/component/MakeUpController;Z)Z

    .line 177
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$3;->this$0:Lcom/htc/camera/component/MakeUpController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/MakeUpController;->updateMakeUpBySceneEffect(Z)V

    .line 178
    invoke-virtual {p3}, Lcom/htc/camera/CameraParamsSetupEventArgs;->notifyParameterChanged()V

    .line 180
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 169
    check-cast p3, Lcom/htc/camera/CameraParamsSetupEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/MakeUpController$3;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CameraParamsSetupEventArgs;)V

    return-void
.end method
