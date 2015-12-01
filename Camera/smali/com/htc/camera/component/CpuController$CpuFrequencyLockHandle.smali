.class final Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "CpuController.java"


# instance fields
.field public final minFrequency:Lcom/htc/camera/ICpuController$CpuFrequency;

.field final synthetic this$0:Lcom/htc/camera/component/CpuController;


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/component/CpuController$CpuFrequencyLockHandle;->this$0:Lcom/htc/camera/component/CpuController;

    # invokes: Lcom/htc/camera/component/CpuController;->unlockCpuFrequency(Lcom/htc/camera/Handle;I)V
    invoke-static {v0, p0, p1}, Lcom/htc/camera/component/CpuController;->access$100(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V

    .line 62
    return-void
.end method
