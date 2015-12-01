.class Lcom/htc/camera/splitcapture/SplitVideoController$16;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

.field final synthetic val$info:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;)V
    .locals 0

    .prologue
    .line 2165
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->val$info:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2169
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$4700(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareMediaPlayer() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$502(Lcom/htc/camera/splitcapture/SplitVideoController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2172
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoController;->onMediaPlayerPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2177
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$4800(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareMediaPlayer() - file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->val$info:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    iget-object v2, v2, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;->videoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->val$info:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;->videoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v1}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2179
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->val$info:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 2180
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->val$info:Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;

    iget-boolean v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$MediaPlayerInfo;->isMute:Z

    if-eqz v0, :cond_1

    .line 2181
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2182
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 2183
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$5000(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepareMediaPlayer() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    return-void

    .line 2185
    :catch_0
    move-exception v0

    .line 2187
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$4900(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prepareMediaPlayer() - Error occured"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2188
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2189
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2190
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$502(Lcom/htc/camera/splitcapture/SplitVideoController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2191
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$16;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsMediaPlayerPrepared:Z
    invoke-static {v0, v3}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2702(Lcom/htc/camera/splitcapture/SplitVideoController;Z)Z

    goto :goto_0
.end method
