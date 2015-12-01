.class Lcom/htc/camera/splitcapture/SplitVideoController$1;
.super Ljava/lang/Object;
.source "SplitVideoController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoController;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoController;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_IsNewSurfaceReceived:Z
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$002(Lcom/htc/camera/splitcapture/SplitVideoController;Z)Z

    .line 156
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoUI;

    move-result-object v1

    const/16 v2, 0x2717

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$200(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z

    .line 157
    return-void
.end method
