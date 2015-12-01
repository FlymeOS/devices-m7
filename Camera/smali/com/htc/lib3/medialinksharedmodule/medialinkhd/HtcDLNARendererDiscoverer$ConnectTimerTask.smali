.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;
.super Ljava/util/TimerTask;
.source "HtcDLNARendererDiscoverer.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;


# direct methods
.method private constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$1;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "HtcDLNADiscoverRendererHelper"

    const-string v1, "Renderer discoverer timeout!!!"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimerObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->access$100(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    const/4 v2, 0x1

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mTimeoutFlag:Z
    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->access$202(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;Z)Z

    .line 75
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    monitor-exit v1

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;->onTimeout()V

    .line 79
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer$ConnectTimerTask;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;

    const/4 v2, 0x0

    # setter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->mRendererDiscoverListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;
    invoke-static {v0, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;->access$302(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverer;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcDLNARendererDiscoverListener;

    .line 80
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
