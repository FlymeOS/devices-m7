.class Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "CaptureResolutionManager.java"


# instance fields
.field public needSaveToSettings:Z

.field public resolution:Lcom/htc/camera/Resolution;

.field final synthetic this$0:Lcom/htc/camera/component/CaptureResolutionManager;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Resolution;)V
    .locals 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxResolution_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->resolution:Lcom/htc/camera/Resolution;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->needSaveToSettings:Z

    .line 61
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # getter for: Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$000(Lcom/htc/camera/component/CaptureResolutionManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onClose() - Handle: "

    iget-object v3, p0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->name:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # getter for: Lcom/htc/camera/component/CaptureResolutionManager;->m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;
    invoke-static {v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$100(Lcom/htc/camera/component/CaptureResolutionManager;)Lcom/htc/camera/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/camera/s;->a(Lcom/htc/camera/Handle;)Z

    move-result v0

    .line 68
    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    # getter for: Lcom/htc/camera/component/CaptureResolutionManager;->m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;
    invoke-static {v2}, Lcom/htc/camera/component/CaptureResolutionManager;->access$100(Lcom/htc/camera/component/CaptureResolutionManager;)Lcom/htc/camera/s;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/camera/s;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->this$0:Lcom/htc/camera/component/CaptureResolutionManager;

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V
    invoke-static {v2, v1, v1, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->access$200(Lcom/htc/camera/component/CaptureResolutionManager;ZZZ)V

    .line 73
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 71
    goto :goto_0
.end method
