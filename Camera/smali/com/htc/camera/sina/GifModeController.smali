.class public final Lcom/htc/camera/sina/GifModeController;
.super Lcom/htc/camera/component/AsyncCameraThreadComponent;
.source "GifModeController.java"

# interfaces
.implements Lcom/htc/camera/l;
.implements Lcom/htc/camera/z;


# static fields
.field private static m_FirstPictureDegree:I

.field private static m_FirstPicturePortrait:Z


# instance fields
.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureInterval:I

.field private m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

.field private m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

.field private m_FrameIndex:I

.field private m_IsEncodingStartMsgSent:Z

.field private m_IsEntered:Z

.field private m_IsFirstPicture:Z

.field private m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private final m_PreviewCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

.field private final m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

.field private m_ResolutionProvider:Lcom/htc/camera/sina/GifResolutionProvider;

.field private m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private m_SavedPicturePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_StartCaptureTime:J

.field private m_ThumbnailImageManager:Lcom/htc/camera/aj;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;

.field private m_TotalCaptureInterval:J

.field private m_UI:Lcom/htc/camera/sina/GifModeUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/camera/sina/GifModeController;->m_FirstPicturePortrait:Z

    .line 99
    const/4 v0, 0x0

    sput v0, Lcom/htc/camera/sina/GifModeController;->m_FirstPictureDegree:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 459
    const-string v0, "Gif Mode Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 93
    sget-object v0, Lcom/htc/camera/sina/GifModeController$CaptureState;->Unavailable:Lcom/htc/camera/sina/GifModeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_SavedPicturePathList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    .line 111
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 125
    new-instance v0, Lcom/htc/camera/sina/GifModeController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/sina/GifModeController$1;-><init>(Lcom/htc/camera/sina/GifModeController;)V

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 460
    new-instance v0, Lcom/htc/camera/sina/GifResolutionProvider;

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/sina/GifResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProvider:Lcom/htc/camera/sina/GifResolutionProvider;

    .line 461
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/sina/GifModeController;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/camera/sina/GifModeController;->onPreviewCallbackTimeout(I)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/htc/camera/sina/GifModeController;->m_FirstPictureDegree:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/camera/sina/GifModeController;)Lcom/htc/camera/sina/GifModeUI;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/htc/camera/sina/GifModeController;->m_FirstPicturePortrait:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getAvailableExternalStorageSize(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 1256
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 1258
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    .line 1259
    mul-long v0, v3, v1

    return-wide v0
.end method

.method private static getAvailableFileSystemSize()J
    .locals 4

    .prologue
    .line 1248
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    .line 1249
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 1251
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 1252
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTempFileSavingPath(Lcom/htc/camera/HTCCamera;)Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/32 v3, 0x500000

    const/4 v0, 0x0

    .line 1221
    .line 1222
    if-nez p0, :cond_1

    .line 1223
    const-string v1, "GifModeController"

    const-string v2, "getTempFileSavingPath cameraActivity == null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :cond_0
    :goto_0
    return-object v0

    .line 1226
    :cond_1
    invoke-static {}, Lcom/htc/camera/sina/GifModeController;->getAvailableFileSystemSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 1227
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 1228
    if-eqz v1, :cond_2

    .line 1229
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1231
    :cond_2
    const-string v1, "GifModeController"

    const-string v2, "getTempFileSavingPath cameraActivity.getCacheDir() == null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    :cond_3
    sget-object v1, Lcom/htc/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/htc/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

    iget-object v1, v1, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/camera/sina/GifModeController;->getAvailableExternalStorageSize(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/camera/io/StorageSlot;->PHONE_STORAGE:Lcom/htc/camera/io/StorageSlot;

    iget-object v1, v1, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/com.htc.camera/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1237
    :cond_4
    sget-object v1, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    iget-object v1, v1, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/camera/sina/GifModeController;->getAvailableExternalStorageSize(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    iget-object v1, v1, Lcom/htc/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/com.htc.camera/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 557
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 559
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isZoomingSupported()Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method private linkToUI()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 574
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    if-eqz v0, :cond_0

    .line 578
    :goto_0
    return v1

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Gif Mode UI"

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/sina/GifModeUI;

    :goto_1
    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    .line 578
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 578
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private onEntered(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 587
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iput-boolean v1, p0, Lcom/htc/camera/sina/GifModeController;->m_IsEntered:Z

    .line 594
    const-class v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    .line 595
    if-eqz v0, :cond_2

    .line 597
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 598
    invoke-virtual {v0, v3}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 600
    :cond_2
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    .line 601
    if-eqz v0, :cond_3

    .line 602
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProvider:Lcom/htc/camera/sina/GifResolutionProvider;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_5

    .line 607
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 608
    if-eqz v0, :cond_7

    .line 611
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4

    .line 612
    const/4 v1, 0x3

    .line 613
    :cond_4
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProvider:Lcom/htc/camera/sina/GifResolutionProvider;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 614
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_6

    .line 615
    const-string v0, "GifModeController"

    const-string v1, "onEntered() - Resolution provider changed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_5
    :goto_1
    sget-object v0, Lcom/htc/camera/sina/GifModeController$CaptureState;->Ready:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/sina/GifModeController;->setCaptureState(Lcom/htc/camera/sina/GifModeController$CaptureState;)V

    .line 626
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const-string v0, "GifModeController"

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_6
    const-string v0, "GifModeController"

    const-string v1, "onEntered() - Cannot change resolution provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 620
    :cond_7
    const-string v0, "GifModeController"

    const-string v1, "onEntered() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onExited(I)V
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeController;->m_IsEntered:Z

    if-nez v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/sina/GifModeController;->m_IsEntered:Z

    .line 642
    sget-object v0, Lcom/htc/camera/sina/GifModeController$CaptureState;->Unavailable:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/sina/GifModeController;->setCaptureState(Lcom/htc/camera/sina/GifModeController$CaptureState;)V

    .line 645
    invoke-direct {p0, p1}, Lcom/htc/camera/sina/GifModeController;->restoreResolutionProvider(I)V

    goto :goto_0
.end method

.method private onGifSaved(Lcom/htc/camera/io/SaveImageTask;Lcom/htc/camera/io/Path;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1148
    const-string v1, "GifModeController"

    const-string v2, "onImageSaved(\'"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1151
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/aj;->enableAutoUpdate(Lcom/htc/camera/Handle;)V

    .line 1154
    iput-object v4, p0, Lcom/htc/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-virtual {p1}, Lcom/htc/camera/io/SaveImageTask;->getSavedMediaInfo()Lcom/htc/camera/media/MediaInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/camera/aj;->addNewMedia(Lcom/htc/camera/media/MediaInfo;)V

    .line 1173
    :cond_1
    if-nez p2, :cond_3

    .line 1196
    :goto_1
    return-void

    .line 1148
    :cond_2
    const-string v0, "null"

    goto :goto_0

    .line 1180
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_IMAGE:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;

    invoke-static {v0, v1}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Ljava/lang/String;Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_4

    .line 1185
    new-instance v1, Lcom/htc/camera/media/MediaInfo;

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Gif:Lcom/htc/camera/io/FileFormat;

    invoke-direct {v1, v2, p2, v3}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;)V

    .line 1186
    const/16 v2, 0x2718

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1191
    :catch_0
    move-exception v0

    .line 1193
    const-string v1, "GifModeController"

    const-string v2, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1189
    :cond_4
    :try_start_1
    const-string v0, "GifModeController"

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private onPreviewCallbackTimeout(I)V
    .locals 3

    .prologue
    .line 675
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewCallbackTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    sget-object v1, Lcom/htc/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/htc/camera/sina/GifModeController$CaptureState;

    if-eq v0, v1, :cond_0

    .line 679
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewCallbackTimeout() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    sget-object v0, Lcom/htc/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/sina/GifModeController;->setCaptureState(Lcom/htc/camera/sina/GifModeController$CaptureState;)V

    .line 685
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/camera/sina/GifModeController;->onPreviewFrame(I[BLcom/htc/camera/CameraController;I)V

    goto :goto_0
.end method

.method private onPreviewFrame(I[BLcom/htc/camera/CameraController;I)V
    .locals 14

    .prologue
    .line 721
    const-string v1, "GifModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview call-back ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    move v10, v1

    .line 726
    :goto_0
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 728
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/camera/sina/GifModeController;->m_StartCaptureTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureInterval:I

    .line 729
    iget-wide v1, p0, Lcom/htc/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    iget v3, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureInterval:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/htc/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    .line 730
    const-string v1, "GifModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewFrame() - Average capture interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    add-int/lit8 v5, p1, 0x1

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v11

    .line 736
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    sget-object v2, Lcom/htc/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/htc/camera/sina/GifModeController$CaptureState;

    if-ne v1, v2, :cond_14

    .line 737
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    invoke-virtual {v1}, Lcom/htc/camera/sina/GifModeUI;->canCapture()Z

    move-result v1

    .line 743
    :goto_1
    if-eqz v1, :cond_16

    .line 744
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v2, v0

    if-nez v2, :cond_15

    .line 746
    :cond_1
    const-string v1, "GifModeController"

    const-string v2, "onPreviewFrame() - No memory for YUV RAW data, stop capturing"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v1, 0x0

    move v9, v1

    .line 758
    :goto_2
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    iget v1, v1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/lit8 v7, v1, 0x5a

    .line 759
    const/16 v1, 0x10e

    if-le v7, v1, :cond_19

    .line 760
    const/4 v7, 0x0

    .line 768
    :cond_2
    :goto_3
    iget-boolean v1, p0, Lcom/htc/camera/sina/GifModeController;->m_IsFirstPicture:Z

    if-eqz v1, :cond_3

    .line 769
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    .line 770
    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    sput-boolean v2, Lcom/htc/camera/sina/GifModeController;->m_FirstPicturePortrait:Z

    .line 773
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 774
    iget v2, v1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sput v2, Lcom/htc/camera/sina/GifModeController;->m_FirstPictureDegree:I

    .line 775
    iget v2, v1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1b

    .line 776
    const/16 v1, 0x10e

    sput v1, Lcom/htc/camera/sina/GifModeController;->m_FirstPictureDegree:I

    .line 787
    :cond_3
    :goto_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/camera/sina/GifModeController;->m_IsFirstPicture:Z

    .line 791
    if-eqz p2, :cond_1d

    .line 793
    const-string v1, "GifModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewFrame() - m_GifModeImageCounter :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    if-eqz v9, :cond_4

    const/16 v1, 0x13

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    invoke-virtual {v1}, Lcom/htc/camera/sina/GifModeUI;->canCapture()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_4
    const/4 v6, 0x1

    .line 796
    :goto_5
    new-instance v1, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;

    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v8, 0x1

    move-object v2, p0

    move v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v8}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;-><init>(Lcom/htc/camera/sina/GifModeController;Lcom/htc/camera/CaptureHandle;I[BZIZ)V

    .line 806
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v2, :cond_5

    .line 807
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-interface {v2}, Lcom/htc/camera/aj;->disableAutoUpdate()Lcom/htc/camera/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    :cond_5
    move-object v2, v1

    .line 813
    :goto_6
    if-eqz v9, :cond_22

    .line 815
    const-class v1, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-virtual {p0, v1}, Lcom/htc/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/IMediaFileWriter;

    .line 816
    invoke-interface {v1}, Lcom/htc/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v3

    .line 817
    invoke-interface {v1}, Lcom/htc/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v5

    .line 818
    long-to-double v7, v5

    long-to-double v12, v3

    div-double/2addr v7, v12

    .line 820
    const-string v1, "GifModeController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onPreviewFrame() - File buffer : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v7

    double-to-int v4, v4

    int-to-double v4, v4

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-wide v3, 0x3fee666660000000L    # 0.949999988079071

    cmpl-double v1, v7, v3

    if-ltz v1, :cond_22

    .line 823
    const/4 v9, 0x0

    .line 824
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    if-eqz v1, :cond_6

    .line 825
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 827
    :cond_6
    invoke-virtual {v2}, Lcom/htc/camera/sina/GifModeController$SaveGifImageTask;->clearJpegRawData()V

    .line 828
    const/4 v1, 0x0

    .line 829
    const-string v2, "GifModeController"

    const-string v3, "onPreviewFrame() - buffer size is leak"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    move v2, v9

    .line 834
    :goto_7
    if-eqz v2, :cond_7

    if-nez p1, :cond_7

    .line 836
    const-class v1, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-virtual {p0, v1}, Lcom/htc/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/IMediaFileWriter;

    .line 837
    if-eqz v1, :cond_1e

    .line 839
    iget-object v4, p0, Lcom/htc/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v4}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 840
    new-instance v4, Lcom/htc/camera/CloseableHandleReference;

    invoke-interface {v1}, Lcom/htc/camera/io/IMediaFileWriter;->suspendUpdatingMediaStore()Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v4, p0, Lcom/htc/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 847
    :cond_7
    :goto_8
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    if-eqz v1, :cond_9

    .line 848
    if-nez v3, :cond_8

    .line 849
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 851
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {v11, v1}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 852
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 856
    :cond_9
    if-eqz v3, :cond_20

    .line 857
    if-eqz v2, :cond_1f

    .line 858
    iput-object v3, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 870
    :cond_a
    :goto_9
    monitor-enter p0

    .line 872
    if-eqz v2, :cond_21

    .line 873
    add-int/lit8 v1, p1, 0x1

    :try_start_0
    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/sina/GifModeController;->takeNextPicture(ILcom/htc/camera/CameraController;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 875
    const-string v1, "GifModeController"

    const-string v2, "onPreviewFrame() - Cannot take next picture, stop capturing"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const/4 v1, 0x0

    .line 881
    :goto_a
    if-nez v1, :cond_11

    .line 884
    iget-object v1, v11, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 885
    sget-object v1, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    invoke-virtual {v11, v1}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 888
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/htc/camera/CameraController;->stopPreview()V

    .line 891
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    sget-object v2, Lcom/htc/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/htc/camera/sina/GifModeController$CaptureState;

    if-ne v1, v2, :cond_c

    .line 893
    sget-object v1, Lcom/htc/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v1}, Lcom/htc/camera/sina/GifModeController;->setCaptureState(Lcom/htc/camera/sina/GifModeController$CaptureState;)V

    .line 897
    :cond_c
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    if-eqz v1, :cond_d

    .line 898
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 899
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {v11, v1}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 900
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 903
    :cond_d
    const-string v1, "GifModeController"

    const-string v2, "onPreviewFrame() - Stop capturing"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v1}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 909
    if-eqz v10, :cond_e

    if-lez p1, :cond_f

    .line 911
    :cond_e
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v11, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 912
    if-eqz v10, :cond_f

    .line 914
    const-string v1, "GifModeController"

    const-string v2, "onPreviewFrame() - Close camera for recovering"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {v11}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 924
    :cond_f
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/htc/camera/sina/GifModeController;->m_IsEncodingStartMsgSent:Z

    if-nez v1, :cond_10

    .line 925
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    const/16 v3, 0x2710

    add-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/sina/GifModeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 926
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/sina/GifModeController;->m_IsEncodingStartMsgSent:Z

    .line 930
    :cond_10
    sget-object v1, Lcom/htc/camera/sina/GifModeController$CaptureState;->Ready:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v1}, Lcom/htc/camera/sina/GifModeController;->setCaptureState(Lcom/htc/camera/sina/GifModeController$CaptureState;)V

    .line 931
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 933
    :cond_11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    return-void

    .line 723
    :cond_12
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_0

    .line 737
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 739
    :cond_14
    const-string v1, "GifModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewFrame() -Capture State is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stop taking picture."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 749
    :cond_15
    const/16 v2, 0x13

    if-lt p1, v2, :cond_18

    .line 751
    const-string v1, "GifModeController"

    const-string v2, "onPreviewFrame() - Gif mode is 20-shots, stop taking picture."

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_2

    .line 755
    :cond_16
    if-eqz p2, :cond_17

    move-object/from16 v0, p2

    array-length v2, v0

    if-nez v2, :cond_18

    .line 756
    :cond_17
    const-string v2, "GifModeController"

    const-string v3, "onPreviewFrame() - No memory for YUV RAW data"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move v9, v1

    goto/16 :goto_2

    .line 761
    :cond_19
    const/16 v1, 0xb4

    if-le v7, v1, :cond_1a

    .line 762
    const/16 v7, 0x5a

    goto/16 :goto_3

    .line 763
    :cond_1a
    const/16 v1, 0x5a

    if-le v7, v1, :cond_2

    .line 764
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 777
    :cond_1b
    iget v1, v1, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_3

    .line 778
    const/16 v1, 0x5a

    sput v1, Lcom/htc/camera/sina/GifModeController;->m_FirstPictureDegree:I

    goto/16 :goto_4

    .line 795
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 809
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 843
    :cond_1e
    const-string v1, "GifModeController"

    const-string v4, "onPreviewFrame() - No IMediaFileWriter interface"

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 860
    :cond_1f
    invoke-virtual {v11, v3}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto/16 :goto_9

    .line 863
    :cond_20
    if-nez v10, :cond_a

    and-int/lit8 v1, p4, 0x4

    if-nez v1, :cond_a

    if-nez p1, :cond_a

    .line 865
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/CaptureEventArgs;

    iget-object v4, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    sget-object v5, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v3, v4, v5}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v1, p0, v3}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_9

    .line 933
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_21
    move v1, v2

    goto/16 :goto_a

    :cond_22
    move-object v3, v2

    move v2, v9

    goto/16 :goto_7
.end method

.method private onThumbnailImageCreated(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 941
    const-string v0, "GifModeController"

    const-string v1, "onThumbnailImageCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-interface {v0, p1, p2}, Lcom/htc/camera/aj;->updateThumbnailImageDirectly(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    :goto_0
    if-eqz p2, :cond_0

    .line 953
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 955
    :cond_0
    return-void

    .line 948
    :cond_1
    :try_start_1
    const-string v0, "GifModeController"

    const-string v1, "onThumbnailImageCreated() - No IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_2

    .line 953
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 952
    :cond_2
    throw v0
.end method

.method private restoreResolutionProvider(I)V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 655
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 656
    if-eqz v0, :cond_2

    .line 658
    const/4 v1, 0x2

    .line 659
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    .line 660
    const/4 v1, 0x0

    .line 661
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 662
    const-string v0, "GifModeController"

    const-string v1, "restoreResolutionProvider() - Resolution provider restored"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 668
    :cond_1
    return-void

    .line 665
    :cond_2
    const-string v0, "GifModeController"

    const-string v1, "restoreResolutionProvider() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCaptureState(Lcom/htc/camera/sina/GifModeController$CaptureState;)V
    .locals 3

    .prologue
    .line 962
    const-string v0, "GifModeController"

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 963
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    .line 964
    return-void
.end method

.method private takeNextPicture(ILcom/htc/camera/CameraController;)Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x140

    const/4 v7, 0x0

    .line 971
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 974
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    const-string v0, "GifModeController"

    const-string v1, "takeNextPicture() - Preview resource is unavailable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    monitor-exit v8

    move v0, v7

    .line 1022
    :goto_0
    return v0

    .line 980
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/htc/camera/sina/GifModeController;->m_StartCaptureTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    .line 981
    iget-wide v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 982
    monitor-exit v8

    move v0, v7

    goto :goto_0

    .line 984
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/sina/GifModeController;->m_StartCaptureTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    .line 985
    cmp-long v2, v0, v9

    if-gez v2, :cond_2

    .line 987
    :try_start_1
    const-string v2, "GifModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps is 4 fps up, go to sleep. minInterval is 320, interval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/camera/sina/GifModeController;->m_StartCaptureTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    sub-long v0, v9, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 999
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    :goto_2
    const-string v1, "GifModeController"

    const-string v2, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "]"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1006
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/camera/sina/GifModeController;->m_StartCaptureTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1009
    :try_start_3
    invoke-virtual {p2, p0}, Lcom/htc/camera/CameraController;->setOneShotPreviewCallback(Lcom/htc/camera/l;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1022
    const/4 v0, 0x1

    :try_start_4
    monitor-exit v8

    goto/16 :goto_0

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1002
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1011
    :catch_0
    move-exception v1

    .line 1013
    :try_start_5
    const-string v2, "GifModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeNextPicture() - Cannot take picture ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1014
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v1, :cond_4

    .line 1016
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v1, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1017
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1019
    :cond_4
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v7

    goto/16 :goto_0

    .line 989
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public addSavedPictureToList(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_SavedPicturePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1102
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1104
    const-string v1, "GifModeController"

    const-string v2, "Not NvidiaPlatform , without cancel"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    :cond_0
    :goto_0
    return v0

    .line 1108
    :cond_1
    if-eqz p1, :cond_0

    .line 1111
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq p1, v1, :cond_2

    .line 1113
    const-string v1, "GifModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle is not equal , handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/camera/CaptureHandle;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    sget-object v2, Lcom/htc/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/htc/camera/sina/GifModeController$CaptureState;

    if-eq v1, v2, :cond_3

    .line 1120
    const-string v1, "GifModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1124
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1126
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 1128
    const-string v0, "GifModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTimer ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v2, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1126
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 1132
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1137
    :cond_5
    sget-object v0, Lcom/htc/camera/sina/GifModeController$CaptureState;->Stopping:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/sina/GifModeController;->setCaptureState(Lcom/htc/camera/sina/GifModeController$CaptureState;)V

    .line 1138
    iget v0, p0, Lcom/htc/camera/sina/GifModeController;->m_FrameIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/htc/camera/sina/GifModeController;->onPreviewFrame(I[BLcom/htc/camera/CameraController;I)V

    .line 1140
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public clearSavedPictureList()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_SavedPicturePathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    return-void
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    .line 471
    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 473
    invoke-super {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 474
    return-void
.end method

.method public getSavedPictureList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_SavedPicturePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 482
    iget v0, p1, Landroid/os/Message;->what:I

    .line 485
    invoke-super {p0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 488
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 534
    invoke-super {p0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 537
    :goto_0
    :sswitch_0
    return-void

    .line 500
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/sina/GifModeController;->onEntered(I)V

    goto :goto_0

    .line 505
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/sina/GifModeController;->onExited(I)V

    goto :goto_0

    .line 516
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 517
    if-eqz v0, :cond_0

    .line 518
    aget-object v1, v0, v2

    check-cast v1, Lcom/htc/camera/io/SaveImageTask;

    .line 519
    aget-object v0, v0, v3

    check-cast v0, Lcom/htc/camera/io/Path;

    .line 522
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/htc/camera/sina/GifModeController;->onGifSaved(Lcom/htc/camera/io/SaveImageTask;Lcom/htc/camera/io/Path;)V

    goto :goto_0

    .line 528
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 529
    aget-object v1, v0, v2

    check-cast v1, Lcom/htc/camera/media/MediaInfo;

    aget-object v0, v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/sina/GifModeController;->onThumbnailImageCreated(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_2
        0x2717 -> :sswitch_3
        0x2718 -> :sswitch_4
        0x271b -> :sswitch_0
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 546
    invoke-super {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 549
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 550
    return-void
.end method

.method public onPreviewFrame([BLcom/htc/camera/CameraController;)V
    .locals 3

    .prologue
    .line 695
    iget v0, p0, Lcom/htc/camera/sina/GifModeController;->m_FrameIndex:I

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 697
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 698
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/camera/sina/GifModeController;->m_FrameIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 704
    :cond_0
    :goto_0
    sget-object v0, Lcom/htc/camera/sina/GifModeController$2;->$SwitchMap$com$htc$camera$sina$GifModeController$CaptureState:[I

    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/sina/GifModeController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 710
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewFrame() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureState:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :goto_1
    return-void

    .line 701
    :cond_1
    const-string v0, "GifModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewFrame() - Frame index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/sina/GifModeController;->m_FrameIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but there is no timeout timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/sina/GifModeController;->m_FrameIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/camera/sina/GifModeController;->onPreviewFrame(I[BLcom/htc/camera/CameraController;I)V

    .line 716
    iget v0, p0, Lcom/htc/camera/sina/GifModeController;->m_FrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/sina/GifModeController;->m_FrameIndex:I

    goto :goto_1

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1033
    iget-boolean v0, p0, Lcom/htc/camera/sina/GifModeController;->m_IsEntered:Z

    if-nez v0, :cond_0

    move v0, v7

    .line 1093
    :goto_0
    return v0

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-nez v0, :cond_1

    .line 1039
    const-class v0, Lcom/htc/camera/aj;

    invoke-virtual {p0, v0}, Lcom/htc/camera/sina/GifModeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aj;

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 1040
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-nez v0, :cond_1

    .line 1041
    const-string v0, "GifModeController"

    const-string v1, "takePicture() - Cannot find IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-interface {v0}, Lcom/htc/camera/aj;->disableAutoUpdate()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    .line 1049
    :cond_2
    iput-boolean v8, p0, Lcom/htc/camera/sina/GifModeController;->m_IsFirstPicture:Z

    .line 1050
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TotalCaptureInterval:J

    .line 1051
    iput v7, p0, Lcom/htc/camera/sina/GifModeController;->m_FrameIndex:I

    .line 1052
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1053
    iput-object p1, p0, Lcom/htc/camera/sina/GifModeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1054
    iput-boolean v7, p0, Lcom/htc/camera/sina/GifModeController;->m_IsEncodingStartMsgSent:Z

    .line 1056
    sget-object v0, Lcom/htc/camera/sina/GifModeController$CaptureState;->Capturing:Lcom/htc/camera/sina/GifModeController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/sina/GifModeController;->setCaptureState(Lcom/htc/camera/sina/GifModeController$CaptureState;)V

    .line 1059
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_3

    .line 1061
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "FRAME [0]"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 1062
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1067
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/FlashMode;->Torch:Lcom/htc/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 1069
    const-string v0, "GifModeController"

    const-string v1, "change flash mode, wait 200ms"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1076
    :goto_1
    const-string v0, "GifModeController"

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/sina/GifModeController;->m_StartCaptureTime:J

    .line 1080
    invoke-virtual {p2, p0}, Lcom/htc/camera/CameraController;->setOneShotPreviewCallback(Lcom/htc/camera/l;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 1093
    goto/16 :goto_0

    .line 1073
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    goto :goto_1

    .line 1082
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1084
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_5

    .line 1086
    iget-object v2, p0, Lcom/htc/camera/sina/GifModeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v2, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1087
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeController;->m_PreviewTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1089
    :cond_5
    throw v1
.end method
