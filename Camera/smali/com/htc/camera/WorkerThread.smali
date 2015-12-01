.class public Lcom/htc/camera/WorkerThread;
.super Ljava/lang/Thread;
.source "WorkerThread.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private volatile m_Flags:I

.field private volatile m_Handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/WorkerThread;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized exit()V
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_0

    .line 40
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    .line 41
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/camera/WorkerThread;->m_Handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/camera/WorkerThread;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/WorkerThread;->onExit()V

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 64
    :cond_0
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onEnter()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected onExit()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected onUnhandledExceptionOccurred(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 134
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    .line 165
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    :goto_0
    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    .line 167
    return-void

    .line 137
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 138
    new-instance v0, Lcom/htc/camera/WorkerThread$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/WorkerThread$1;-><init>(Lcom/htc/camera/WorkerThread;)V

    iput-object v0, p0, Lcom/htc/camera/WorkerThread;->m_Handler:Landroid/os/Handler;

    .line 148
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    .line 151
    invoke-virtual {p0}, Lcom/htc/camera/WorkerThread;->onEnter()V

    .line 152
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    .line 165
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 157
    :catch_0
    move-exception v0

    .line 159
    :try_start_6
    iget-object v1, p0, Lcom/htc/camera/WorkerThread;->TAG:Ljava/lang/String;

    const-string v2, "Unhandled exception"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/htc/camera/WorkerThread;->onUnhandledExceptionOccurred(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 164
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    .line 165
    iget v0, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    goto :goto_0

    .line 164
    :catchall_1
    move-exception v0

    iget v1, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    .line 165
    iget v1, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/htc/camera/WorkerThread;->m_Flags:I

    .line 164
    throw v0
.end method

.method public final sendMessage(I)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 174
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/WorkerThread;->sendMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method public final sendMessage(IIILjava/lang/Object;JZ)Z
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/camera/WorkerThread;->m_Handler:Landroid/os/Handler;

    .line 199
    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 202
    if-eqz p7, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gtz v2, :cond_1

    .line 205
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    .line 206
    :cond_1
    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final sendMessage(IJZ)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 182
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-wide v5, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/WorkerThread;->sendMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method
