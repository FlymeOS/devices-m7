.class Lcom/htc/camera/component/DualLensCalibrateController$1;
.super Ljava/lang/Object;
.source "DualLensCalibrateController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/DualLensCalibrateController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/DualLensCalibrateController;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/camera/component/DualLensCalibrateController$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V
    .locals 3
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
    const/4 v2, 0x1

    .line 123
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_IsEntered:Z
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$000(Lcom/htc/camera/component/DualLensCalibrateController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_IsTakingPicture:Z
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$100(Lcom/htc/camera/component/DualLensCalibrateController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # getter for: Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/DualLensCalibrateController;->access$200(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEventReceived() - receive DUALLENSCALIBRATE callback."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController$1;->this$0:Lcom/htc/camera/component/DualLensCalibrateController;

    # setter for: Lcom/htc/camera/component/DualLensCalibrateController;->m_IsUiNeeded:Z
    invoke-static {v0, v2}, Lcom/htc/camera/component/DualLensCalibrateController;->access$302(Lcom/htc/camera/component/DualLensCalibrateController;Z)Z

    .line 128
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 119
    check-cast p3, Lcom/htc/camera/HtcCallbackEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/DualLensCalibrateController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V

    return-void
.end method
