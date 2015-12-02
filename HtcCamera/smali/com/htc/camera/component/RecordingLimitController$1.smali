.class Lcom/htc/camera/component/RecordingLimitController$1;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/MediaRecorderInfoEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$1;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderInfoEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/MediaRecorderInfoEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/MediaRecorderInfoEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$1;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    # invokes: Lcom/htc/camera/component/RecordingLimitController;->onMediaRecorderInfoCallback(Lcom/htc/camera/MediaRecorderInfoEventArgs;)V
    invoke-static {v0, p3}, Lcom/htc/camera/component/RecordingLimitController;->access$000(Lcom/htc/camera/component/RecordingLimitController;Lcom/htc/camera/MediaRecorderInfoEventArgs;)V

    .line 207
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 202
    check-cast p3, Lcom/htc/camera/MediaRecorderInfoEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/RecordingLimitController$1;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/MediaRecorderInfoEventArgs;)V

    return-void
.end method
