.class final Lcom/htc/camera/component/CpuController$CpuCountLockHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "CpuController.java"


# instance fields
.field public minCpuCount:I

.field final synthetic this$0:Lcom/htc/camera/component/CpuController;


# virtual methods
.method protected onClose(I)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/camera/component/CpuController$CpuCountLockHandle;->this$0:Lcom/htc/camera/component/CpuController;

    # invokes: Lcom/htc/camera/component/CpuController;->unlockCpuCount(Lcom/htc/camera/Handle;I)V
    invoke-static {v0, p0, p1}, Lcom/htc/camera/component/CpuController;->access$000(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V

    .line 44
    return-void
.end method
