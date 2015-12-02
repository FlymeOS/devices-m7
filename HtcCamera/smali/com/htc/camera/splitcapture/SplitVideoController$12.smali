.class Lcom/htc/camera/splitcapture/SplitVideoController$12;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1534
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2500(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopMediaPlayer() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1547
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v4}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$502(Lcom/htc/camera/splitcapture/SplitVideoController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1549
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    :goto_0
    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsMediaPlayerPrepared:Z
    invoke-static {v0, v3}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2702(Lcom/htc/camera/splitcapture/SplitVideoController;Z)Z

    .line 1551
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2800(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopMediaPlayer() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    return-void

    .line 1540
    :catch_0
    move-exception v0

    .line 1542
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2600(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopMediaPlayer() - Error occured"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1547
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1548
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v4}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$502(Lcom/htc/camera/splitcapture/SplitVideoController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1549
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    goto :goto_0

    .line 1546
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1547
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1548
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v4}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$502(Lcom/htc/camera/splitcapture/SplitVideoController;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1549
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$12;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsMediaPlayerPrepared:Z
    invoke-static {v1, v3}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2702(Lcom/htc/camera/splitcapture/SplitVideoController;Z)Z

    .line 1546
    throw v0
.end method
