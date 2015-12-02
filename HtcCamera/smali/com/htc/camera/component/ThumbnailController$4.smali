.class Lcom/htc/camera/component/ThumbnailController$4;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/CaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ThumbnailController;)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/htc/camera/component/ThumbnailController$4;->this$0:Lcom/htc/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/CaptureEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/CaptureEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/htc/camera/component/ThumbnailController$4;->this$0:Lcom/htc/camera/component/ThumbnailController;

    iget-object v1, p3, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    # invokes: Lcom/htc/camera/component/ThumbnailController;->onMediaCaptureFailed(Lcom/htc/camera/CaptureHandle;)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/ThumbnailController;->access$400(Lcom/htc/camera/component/ThumbnailController;Lcom/htc/camera/CaptureHandle;)V

    .line 1013
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1008
    check-cast p3, Lcom/htc/camera/CaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/ThumbnailController$4;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/CaptureEventArgs;)V

    return-void
.end method
