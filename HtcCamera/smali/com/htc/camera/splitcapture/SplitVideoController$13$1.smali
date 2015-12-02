.class Lcom/htc/camera/splitcapture/SplitVideoController$13$1;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController$13;)V
    .locals 0

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1807
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getLastMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v2

    .line 1808
    if-eqz v2, :cond_2

    .line 1810
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2900(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/io/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/htc/camera/media/MediaInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v3, v3, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_FinalVideoPath:Lcom/htc/camera/io/Path;
    invoke-static {v3}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2900(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/io/Path;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    if-ne v0, v3, :cond_1

    .line 1811
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-virtual {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v6, v0, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v0, Lcom/htc/camera/MediaEventArgs;

    iget-object v2, v2, Lcom/htc/camera/media/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/MediaEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;Z)V

    invoke-virtual {v6, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1818
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-boolean v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->val$isRenameNeeded:Z

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_NextTempVideoPath:Lcom/htc/camera/io/Path;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3202(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/io/Path;)Lcom/htc/camera/io/Path;

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsNewSurfaceReceived:Z
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$000(Lcom/htc/camera/splitcapture/SplitVideoController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1827
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3300(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreparingToRetake1ST() - prepare SecondVideo for playing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v2, v2, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v3, v3, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v3, v3, Lcom/htc/camera/splitcapture/SplitVideoController;->m_SecondVideo:Lcom/htc/camera/splitcapture/SplitVideo;

    invoke-virtual {v3}, Lcom/htc/camera/splitcapture/SplitVideo;->getVideoPath()Lcom/htc/camera/io/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v4, v4, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_BufferBrushSurface:Landroid/view/Surface;
    invoke-static {v4}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController;ZLcom/htc/camera/io/Path;Landroid/view/Surface;)V

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3402(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    .line 1829
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3400(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    move-result-object v1

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->prepareMediaPlayer(Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3600(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V

    .line 1837
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3800(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreparingToRetake1ST() - final video deleted"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoUI;

    move-result-object v1

    const/16 v2, 0x2718

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3900(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z

    .line 1839
    return-void

    .line 1813
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3000(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPreparingToRetake1ST() - final video path doesn\'t match with the media info from CameraThread. Cannot raise mediaDeletedEvent"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1816
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3100(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPreparingToRetake1ST() - last media info is null. Cannot raise mediaDeletedEvent"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1833
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_LatestMediaPlayerInfo:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3402(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    .line 1834
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$13$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$13;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$13;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$3700(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreparingToRetake1ST() - hasn\'t received new surface. Prepare media player later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
