.class Lcom/htc/camera/component/AudioResourceRestricController$4$1;
.super Ljava/lang/Object;
.source "AudioResourceRestricController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/camera/component/AudioResourceRestricController$4;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AudioResourceRestricController$4;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/camera/component/AudioResourceRestricController$4$1;->this$1:Lcom/htc/camera/component/AudioResourceRestricController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x2710

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 158
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    .line 159
    iget-object v0, p3, Lcom/htc/camera/CaptureEventArgs;->failedReason:Lcom/htc/camera/CaptureFailedReason;

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->WifiCalling:Lcom/htc/camera/CaptureFailedReason;

    if-ne v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$4$1;->this$1:Lcom/htc/camera/component/AudioResourceRestricController$4;

    iget-object v0, v0, Lcom/htc/camera/component/AudioResourceRestricController$4;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    iget-object v1, p0, Lcom/htc/camera/component/AudioResourceRestricController$4$1;->this$1:Lcom/htc/camera/component/AudioResourceRestricController$4;

    iget-object v1, v1, Lcom/htc/camera/component/AudioResourceRestricController$4;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    const/4 v3, 0x2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AudioResourceRestricController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p3, Lcom/htc/camera/CaptureEventArgs;->failedReason:Lcom/htc/camera/CaptureFailedReason;

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->NoAudioResource:Lcom/htc/camera/CaptureFailedReason;

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController$4$1;->this$1:Lcom/htc/camera/component/AudioResourceRestricController$4;

    iget-object v0, v0, Lcom/htc/camera/component/AudioResourceRestricController$4;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    iget-object v1, p0, Lcom/htc/camera/component/AudioResourceRestricController$4$1;->this$1:Lcom/htc/camera/component/AudioResourceRestricController$4;

    iget-object v1, v1, Lcom/htc/camera/component/AudioResourceRestricController$4;->this$0:Lcom/htc/camera/component/AudioResourceRestricController;

    move v3, v6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AudioResourceRestricController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0
.end method
