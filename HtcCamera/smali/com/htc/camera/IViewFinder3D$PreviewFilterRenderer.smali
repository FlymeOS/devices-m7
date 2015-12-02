.class public abstract Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;
.super Ljava/lang/Object;
.source "IViewFinder3D.java"


# instance fields
.field private m_IsInitializing:Z

.field private volatile m_RendererThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized deinitialize()V
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_RendererThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_RendererThread:Ljava/lang/Thread;

    .line 48
    invoke-virtual {p0}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->onDeinitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_IsInitializing:Z

    if-eqz v0, :cond_1

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_IsInitializing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 53
    :cond_1
    :try_start_2
    const-string v0, "PreviewFilterRenderer"

    const-string v1, "deinitialize() - Illegal thread access"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized drawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_IsInitializing:Z

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_IsInitializing:Z

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_RendererThread:Ljava/lang/Thread;

    .line 65
    invoke-virtual {p0, p1}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->onInitialize(Lcom/htc/camera/PreviewFilterEventArgs;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_RendererThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->onDrawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_1
    const-string v0, "PreviewFilterRenderer"

    const-string v1, "drawFrame() - Illegal thread access"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized initialize()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_RendererThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->m_IsInitializing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    const-string v0, "PreviewFilterRenderer"

    const-string v1, "initialize() - Illegal thread access"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPreviewRenderer()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public final notifySurfaceChanged(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;->onSurfaceChanged(Lcom/htc/camera/PreviewFilterEventArgs;)V

    .line 98
    return-void
.end method

.method protected abstract onDeinitialize()V
.end method

.method protected abstract onDrawFrame(Lcom/htc/camera/Draw3DPreviewFilterEventArgs;)V
.end method

.method protected abstract onInitialize(Lcom/htc/camera/PreviewFilterEventArgs;)V
.end method

.method protected onSurfaceChanged(Lcom/htc/camera/PreviewFilterEventArgs;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
