.class Lcom/htc/camera/splitcapture/SplitVideoController$15;
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
    .line 2030
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$15;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$15;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$15;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$15;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$4600(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreparingParamsBeforeRecording() - seek media player back to the beginning and pause"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$15;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2040
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$15;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2043
    :cond_0
    return-void
.end method
