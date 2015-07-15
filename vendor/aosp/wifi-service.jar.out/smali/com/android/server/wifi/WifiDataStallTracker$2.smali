.class Lcom/android/server/wifi/WifiDataStallTracker$2;
.super Ljava/lang/Object;
.source "WifiDataStallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiDataStallTracker;->onDataStallAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiDataStallTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDataStallTracker;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xfa0

    .line 360
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # invokes: Lcom/android/server/wifi/WifiDataStallTracker;->updateDataStallInfo()V
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$300(Lcom/android/server/wifi/WifiDataStallTracker;)V

    .line 362
    const/4 v2, 0x5

    .line 364
    .local v2, "hangWatchdogTrigger":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # invokes: Lcom/android/server/wifi/WifiDataStallTracker;->isAllowRecover()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$400(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 365
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$500(Lcom/android/server/wifi/WifiDataStallTracker;)J

    move-result-wide v4

    int-to-long v6, v2

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    .line 366
    const-string v3, "WifiDataStallTracker"

    const-string v4, "datastall detect!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverRecently:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$600(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mPingIsGo:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$700(Lcom/android/server/wifi/WifiDataStallTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    .line 368
    const/4 v1, -0x1

    .line 369
    .local v1, "curRssi":I
    const/4 v0, -0x1

    .line 370
    .local v0, "curFreq":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$800(Lcom/android/server/wifi/WifiDataStallTracker;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 371
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$800(Lcom/android/server/wifi/WifiDataStallTracker;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    .line 372
    const-string v3, "WifiDataStallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "datastall detect when RSSI is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v3, "WifiDataStallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "datastall detect when FREQ is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/16 v3, -0x56

    if-le v1, v3, :cond_0

    if-le v0, v8, :cond_1

    :cond_0
    const/16 v3, -0x51

    if-le v1, v3, :cond_3

    if-le v0, v8, :cond_3

    .line 377
    :cond_1
    const-string v3, "WifiDataStallTracker"

    const-string v4, "datastall detect, ping gateway first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # invokes: Lcom/android/server/wifi/WifiDataStallTracker;->pingGateway()Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$900(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 380
    const-string v3, "WifiDataStallTracker"

    const-string v4, "datastall detect and ping gateway fail, recover now!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiDataStallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiDataStallTracker;->sendMessage(Landroid/os/Message;)Z

    .line 397
    .end local v0    # "curFreq":I
    .end local v1    # "curRssi":I
    :cond_2
    :goto_0
    return-void

    .line 384
    .restart local v0    # "curFreq":I
    .restart local v1    # "curRssi":I
    :cond_3
    const-string v3, "WifiDataStallTracker"

    const-string v4, "The signal is poor(<-85), it would impact perf, do nothing here"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v0    # "curFreq":I
    .end local v1    # "curRssi":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mRecoverRecently:Z
    invoke-static {v3}, Lcom/android/server/wifi/WifiDataStallTracker;->access$600(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    const-string v3, "WifiDataStallTracker"

    const-string v4, "not recover again, datastall recover recently within 3600 secs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_5
    const-string v3, "WifiDataStallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataStallAlarm: Sent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$2;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mSentSinceLastRecv:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$500(Lcom/android/server/wifi/WifiDataStallTracker;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pkts since last received, < watchdogTrigger="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_6
    const-string v3, "WifiDataStallTracker"

    const-string v4, "onDataStallAlarm: not allow to run recover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
