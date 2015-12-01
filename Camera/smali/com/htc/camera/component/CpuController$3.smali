.class Lcom/htc/camera/component/CpuController$3;
.super Ljava/lang/Object;
.source "CpuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/CpuController;

.field final synthetic val$flags:I

.field final synthetic val$handle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/htc/camera/component/CpuController$3;->this$0:Lcom/htc/camera/component/CpuController;

    iput-object p2, p0, Lcom/htc/camera/component/CpuController$3;->val$handle:Lcom/htc/camera/Handle;

    iput p3, p0, Lcom/htc/camera/component/CpuController$3;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/camera/component/CpuController$3;->this$0:Lcom/htc/camera/component/CpuController;

    iget-object v1, p0, Lcom/htc/camera/component/CpuController$3;->val$handle:Lcom/htc/camera/Handle;

    iget v2, p0, Lcom/htc/camera/component/CpuController$3;->val$flags:I

    # invokes: Lcom/htc/camera/component/CpuController;->unlockCpuCountInternal(Lcom/htc/camera/Handle;I)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/component/CpuController;->access$400(Lcom/htc/camera/component/CpuController;Lcom/htc/camera/Handle;I)V

    .line 324
    return-void
.end method
