.class Lcom/htc/camera/splitcapture/SplitVideoController$4$1;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController$4;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$1100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraThread;->VIDEO_DCF_INFO:Lcom/htc/camera/io/DCFInfo;

    invoke-static {v0, v2}, Lcom/htc/camera/io/DCFUtility;->restoreFileCounter(Lcom/htc/camera/Settings;Lcom/htc/camera/io/DCFInfo;)V

    .line 364
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getLastMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_1

    .line 367
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->val$finalPath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/htc/camera/media/MediaInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;

    iget-object v3, v3, Lcom/htc/camera/splitcapture/SplitVideoController$4;->val$finalPath:Lcom/htc/camera/io/Path;

    iget-object v3, v3, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    if-ne v0, v3, :cond_0

    .line 368
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v6, v0, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v0, Lcom/htc/camera/MediaEventArgs;

    iget-object v2, v2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;Z)V

    invoke-virtual {v6, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 374
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$1200(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishCapture() - final video path doesn\'t match with the media info from CameraThread. Cannot raise mediaDeletedEvent"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$4$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$4;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$4;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$1300(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "finishCapture() - last media info is null. Cannot raise mediaDeletedEvent"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
