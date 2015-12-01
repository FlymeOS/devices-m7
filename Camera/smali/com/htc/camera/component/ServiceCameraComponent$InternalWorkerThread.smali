.class final Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;
.super Lcom/htc/camera/WorkerThread;
.source "ServiceCameraComponent.java"


# instance fields
.field private volatile m_Owner:Lcom/htc/camera/component/ServiceCameraComponent;

.field private volatile m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/htc/camera/component/ServiceCameraComponent;)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/htc/camera/component/ServiceCameraComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Worker Thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_Owner:Lcom/htc/camera/component/ServiceCameraComponent;

    .line 33
    invoke-virtual {p1}, Lcom/htc/camera/component/ServiceCameraComponent;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getThreadMonitor()Lcom/htc/camera/debug/ThreadMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    .line 34
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 43
    iget-object v1, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_Owner:Lcom/htc/camera/component/ServiceCameraComponent;

    .line 44
    if-eqz v1, :cond_2

    .line 48
    # getter for: Lcom/htc/camera/component/ServiceCameraComponent;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/ServiceCameraComponent;->access$000(Lcom/htc/camera/component/ServiceCameraComponent;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Lcom/htc/camera/component/ServiceCameraComponent;->isMessageLogsEnabled()Z

    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v4}, Lcom/htc/camera/debug/Debugger;->getMessageName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message (Async) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {v1, p1}, Lcom/htc/camera/component/ServiceCameraComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 62
    if-eqz v3, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message (Async) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    .line 70
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->TAG:Ljava/lang/String;

    const-string v1, "No owner, skip message"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onEnter()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_Owner:Lcom/htc/camera/component/ServiceCameraComponent;

    .line 81
    if-eqz v0, :cond_1

    .line 83
    new-instance v1, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread$1;

    invoke-direct {v1, p0, v0}, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread$1;-><init>(Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;Lcom/htc/camera/component/ServiceCameraComponent;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/ServiceCameraComponent;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    # getter for: Lcom/htc/camera/component/ServiceCameraComponent;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/ServiceCameraComponent;->access$200(Lcom/htc/camera/component/ServiceCameraComponent;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot notify owner that worker thread is started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    return-void
.end method

.method protected onExit()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/WorkerThread;->onExit()V

    .line 109
    return-void
.end method

.method protected onUnhandledExceptionOccurred(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/WorkerThread;->onUnhandledExceptionOccurred(Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->m_Owner:Lcom/htc/camera/component/ServiceCameraComponent;

    .line 131
    invoke-virtual {p0}, Lcom/htc/camera/component/ServiceCameraComponent$InternalWorkerThread;->exit()V

    .line 132
    return-void
.end method
