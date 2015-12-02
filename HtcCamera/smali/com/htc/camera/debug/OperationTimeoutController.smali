.class final Lcom/htc/camera/debug/OperationTimeoutController;
.super Lcom/htc/camera/debug/a;
.source "OperationTimeoutController.java"


# instance fields
.field private final m_TimerHandles:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    const-string v0, "Operation Timeout Controller"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/htc/camera/debug/a;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    .line 55
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-super {p0}, Lcom/htc/camera/debug/a;->deinitializeOverride()V

    .line 71
    return-void

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-super {p0, p1}, Lcom/htc/camera/debug/a;->handleAsyncMessage(Landroid/os/Message;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    .line 84
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    monitor-exit v1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Timeout] Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Timeout] Start time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Timeout] Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->timeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Timeout] Call-back executor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->callbackExecutor:Lcom/htc/camera/t;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, v0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;->callbackExecutor:Lcom/htc/camera/t;

    new-instance v2, Lcom/htc/camera/debug/OperationTimeoutController$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/debug/OperationTimeoutController$1;-><init>(Lcom/htc/camera/debug/OperationTimeoutController;Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;)V

    invoke-interface {v1, v2}, Lcom/htc/camera/t;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    const-string v1, "[Timeout] Cannot notify call-back by given executor"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method public startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;
    .locals 10

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    const-string v1, "startTimer() - No name specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    .line 131
    :cond_0
    if-nez p4, :cond_1

    .line 133
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    const-string v1, "startTimer() - No call-back specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    :cond_1
    if-nez p5, :cond_2

    .line 138
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    const-string v1, "startTimer() - No call-back executor specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/debug/OperationTimeoutController;->threadAccessCheck()V

    .line 144
    invoke-virtual {p0}, Lcom/htc/camera/debug/OperationTimeoutController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    const-string v1, "startTimer() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_3
    new-instance v0, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/debug/OperationTimeoutController$TimerHandle;-><init>(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    const-string v2, "startTimer() - Handle : "

    const-string v3, ", timeout : "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iget-object v9, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    monitor-enter v9

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    const/16 v2, 0x2711

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/htc/camera/debug/OperationTimeoutController;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    .line 159
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopTimer(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    const-string v1, "stopTimer() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->TAG:Ljava/lang/String;

    const-string v1, "stopTimer() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/debug/OperationTimeoutController;->m_TimerHandles:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const/16 v0, 0x2711

    invoke-virtual {p0, v0, p1}, Lcom/htc/camera/debug/OperationTimeoutController;->removeAsyncMessages(ILjava/lang/Object;)V

    .line 182
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
