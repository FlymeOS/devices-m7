.class final Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FinalizeTimeoutReceiver"
.end annotation


# instance fields
.field final mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 2

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 612
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 620
    iget-object v2, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    :try_start_0
    const-string v2, "pid"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 623
    .local v1, "pid":I
    new-instance v2, Lcom/android/server/Watchdog$FinalizeTimeoutTask;

    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/server/Watchdog$FinalizeTimeoutTask;-><init>(Landroid/content/Context;Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;Lcom/android/server/am/ActivityManagerService;I)V

    invoke-virtual {v2}, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .end local v1    # "pid":I
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Watchdog"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    iget-object v2, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 629
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "Watchdog"

    const-string v3, "skip finalize timeout task"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRunning(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->mTaskRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 616
    return-void
.end method
