.class final Lcom/htc/camera/duallens/DualLensServiceManager;
.super Lcom/htc/camera/duallens/c;
.source "DualLensServiceManager.java"


# instance fields
.field private m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

.field private m_DualLensServiceConnection:Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;

.field private final m_FilePathQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsActivityPaused:Z

.field private m_IsServiceBound:Z

.field private final m_OnGoingCaptures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/CaptureHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SuspensionHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 82
    const-string v0, "Dual-lens Service Manager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/duallens/c;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_FilePathQueue:Ljava/util/Queue;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_SuspensionHandles:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/duallensservice/IDuallensService;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager;->onServiceBound(Lcom/htc/duallensservice/IDuallensService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/duallens/DualLensServiceManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/duallens/DualLensServiceManager;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager;->resumeDualLensServiceInternal(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager;->onCaptureFailedOrCanceled(Lcom/htc/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/duallens/DualLensServiceManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager;->onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/duallensservice/IDuallensService;)Lcom/htc/duallensservice/IDuallensService;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/duallens/DualLensServiceManager;I)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/component/Component;IZ)Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/duallens/DualLensServiceManager;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/camera/duallens/DualLensServiceManager;I)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/component/Component;IZ)Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/duallens/DualLensServiceManager;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/duallens/DualLensServiceManager;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/camera/duallens/DualLensServiceManager;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->suspendDualLensServiceInternal()V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensServiceConnection:Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.duallensservice.ConnectRemoteService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.htc.album"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "bindService() - Bind dual-lens service"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/duallens/DualLensServiceManager$1;)V

    iput-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensServiceConnection:Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;

    .line 103
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensServiceConnection:Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/camera/HTCCamera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsServiceBound:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "bindService() - Fail to start dual-lens service"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 106
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "bindService() - Fail to start dual-lens service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private canResumeDualLensService()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_SuspensionHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "canResumeDualLensService() - Service is suspended by other component"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 153
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "canResumeDualLensService() - Zoe is active"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 130
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "canResumeDualLensService() - Camera mode is video"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 149
    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onCaptureFailedOrCanceled(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 334
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureFailedOrCanceled() - Activity is paused and all media are saved, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->unbindService()V

    .line 342
    :cond_0
    return-void
.end method

.method private onMediaSaved(Lcom/htc/camera/io/MediaSaveEventArgs;)V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 368
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v0}, Lcom/htc/camera/media/MediaInfo;->isImage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Activity is paused and all media are saved, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :goto_0
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->unbindService()V

    .line 399
    :cond_1
    return-void

    .line 370
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 393
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Activity is paused and all media are saved, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_3
    :try_start_2
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->isDualLens:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 393
    :cond_4
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Activity is paused and all media are saved, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_5
    :try_start_3
    iget-boolean v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->isLastMediaInCapture:Z

    if-eqz v0, :cond_6

    .line 376
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, ".+_BURST.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, ".+_COVER\\..+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    .line 393
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Activity is paused and all media are saved, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_6
    :try_start_4
    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, ".+_COVER\\..+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    iget-object v0, v0, Lcom/htc/camera/media/MediaInfo;->filePath:Lcom/htc/camera/io/Path;

    iget-object v0, v0, Lcom/htc/camera/io/Path;->fileName:Ljava/lang/String;

    const-string v1, "^ZOE_.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_8

    .line 393
    :cond_7
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Activity is paused and all media are saved, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 381
    :cond_8
    :try_start_5
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    if-nez v0, :cond_9

    .line 383
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - No dual-lens service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 393
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Activity is paused and all media are saved, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    :cond_9
    :try_start_6
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_FilePathQueue:Ljava/util/Queue;

    iget-object v1, p1, Lcom/htc/camera/io/MediaSaveEventArgs;->mediaInfo:Lcom/htc/camera/media/MediaInfo;

    invoke-virtual {v1}, Lcom/htc/camera/media/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->startDualLensService()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 393
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Activity is paused and all media are saved, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a

    .line 395
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSaved() - Activity is paused and all media are saved, unbind service"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->unbindService()V

    .line 393
    :cond_a
    throw v0
.end method

.method private onServiceBound(Lcom/htc/duallensservice/IDuallensService;)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "onServiceBound() - Dual-lens service connected"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iput-object p1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    .line 351
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->canResumeDualLensService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->suspendDualLensServiceInternal()V

    .line 353
    :cond_0
    return-void
.end method

