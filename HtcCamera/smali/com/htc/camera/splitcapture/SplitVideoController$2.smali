.class Lcom/htc/camera/splitcapture/SplitVideoController$2;
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
    .line 161
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$300(Lcom/htc/camera/splitcapture/SplitVideoController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompletion() - video playback complete!!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_UI:Lcom/htc/camera/splitcapture/SplitVideoUI;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$100(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/splitcapture/SplitVideoUI;

    move-result-object v1

    const/16 v2, 0x2715

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$400(Lcom/htc/camera/splitcapture/SplitVideoController;Lcom/htc/camera/component/Component;I)Z

    .line 169
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoController$2;->this$0:Lcom/htc/camera/splitcapture/SplitVideoController;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoController;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoController;->access$800(Lcom/htc/camera/splitcapture/SplitVideoController;)Lcom/htc/camera/ui/IOpenGLViewfinder;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/splitcapture/SplitVideoController$2$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/camera/splitcapture/SplitVideoController$2$1;-><init>(Lcom/htc/camera/splitcapture/SplitVideoController$2;Landroid/media/MediaPlayer;)V

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->queueRenderingEvent(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method
