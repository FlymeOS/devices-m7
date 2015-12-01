.class public abstract Lcom/htc/camera/component/ServiceCameraComponent;
.super Lcom/htc/camera/component/CameraComponent;
.source "ServiceCameraComponent.java"


# instance fields
.field private final m_HasWorkerThread:Z

.field private m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 6

    .prologue
    .line 150
    invoke-virtual {p3}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 151
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V

    .line 155
    iput-boolean p5, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_HasWorkerThread:Z

    .line 156
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 6

    .prologue
    .line 146
    invoke-virtual {p3}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ServiceCameraComponent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/ServiceCameraComponent;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->notifyWorkerThreadRunning()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ServiceCameraComponent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private notifyWorkerThreadRunning()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/htc/camera/component/ServiceCameraComponent;->onWorkerThreadRunning()V

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-virtual {v0}, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->release()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->deinitializeOverride()V

    .line 173
    return-void
.end method

.method protected final getWorkerThread()Lcom/htc/camera/WorkerThread;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    return-object v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected final hasAsyncMessages(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 194
    iget-object v1, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 195
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Lcom/htc/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 200
    :cond_0
    return v0
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 213
    iget-boolean v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_HasWorkerThread:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;-><init>(Lcom/htc/camera/component/ServiceCameraComponent;)V

    iput-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 216
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    invoke-virtual {v0}, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->start()V

    .line 218
    :cond_0
    return-void
.end method

.method protected final isWorkerThreadRunning()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 226
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
    .line 242
    return-void
.end method

.method protected final removeAsyncMessages(I)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 250
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    :cond_0
    return-void
.end method

.method protected final removeAsyncMessages(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 260
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 266
    :cond_0
    return-void
.end method

.method protected final sendAsyncMessage(I)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 273
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;)Z
    .locals 8

    .prologue
    .line 285
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;JZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/htc/camera/component/ServiceCameraComponent;->m_WorkerThread:Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;

    .line 291
    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    if-eqz p7, :cond_2

    .line 302
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gtz v2, :cond_3

    .line 304
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {v1, v0, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    goto :goto_0
.end method

.method protected final sendAsyncMessage(IJ)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 277
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-wide v5, p2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IZ)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 281
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ServiceCameraComponent;->sendAsyncMessage(IIILjava/lang/Object;JZ)Z

    move-result v0

    return v0
.end method
