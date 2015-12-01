.class Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;
.super Lcom/htc/camera/Handle;
.source "OperationTimeoutController.java"


# instance fields
.field public final callback:Lcom/htc/camera/debug/b;

.field public final callbackExecutor:Lcom/htc/camera/t;

.field public final startTime:J

.field public final timeout:J

.field public final userState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p4, p0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->callback:Lcom/htc/camera/debug/b;

    .line 37
    iput-object p5, p0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->callbackExecutor:Lcom/htc/camera/t;

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->startTime:J

    .line 39
    iput-wide p2, p0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->timeout:J

    .line 40
    iput-object p6, p0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->userState:Ljava/lang/Object;

    .line 41
    return-void
.end method
