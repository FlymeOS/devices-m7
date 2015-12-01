.class public abstract Lcom/htc/camera/component/AsyncCameraThreadComponent;
.super Lcom/htc/camera/component/s;
.source "AsyncCameraThreadComponent.java"


# instance fields
.field private m_WorkerThread:Lcom/htc/camera/WorkerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/s;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AsyncCameraThreadComponent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/AsyncCameraThreadComponent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->exit()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/component/s;->deinitializeOverride()V

    .line 42
    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/htc/camera/component/s;->initializeOverride()V

    .line 78
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Worker Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;-><init>(Lcom/htc/camera/component/AsyncCameraThreadComponent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->start()V

    .line 155
    :cond_0
    return-void
.end method

.method protected final isWorkerThreadRunning()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    .line 163
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWorkerThreadRunning()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected final removeAsyncMessages(I)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    .line 178
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 179
    :goto_0
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    :cond_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;)Z
    .locals 8

    .prologue
    .line 200
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;JZ)Z
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    .line 206
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 207
    :goto_0
    if-nez v0, :cond_1

    .line 208
    const/4 v0, 0x0

    .line 218
    :goto_1
    return v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 214
    if-eqz p7, :cond_2

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gtz v2, :cond_3

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_1

    .line 218
    :cond_3
    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_1
.end method
