.class Lcom/htc/camera/debug/OperationTimeoutController$1;
.super Ljava/lang/Object;
.source "OperationTimeoutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/debug/OperationTimeoutController;

.field final synthetic val$handle:Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;


# direct methods
.method constructor <init>(Lcom/htc/camera/debug/OperationTimeoutController;Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/camera/debug/OperationTimeoutController$1;->this$0:Lcom/htc/camera/debug/OperationTimeoutController;

    iput-object p2, p0, Lcom/htc/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v0, v0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->callback:Lcom/htc/camera/debug/b;

    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v2, p0, Lcom/htc/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v2, v2, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    iget-wide v3, v3, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->startTime:J

    iget-object v5, p0, Lcom/htc/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    iget-wide v5, v5, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->timeout:J

    iget-object v7, p0, Lcom/htc/camera/debug/OperationTimeoutController$1;->val$handle:Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    iget-object v7, v7, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->userState:Ljava/lang/Object;

    invoke-interface/range {v0 .. v7}, Lcom/htc/camera/debug/b;->onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V

    .line 105
    return-void
.end method
