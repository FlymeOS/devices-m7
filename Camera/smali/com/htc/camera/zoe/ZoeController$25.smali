.class Lcom/htc/camera/zoe/ZoeController$25;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;

.field final synthetic val$checkingSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 2670
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$25;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController$25;->val$checkingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$25;->val$checkingSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2675
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$25;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$4800(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CaptureHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2676
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$25;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->stopCapturing()V
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$4900(Lcom/htc/camera/zoe/ZoeController;)V

    .line 2677
    :cond_0
    return-void
.end method
