.class Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;
.super Lcom/htc/camera/Handle;
.source "CountDownTimer.java"


# instance fields
.field public final callbackExecutor:Lcom/htc/camera/t;

.field public final startTime:J

.field public final totalTime:J

.field public final userState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/htc/camera/t;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 76
    iput-object p4, p0, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;->callbackExecutor:Lcom/htc/camera/t;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;->startTime:J

    .line 78
    iput-wide p2, p0, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;->totalTime:J

    .line 79
    iput-object p5, p0, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;->userState:Ljava/lang/Object;

    .line 80
    return-void
.end method
