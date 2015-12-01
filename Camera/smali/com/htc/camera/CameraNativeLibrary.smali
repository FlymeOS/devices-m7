.class public final Lcom/htc/camera/CameraNativeLibrary;
.super Ljava/lang/Object;
.source "CameraNativeLibrary.java"


# static fields
.field private static m_IsLibraryInitialized:Z

.field private static m_IsLibraryLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize()V
    .locals 4

    .prologue
    .line 19
    const-class v1, Lcom/htc/camera/CameraNativeLibrary;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/camera/CameraNativeLibrary;->m_IsLibraryInitialized:Z

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/htc/camera/CameraNativeLibrary;->load()V

    .line 22
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    sget-object v2, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v2, v2, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    sget-boolean v3, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    invoke-static {v0, v2, v3}, Lcom/htc/camera/CameraNativeLibrary;->initialize(IIZ)Z

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/CameraNativeLibrary;->m_IsLibraryInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    monitor-exit v1

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native initialize(IIZ)Z
.end method

.method public static declared-synchronized load()V
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/htc/camera/CameraNativeLibrary;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/camera/CameraNativeLibrary;->m_IsLibraryLoaded:Z

    if-nez v0, :cond_0

    .line 35
    const-string v0, "morpho_image_stitcher3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const-string v0, "panostitcher"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    const-string v0, "panoramaplus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v0, "htccamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/CameraNativeLibrary;->m_IsLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit v1

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
