.class Lcom/htc/camera/component/AsyncCameraThreadComponent$1;
.super Lcom/htc/camera/WorkerThread;
.source "AsyncCameraThreadComponent.java"


# instance fields
.field private volatile m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

.field final synthetic this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AsyncCameraThreadComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    invoke-direct {p0, p2}, Lcom/htc/camera/WorkerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/htc/camera/debug/Debugger;->getMessageName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    # getter for: Lcom/htc/camera/component/AsyncCameraThreadComponent;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->access$000(Lcom/htc/camera/component/AsyncCameraThreadComponent;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message (Async) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    sget-object v2, Lcom/htc/camera/component/Component;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/IComponent$State;

    .line 99
    sget-object v2, Lcom/htc/camera/component/IComponent$State;->RUNNING:Lcom/htc/camera/component/IComponent$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/htc/camera/component/IComponent$State;->INITIALIZING:Lcom/htc/camera/component/IComponent$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    if-ne v0, v2, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    invoke-virtual {v0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 105
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/camera/WorkerThread;->handleMessage(Landroid/os/Message;)V

    .line 109
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    # getter for: Lcom/htc/camera/component/AsyncCameraThreadComponent;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->access$100(Lcom/htc/camera/component/AsyncCameraThreadComponent;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message (Async) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot handle asynchronous message because of current state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onEnter()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    invoke-virtual {v0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getThreadMonitor()Lcom/htc/camera/debug/ThreadMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    .line 116
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->this$0:Lcom/htc/camera/component/AsyncCameraThreadComponent;

    invoke-virtual {v0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/AsyncCameraThreadComponent$1$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent$1$1;-><init>(Lcom/htc/camera/component/AsyncCameraThreadComponent$1;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->TAG:Ljava/lang/String;

    const-string v1, "Cannot notify component because there is no handler"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    return-void
.end method

.method protected onExit()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/WorkerThread;->onExit()V

    .line 140
    return-void
.end method

.method protected onUnhandledExceptionOccurred(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    invoke-virtual {v0}, Lcom/htc/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AsyncCameraThreadComponent$1;->m_ThreadMonitor:Lcom/htc/camera/debug/ThreadMonitor;

    .line 150
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/WorkerThread;->onUnhandledExceptionOccurred(Ljava/lang/Throwable;)V

    .line 151
    return-void
.end method
