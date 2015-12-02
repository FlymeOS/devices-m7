.class Lcom/htc/camera/splitcapture/SplitVideoController$2$1;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/htc/camera/splitcapture/SplitVideoController$2;

.field final synthetic val$mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController$2;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$2;

    iput-object p2, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2$1;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$2;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_MediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$500(Lcom/htc/camera/splitcapture/SplitVideoController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$2;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$600(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompletion() - set back to where it started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2$1;->val$mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2$1;->this$1:Lcom/htc/camera/splitcapture/SplitVideoController$2;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoController$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$700(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompletion() - m_MediaPlayer is null, skip seek-to process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
