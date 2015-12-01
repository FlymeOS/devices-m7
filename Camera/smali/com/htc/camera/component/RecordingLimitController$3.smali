.class Lcom/htc/camera/component/RecordingLimitController$3;
.super Ljava/lang/Object;
.source "RecordingLimitController.java"

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
.field final synthetic this$0:Lcom/htc/camera/component/RecordingLimitController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/RecordingLimitController;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController$3;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 228
    check-cast p3, Lcom/htc/camera/io/MediaSaveEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/RecordingLimitController$3;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/io/MediaSaveEventArgs;)V

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
    .line 232
    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v0, v0, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    sget-object v1, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController$3;->this$0:Lcom/htc/camera/component/RecordingLimitController;

    iget-object v1, p3, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v1, v1, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    # setter for: Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/htc/camera/component/RecordingLimitController;->access$102(Lcom/htc/camera/component/RecordingLimitController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 234
    :cond_0
    return-void
.end method
