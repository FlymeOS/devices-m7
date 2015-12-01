.class Lcom/htc/camera/component/RecordingLimitController$5;
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
        "Lcom/htc/camera/OneValueEventArgs",
        "<",
        "Lcom/htc/camera/io/StorageSlot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$5;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$5;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    new-instance v1, Lcom/htc/camera/component/RecordingLimitController$5$1;

    invoke-direct {v1, p0, p3}, Lcom/htc/camera/component/RecordingLimitController$5$1;-><init>(Lcom/htc/camera/component/RecordingLimitController$5;Lcom/htc/camera/OneValueEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/RecordingLimitController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 253
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/RecordingLimitController$5;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
