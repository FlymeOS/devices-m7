.class Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
.super Ljava/lang/Thread;
.source "NativeNfcTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PresenceCheckWatchdog"
.end annotation


# instance fields
.field private doCheck:Z

.field private isPaused:Z

.field private isPresent:Z

.field private isStopped:Z

.field private final tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

.field private watchdogTimeout:I


# direct methods
.method public constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .locals 2
    .param p2, "presenceCheckDelay"    # I
    .param p3, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 103
    iput p2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->watchdogTimeout:I

    .line 104
    iput-object p3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .line 105
    return-void
.end method


# virtual methods
.method public declared-synchronized doResume()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized end()V
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NativeNfcTag"

    const-string v1, "Starting background presence check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    monitor-enter p0

    .line 131
    :cond_1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 133
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    if-nez v0, :cond_2

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 136
    :cond_2
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->watchdogTimeout:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 137
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0

    .line 151
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    invoke-static {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->access$002(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z

    .line 152
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    const-string v0, "NativeNfcTag"

    const-string v1, "Tag lost, restarting polling loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z

    .line 157
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    # getter for: Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I
    invoke-static {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->access$100(Lcom/android/nfc/dhimpl/NativeNfcTag;)I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;->onTagDisconnected(J)V

    .line 160
    :cond_4
    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "NativeNfcTag"

    const-string v1, "Stopping background presence check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_5
    return-void

    .line 152
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
