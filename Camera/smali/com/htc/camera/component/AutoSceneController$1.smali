.class Lcom/htc/camera/component/AutoSceneController$1;
.super Ljava/lang/Object;
.source "AutoSceneController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/AutoSceneController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoSceneController;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/camera/component/AutoSceneController$1;->this$0:Lcom/htc/camera/component/AutoSceneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V
    .locals 2
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
    .line 157
    iget v0, p3, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController$1;->this$0:Lcom/htc/camera/component/AutoSceneController;

    iput-object p3, v0, Lcom/htc/camera/component/AutoSceneController;->m_LatestEventArgs:Lcom/htc/camera/HtcCallbackEventArgs;

    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController$1;->this$0:Lcom/htc/camera/component/AutoSceneController;

    # getter for: Lcom/htc/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/htc/camera/component/AutoSceneUI;
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneController;->access$000(Lcom/htc/camera/component/AutoSceneController;)Lcom/htc/camera/component/AutoSceneUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneController$1;->this$0:Lcom/htc/camera/component/AutoSceneController;

    # invokes: Lcom/htc/camera/component/AutoSceneController;->notifySmartSceneToUI()V
    invoke-static {v0}, Lcom/htc/camera/component/AutoSceneController;->access$100(Lcom/htc/camera/component/AutoSceneController;)V

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 153
    check-cast p3, Lcom/htc/camera/HtcCallbackEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/AutoSceneController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/HtcCallbackEventArgs;)V

    return-void
.end method
