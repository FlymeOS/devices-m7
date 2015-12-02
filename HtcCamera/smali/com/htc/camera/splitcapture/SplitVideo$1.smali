.class Lcom/htc/camera/splitcapture/SplitVideo$1;
.super Ljava/lang/Thread;
.source "SplitVideo.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideo;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideo;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideo;

    iput-object p3, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideo;->deleteFile(Lcom/htc/camera/io/Path;)Z
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideo;->access$000(Lcom/htc/camera/io/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideo;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideo;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideo;->access$100(Lcom/htc/camera/splitcapture/SplitVideo;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/htc/camera/splitcapture/SplitVideo;->removeFromMediaStore(Lcom/htc/camera/io/Path;Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideo;->access$200(Lcom/htc/camera/io/Path;Landroid/content/Context;)V

    .line 65
    const-string v0, "SplitVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete() - \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v2, v2, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v1, "SplitVideo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete() - cannot delete the file ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideo$1;->this$0:Lcom/htc/camera/splitcapture/SplitVideo;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideo;->m_VideoPath:Lcom/htc/camera/io/Path;

    invoke-virtual {v0}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "null"

    goto :goto_1
.end method
