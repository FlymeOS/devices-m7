.class Lcom/htc/camera/splitcapture/SplitVideoController$3;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$900(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompletion() - video playback complete!!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$3;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoUI;

    move-result-object v1

    const/16 v2, 0x2715

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$1000(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z

    .line 194
    return-void
.end method
