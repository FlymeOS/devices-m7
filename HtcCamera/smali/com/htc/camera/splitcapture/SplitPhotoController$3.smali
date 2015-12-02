.class Lcom/htc/camera/splitcapture/SplitPhotoController$3;
.super Ljava/lang/Object;
.source "SplitPhotoController.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/io/MediaSaveEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitPhotoController;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 455
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/splitcapture/SplitPhotoController$3;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ">;",
            "Lcom/htc/camera/io/MediaSaveEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitPhotoController;->access$000(Lcom/htc/camera/splitcapture/SplitPhotoController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    iget-object v1, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitPhotoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitPhotoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitPhotoController;->m_UI:Lcom/htc/camera/splitcapture/SplitPhotoUI;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitPhotoController;->access$100(Lcom/htc/camera/splitcapture/SplitPhotoController;)Lcom/htc/camera/splitcapture/SplitPhotoUI;

    move-result-object v1

    const/16 v2, 0x271d

    # invokes: Lcom/htc/camera/splitcapture/SplitPhotoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoController;->access$300(Lcom/htc/camera/splitcapture/SplitPhotoController;Lcom/htc/camera/component/Component;I)Z

    .line 463
    :cond_0
    return-void
.end method
