.class Lcom/htc/camera/component/SmileCaptureController$1;
.super Ljava/lang/Object;
.source "SmileCaptureController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/HtcCallbackEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SmileCaptureController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SmileCaptureController;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/htc/camera/component/SmileCaptureController$1;->this$0:Lcom/htc/camera/component/SmileCaptureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/HtcCallbackEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController$1;->this$0:Lcom/htc/camera/component/SmileCaptureController;

    invoke-virtual {v0}, Lcom/htc/camera/component/SmileCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->isSmileFromFaceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    if-ne v0, v3, :cond_0

    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController$1;->this$0:Lcom/htc/camera/component/SmileCaptureController;

    # getter for: Lcom/htc/camera/component/SmileCaptureController;->m_IsEnabled:Z
    invoke-static {v0}, Lcom/htc/camera/component/SmileCaptureController;->access$000(Lcom/htc/camera/component/SmileCaptureController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController$1;->this$0:Lcom/htc/camera/component/SmileCaptureController;

    # getter for: Lcom/htc/camera/component/SmileCaptureController;->m_UI:Lcom/htc/camera/component/SmileCaptureUI;
    invoke-static {v0}, Lcom/htc/camera/component/SmileCaptureController;->access$100(Lcom/htc/camera/component/SmileCaptureController;)Lcom/htc/camera/component/SmileCaptureUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController$1;->this$0:Lcom/htc/camera/component/SmileCaptureController;

    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureController$1;->this$0:Lcom/htc/camera/component/SmileCaptureController;

    # getter for: Lcom/htc/camera/component/SmileCaptureController;->m_UI:Lcom/htc/camera/component/SmileCaptureUI;
    invoke-static {v1}, Lcom/htc/camera/component/SmileCaptureController;->access$100(Lcom/htc/camera/component/SmileCaptureController;)Lcom/htc/camera/component/SmileCaptureUI;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/component/SmileCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController$1;->this$0:Lcom/htc/camera/component/SmileCaptureController;

    # getter for: Lcom/htc/camera/component/SmileCaptureController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/SmileCaptureController;->access$200(Lcom/htc/camera/component/SmileCaptureController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify auto smile-capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 87
    check-cast p3, Lcom/htc/camera/HtcCallbackEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/SmileCaptureController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V

    return-void
.end method
