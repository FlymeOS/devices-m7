.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;
.super Ljava/lang/Object;
.source "HtcDLNARendererDiscoverer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcDLNADiscoverRendererHelper"


# instance fields
.field private mDiscoverTimer:Ljava/util/Timer;

.field private mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

.field private mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

.field private mRendererID:Ljava/lang/String;

.field private mRendererIP:J

.field private mStatusBarData:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

.field private mTimeoutFlag:Z

.field private mTimerObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    .line 19
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    .line 20
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    .line 21
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 23
    iput-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;Z)Z
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    return-object p1
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 56
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 60
    return-void
.end method

.method public checkIfMatchRenderer(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 137
    const-string v1, "HtcDLNADiscoverRendererHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkIfMatchRenderer] ip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getIpAddress()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", renderer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 141
    if-nez v2, :cond_0

    .line 142
    monitor-exit v1

    .line 158
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-boolean v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    if-eqz v3, :cond_1

    .line 145
    monitor-exit v1

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getIpAddress()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->isRendererFound(J)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->isRendererFound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 152
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 153
    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNARendererData;->getRendererName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;->onDiscovered(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 156
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getStatusBarData()Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    return-object v0
.end method

.method public isRendererFound(J)Z
    .locals 4

    .prologue
    .line 113
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRendererFound] ip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRendererIP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRendererFound(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 123
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRendererFound] id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRendererID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRendererID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererID:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRendererIP(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 103
    invoke-static {p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    .line 104
    const-string v0, "HtcDLNADiscoverRendererHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererIP] ip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", long = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererIP:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setStatusBarData(Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/lib3/medialinksharedmodule/htcdlnainterface/DLNAStatusBarData;

    .line 182
    return-void
.end method

.method public setTimeout(J)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 43
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z

    .line 44
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    .line 45
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mDiscoverTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$1;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 46
    return-void
.end method

.method public startDiscover(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 169
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mManager:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNAServiceManager;->refreshRendererList()V

    .line 170
    return-void
.end method