.method private resumeDualLensServiceInternal(Z)V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    if-eqz v0, :cond_0

    .line 433
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->canResumeDualLensService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeDualLensServiceInternal() - Resume service later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeDualLensServiceInternal()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    invoke-interface {v0}, Lcom/htc/duallensservice/IDuallensService;->resume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->startDualLensService()V

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 447
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "resumeDualLensServiceInternal() - Fail to resume dual-lens service"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private startDualLensService()V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_FilePathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    if-nez v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "startDualLensService() - No dual-lens service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 515
    sget-object v2, Lcom/htc/camera/duallens/DualLensServiceManager$11;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 525
    sget-object v2, Lcom/htc/camera/duallens/DualLensServiceManager$11;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, v1, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    .line 537
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_FilePathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_FilePathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "startDualLensService() - File path : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    const-string v2, "CameraShot"

    invoke-interface {v1, v0, v2}, Lcom/htc/duallensservice/IDuallensService;->initalizeEngine(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 545
    :catch_0
    move-exception v0

    .line 547
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "startDualLensService() - Fail to notify dual-lens service"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 520
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDualLensService() - Taking picture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start service later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDualLensService() - Recording state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start service later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 525
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private suspendDualLensServiceInternal()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    if-eqz v0, :cond_0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "suspendDualLensServiceInternal()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    invoke-interface {v0}, Lcom/htc/duallensservice/IDuallensService;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 589
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "suspendDualLensServiceInternal() - Fail to abort dual-lens service"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unbindService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 599
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensServiceConnection:Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;

    if-eqz v0, :cond_1

    .line 601
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->resumeDualLensServiceInternal(Z)V

    .line 602
    iget-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsServiceBound:Z

    if-eqz v0, :cond_0

    .line 606
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "unbindService() - Unbind dual-lens service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensServiceConnection:Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :goto_0
    iput-boolean v3, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsServiceBound:Z

    .line 618
    :cond_0
    iput-object v4, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensServiceConnection:Lcom/htc/camera/duallens/DualLensServiceManager$DualLensServiceConnection;

    .line 619
    iput-object v4, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    .line 621
    :cond_1
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 611
    :try_start_1
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "unbindService() - Fail to unbind service"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsServiceBound:Z

    throw v0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->unbindService()V

    .line 166
    invoke-super {p0}, Lcom/htc/camera/duallens/c;->deinitializeOverride()V

    .line 167
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Lcom/htc/camera/duallens/c;->handleMessage(Landroid/os/Message;)V

    .line 197
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    .line 179
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_OnGoingCaptures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Activity is paused, unbind service"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->unbindService()V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Activity is paused but not all media are saved, unbind service later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_IsActivityPaused:Z

    .line 190
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->bindService()V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 206
    invoke-super {p0}, Lcom/htc/camera/duallens/c;->initializeOverride()V

    .line 209
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 212
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$1;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 240
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$2;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 251
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$3;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 268
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$4;

    iget-object v3, v0, Lcom/htc/camera/CameraThread;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/duallens/DualLensServiceManager$4;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v1, v1, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$5;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 292
    :cond_0
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->captureCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$6;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 300
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$7;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 308
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->captureStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$8;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 316
    sget-object v1, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/duallens/DualLensServiceManager$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/duallens/DualLensServiceManager$9;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraThread;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 326
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->bindService()V

    .line 327
    return-void
.end method

.method public resumeDualLensService(Lcom/htc/camera/Handle;)V
    .locals 2

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->threadAccessCheck()V

    .line 410
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeDualLensService() - Handle : "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    if-nez p1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeDualLensService() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_SuspensionHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "resumeDualLensService() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_SuspensionHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->resumeDualLensServiceInternal(Z)V

    goto :goto_0
.end method

.method public setDualLensServiceState(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "setWarpOperation("

    const-string v2, ") - Called from another thread"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    new-instance v0, Lcom/htc/camera/duallens/DualLensServiceManager$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager$10;-><init>(Lcom/htc/camera/duallens/DualLensServiceManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/duallens/DualLensServiceManager;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    .line 492
    :goto_0
    return v0

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    if-nez v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "setWarpOperation() - No dual-lens service"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "setWarpOperation("

    const-string v3, ")"

    invoke-static {v1, v2, p1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_DualLensService:Lcom/htc/duallensservice/IDuallensService;

    invoke-interface {v1, p1}, Lcom/htc/duallensservice/IDuallensService;->forceWarp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    const/4 v0, 0x1

    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 491
    iget-object v2, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "setWarpOperation() - Fail to set warp operation"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public suspendDualLensService()Lcom/htc/camera/Handle;
    .locals 5

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->threadAccessCheck()V

    .line 562
    invoke-virtual {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "suspendDualLensService() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    .line 576
    :cond_0
    :goto_0
    return-object v0

    .line 569
    :cond_1
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "DualLensServiceSuspension"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_SuspensionHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "suspendDualLensService() - Handle : "

    const-string v3, ", handle count : "

    iget-object v4, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_SuspensionHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 574
    iget-object v1, p0, Lcom/htc/camera/duallens/DualLensServiceManager;->m_SuspensionHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/htc/camera/duallens/DualLensServiceManager;->suspendDualLensServiceInternal()V

    goto :goto_0
.end method
