.class Lcom/htc/camera/splitcapture/SplitVideoController$11;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

.field final synthetic val$ignoreState:Z

.field final synthetic val$restart:Z

.field final synthetic val$seekBackWhenComplete:Z


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;ZZZ)V
    .locals 0

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iput-boolean p2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->val$restart:Z

    iput-boolean p3, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->val$ignoreState:Z

    iput-boolean p4, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->val$seekBackWhenComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->val$restart:Z

    if-eqz v0, :cond_0

    .line 1466
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->val$ignoreState:Z

    if-eqz v0, :cond_0

    .line 1468
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->val$restart:Z

    if-eqz v0, :cond_4

    .line 1469
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1471
    :cond_4
    iget-boolean v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->val$seekBackWhenComplete:Z

    if-eqz v0, :cond_5

    .line 1472
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoController;->onMediaPlayerCompleteThenSeekBackListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1476
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoUI;

    move-result-object v1

    const/16 v2, 0x2716

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2300(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z

    .line 1479
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v1

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->startMediaPlayerInternal(Landroid/media/MediaPlayer;)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$2400(Lcom/htc/camera/splitcapture/SplitVideoController;Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 1474
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$11;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, v1, Lcom/htc/camera/splitcapture/SplitVideoController;->onMediaPlayerCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_1
.end method
