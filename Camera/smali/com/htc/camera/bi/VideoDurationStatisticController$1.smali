.class Lcom/htc/camera/bi/VideoDurationStatisticController$1;
.super Ljava/lang/Object;
.source "VideoDurationStatisticController.java"

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
.field final synthetic this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/VideoDurationStatisticController;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 64
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/bi/VideoDurationStatisticController$1;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 2
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
    .line 68
    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    iget-object v1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$1;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    # getter for: Lcom/htc/camera/bi/VideoDurationStatisticController;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v1}, Lcom/htc/camera/bi/VideoDurationStatisticController;->access$000(Lcom/htc/camera/bi/VideoDurationStatisticController;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/htc/camera/bi/VideoDurationStatisticController;->rebuildComposeKey(Lcom/htc/camera/io/MediaSaveEventArgs;Lcom/htc/camera/capturemode/CaptureMode;)V

    goto :goto_0
.end method
