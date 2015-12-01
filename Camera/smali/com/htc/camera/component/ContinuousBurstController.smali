.class public final Lcom/htc/camera/component/ContinuousBurstController;
.super Lcom/htc/camera/component/AsyncCameraThreadComponent;
.source "ContinuousBurstController.java"

# interfaces
.implements Lcom/htc/camera/k;
.implements Lcom/htc/camera/m;
.implements Lcom/htc/camera/z;


# static fields
.field static final DEFAULT_UNLIMITED_PICTURE_COUNT:I

.field private static final SHUTTER_SOUND_LENGTH:I

.field private static final m_DcfInfo:Lcom/htc/camera/io/DCFInfo;


# instance fields
.field private mAudioManager:Lcom/htc/camera/IAudioManager;

.field private final mContiBurstSupportMode:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

.field private m_BucketId:Ljava/lang/String;

.field private m_BurstFps:Ljava/lang/Integer;

.field private m_BurstMode:I

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureInterval:I

.field private m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

.field private m_ContDroppingCounter:I

.field private m_ContinuousBurstImageCounter:I

.field private m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

.field private m_DropState:Lcom/htc/camera/component/ContinuousBurstController$DropState;

.field private m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

.field private m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

.field private m_FirstJpegRawData:[B

.field private m_GotFirstPicture:Z

.field private m_IfGotHTCCallback:Z

.field private m_ImageCounter:Lcom/htc/camera/io/FileCounter;

.field private m_IsCaptureModeChanged:Z

.field private m_IsEntered:Z

.field private m_IsFirstPicture:Z

.field private m_IsSavingPhotos:Z

.field private m_IsSavingStartMsgSent:Z

.field private m_IsSecondPictureTaken:Z

.field private m_IsShutterSoundPlayed:Z

.field private final m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_JpegIndex:I

.field private final m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

.field private m_MaxPictureCount:I

.field private m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_Orientation:I

.field private m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

.field private m_PhotoSize:Lcom/htc/camera/imaging/Size;

.field private m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_SavedBurstImageCount:I

.field private final m_SavedImageTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShutterIndex:I

.field private m_ShutterSoundDelay:I

.field private m_ShutterSoundHandle:Lcom/htc/camera/Handle;

.field private m_ShutterSoundStartTime:Ljava/lang/Long;

.field private m_ShutterSoundStreamHandle:Lcom/htc/camera/Handle;

.field private m_StartTime:J

.field private m_TakePictureIndex:I

.field private m_ThumbnailImageManager:Lcom/htc/camera/aj;

.field private m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;

.field private m_TotalCaptureInterval:J

.field private m_UI:Lcom/htc/camera/component/ContinuousBurstUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/htc/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    .line 103
    sget-object v0, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    sput-object v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 146
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getBurstContinueousShotCount()I

    move-result v0

    sput v0, Lcom/htc/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    .line 148
    new-instance v0, Lcom/htc/camera/component/x;

    invoke-direct {v0}, Lcom/htc/camera/component/x;-><init>()V

    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->registerFileNameChecker(Lcom/htc/camera/io/c;)V

    .line 160
    return-void

    .line 88
    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 413
    const-string v0, "Continuous Burst Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 168
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    .line 190
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 191
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    .line 215
    const/16 v0, 0x190

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundDelay:I

    .line 221
    new-instance v0, Lcom/htc/camera/component/ContinuousBurstController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/ContinuousBurstController$2;-><init>(Lcom/htc/camera/component/ContinuousBurstController;)V

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 415
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getContiBurstSupportMode()Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mContiBurstSupportMode:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraController$ContiBurstSupportMode;->Auto:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mContiBurstSupportMode:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ContinuousBurstController;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ContinuousBurstController;->onJpegCallbackTimeout(I)V

    return-void
.end method

.method static synthetic access$100()Lcom/htc/camera/io/DCFInfo;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/ContinuousBurstController;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/camera/component/ContinuousBurstController;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/camera/component/ContinuousBurstController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/ContinuousBurstController;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/ContinuousBurstController;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/io/Path;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/ContinuousBurstController;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_Orientation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/ContinuousBurstController;Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/io/FileCounter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/io/FileCounter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ImageCounter:Lcom/htc/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/imaging/Size;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/ContinuousBurstController;)Lcom/htc/camera/component/ContinuousBurstUI;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/ContinuousBurstController;Lcom/htc/camera/CameraController;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ContinuousBurstController;->setupParamsBeforeTakingPicture(Lcom/htc/camera/CameraController;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/ContinuousBurstController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/ContinuousBurstController;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    return v0
.end method

.method private findNextDirectoryCounters()Z
    .locals 6

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    .line 443
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 444
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 445
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    invoke-static {v1}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    .line 457
    :cond_0
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 458
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ImageCounter:Lcom/htc/camera/io/FileCounter;

    .line 461
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 714
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v0

    .line 717
    :cond_1
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isSupportContinuousBurstShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToUI()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 728
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_0

    .line 732
    :goto_0
    return v1

    .line 730
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Continuous Burst UI"

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ContinuousBurstUI;

    :goto_1
    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    .line 732
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 731
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 732
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private onBurstModeChanged(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 741
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v0, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 747
    iput p1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 750
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_3

    .line 754
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    .line 767
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v4, :cond_4

    .line 769
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_6

    .line 776
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 783
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    if-eqz v0, :cond_5

    .line 785
    iput-boolean v5, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 786
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Handle JPEG data again"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1, v5}, Lcom/htc/camera/component/ContinuousBurstController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 792
    :cond_5
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 794
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-ne v0, v1, :cond_7

    .line 799
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Start taking burst shots for nVidia platform"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, v4}, Lcom/htc/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Cannot take next picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    :pswitch_1
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v0, v4, :cond_3

    .line 758
    invoke-direct {p0, v5}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    .line 761
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    .line 779
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - No camera controller to update time-consuming post-processing mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 804
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Cannot start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onEntered()V
    .locals 2

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    .line 820
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 823
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExited()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 833
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iput-boolean v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 839
    iput-boolean v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 840
    iput v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 841
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 844
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_4

    .line 850
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - Set capture mode to normal"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v1, "capture-mode-values"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 853
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 866
    :goto_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 870
    :goto_2
    iput-boolean v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    goto :goto_0

    .line 855
    :cond_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 856
    const-string v1, "capture-mode"

    const-string v2, "zsl"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 858
    :cond_3
    const-string v1, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 869
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onExited() - No camera controller to reset capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onImageSaveFailed(ILcom/htc/camera/io/Path;)V
    .locals 6

    .prologue
    .line 922
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageSaveFailed() - Index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", file path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v1, :cond_1

    .line 927
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageSaveFailed() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaveFailed() - Stop capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 934
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_2

    .line 937
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaveFailed() - stop driver capturing"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v1, "contiburst-state"

    const-string v2, "contiburst-done"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v0, :cond_3

    .line 942
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2710

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    .line 946
    :cond_3
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 947
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    .line 948
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaveFailed- onPictureTaken"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/ContinuousBurstController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 950
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    goto :goto_0
.end method

.method private onImageSaved(Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;Lcom/htc/camera/io/Path;)V
    .locals 7

    .prologue
    .line 879
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaved(\'"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 882
    if-nez p2, :cond_1

    .line 915
    :goto_1
    return-void

    .line 879
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 889
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    .line 890
    iget-object v1, p1, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v4, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    iget v4, v4, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 893
    if-nez v0, :cond_3

    .line 894
    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_IMAGE:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;

    invoke-static {v0, v1}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Ljava/lang/String;Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 897
    :goto_2
    if-eqz v6, :cond_2

    .line 899
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    const/4 v1, 0x0

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-wide v4, p1, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->takenDateTime:J

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;J)V

    .line 900
    const/16 v2, 0x2718

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v6, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    :goto_3
    invoke-virtual {p1}, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    goto :goto_1

    .line 903
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 905
    :catch_0
    move-exception v0

    .line 907
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 913
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->clearJpegRawData()V

    throw v0

    :cond_3
    move-object v6, v0

    goto :goto_2
.end method

.method private onJpegCallbackTimeout(I)V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout("

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

    .line 964
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v1, :cond_0

    .line 966
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :goto_0
    return-void

    .line 971
    :cond_0
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 972
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/camera/component/ContinuousBurstController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    goto :goto_0
.end method

.method private onPhotoSaveCompleted(Lcom/htc/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 981
    if-nez p2, :cond_5

    .line 982
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 984
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted("

    const-string v3, ", "

    const-string v5, ")"

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 985
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - Last file path : "

    iget-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    invoke-static {v0, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 988
    iput-boolean v9, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    .line 989
    iput-object p3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/aj;->enableAutoUpdate(Lcom/htc/camera/Handle;)V

    .line 995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/duallens/c;->resumeDualLensService(Lcom/htc/camera/Handle;)V

    .line 1002
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_4

    .line 1017
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1019
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    if-eqz v0, :cond_2

    .line 1020
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v4, 0x2711

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v9

    aput-object p3, v5, v8

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    aput-object v0, v5, v6

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_Orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    move-object v0, p0

    move v2, v4

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1029
    :goto_1
    return-void

    .line 1022
    :cond_2
    const/16 v2, 0x271c

    iget-object v5, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    move-object v1, p0

    move v3, v9

    move v4, v9

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_1

    .line 1025
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v4, 0x2711

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v9

    aput-object p3, v5, v8

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    aput-object v0, v5, v6

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_Orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    move-object v0, p0

    move v2, v4

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 1028
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - No UI to notify"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, p2

    goto/16 :goto_0
.end method

.method private onPictureTaken(I[BLcom/htc/camera/CameraController;I)V
    .locals 17

    .prologue
    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "JPEG call-back ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1078
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    move v11, v2

    .line 1081
    :goto_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    .line 1083
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_StartTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    .line 1084
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - Average capture interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    add-int/lit8 v6, p1, 0x1

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v12

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v3, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-ne v2, v3, :cond_15

    .line 1093
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v2}, Lcom/htc/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v2

    .line 1100
    :goto_1
    if-eqz v2, :cond_17

    .line 1102
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_16

    .line 1104
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const/4 v2, 0x0

    .line 1127
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v3, :pswitch_data_0

    .line 1185
    :cond_3
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    .line 1188
    if-nez p1, :cond_47

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_47

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_47

    .line 1190
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->findNextDirectoryCounters()Z

    move-result v3

    if-nez v3, :cond_47

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Cannot find available directory counters, stop capturing"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/4 v2, 0x0

    move v8, v2

    .line 1199
    :goto_4
    if-eqz p2, :cond_23

    .line 1201
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    if-nez p1, :cond_1e

    if-nez v8, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    .line 1203
    :cond_5
    new-instance v3, Lcom/htc/camera/io/SaveImageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v0, p2

    invoke-direct {v3, v12, v2, v0}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    if-eqz v2, :cond_46

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    move v5, v8

    .line 1237
    :goto_5
    const/4 v4, 0x0

    .line 1238
    if-eqz v5, :cond_28

    .line 1240
    const-class v2, Lcom/htc/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/io/IMediaFileWriter;

    .line 1241
    if-eqz v2, :cond_27

    .line 1243
    invoke-interface {v2}, Lcom/htc/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v6

    .line 1244
    invoke-interface {v2}, Lcom/htc/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v8

    .line 1245
    long-to-double v13, v8

    long-to-double v15, v6

    div-double/2addr v13, v15

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onPictureTaken() - File buffer : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v7, v13

    double-to-int v7, v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-wide v6, 0x3fee666660000000L    # 0.949999988079071

    cmpl-double v2, v13, v6

    if-ltz v2, :cond_24

    .line 1250
    sget-object v2, Lcom/htc/camera/component/ContinuousBurstController$DropState;->ContinuousDropping:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DropState:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 1251
    const/4 v4, 0x1

    .line 1252
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPictureTaken() - Drop previous save task, DropState: Continuous("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    const/16 v6, 0x8

    if-lt v2, v6, :cond_6

    .line 1256
    const/4 v5, 0x0

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v6, "onPictureTaken() - Reach maximum continuous dropping limitation(8), stop capturing"

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    :cond_6
    :goto_6
    if-eqz v4, :cond_45

    .line 1281
    if-eqz v3, :cond_44

    .line 1282
    invoke-virtual {v3}, Lcom/htc/camera/io/SaveImageTask;->clearJpegRawData()V

    .line 1283
    const/4 v2, 0x0

    .line 1285
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    :goto_8
    move-object v10, v2

    move v3, v5

    .line 1293
    :goto_9
    if-eqz v3, :cond_7

    if-nez p1, :cond_7

    .line 1295
    const-class v2, Lcom/htc/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/io/IMediaFileWriter;

    .line 1296
    if-eqz v2, :cond_29

    .line 1298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v5}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 1299
    new-instance v5, Lcom/htc/camera/CloseableHandleReference;

    invoke-interface {v2}, Lcom/htc/camera/io/IMediaFileWriter;->suspendUpdatingMediaStore()Lcom/htc/camera/CloseableHandle;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1305
    :goto_a
    invoke-static/range {p2 .. p2}, Lcom/htc/camera/imaging/ImageUtility;->getJpegImageOrientation([B)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_Orientation:I

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

    if-eqz v2, :cond_7

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

    invoke-virtual {v2}, Lcom/htc/camera/duallens/c;->suspendDualLensService()Lcom/htc/camera/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

    .line 1313
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    if-eqz v2, :cond_9

    .line 1315
    if-nez v10, :cond_8

    if-nez v4, :cond_8

    .line 1316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1318
    :cond_8
    if-nez v4, :cond_2a

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {v12, v2}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1320
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :cond_9
    :goto_b
    if-eqz v10, :cond_2c

    .line 1334
    if-eqz v3, :cond_2b

    .line 1335
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 1343
    :cond_a
    :goto_c
    if-eqz v3, :cond_43

    if-nez p1, :cond_43

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v2, :cond_43

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    invoke-virtual {v12}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v2

    sget-object v4, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v2, v4, :cond_43

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Cannot start preview"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const/4 v2, 0x0

    .line 1354
    :goto_d
    monitor-enter p0

    .line 1357
    if-eqz v2, :cond_42

    :try_start_0
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v3, :cond_42

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez p1, :cond_42

    .line 1361
    :cond_c
    add-int/lit8 v3, p1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v3

    if-nez v3, :cond_42

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Cannot take next picture, stop capturing"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const/4 v2, 0x0

    move v9, v2

    .line 1368
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1370
    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_e

    .line 1372
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v2, :cond_e

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JPEG ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2710

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v2

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_e
    if-nez v9, :cond_3a

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1385
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v2, :cond_2e

    if-nez p1, :cond_2e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_2e

    .line 1389
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    .line 1396
    :cond_f
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v3, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-ne v2, v3, :cond_3c

    .line 1398
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_2f

    .line 1400
    sget-object v2, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",m_TakePictureIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    .line 1406
    if-eqz v2, :cond_10

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - stop driver capturing. one shot"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-string v3, "contiburst-state"

    const-string v4, "contiburst-done"

    invoke-virtual {v2, v3, v4}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v2}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1411
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v2, :cond_11

    .line 1412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v4, 0x2710

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1413
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    .line 1416
    :cond_11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    :goto_10
    return-void

    .line 1078
    :cond_12
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_0

    .line 1094
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1096
    :cond_14
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1099
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1117
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_2

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - This is the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " picture, stop capturing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1123
    :cond_17
    if-eqz p2, :cond_18

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_2

    .line 1124
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1130
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Burst mode is 1-shot, stop taking picture."

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-nez v2, :cond_19

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Burst mode is 1-shot, but this is not the first picture."

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_19
    const/4 v2, 0x0

    .line 1134
    goto/16 :goto_3

    .line 1137
    :pswitch_1
    if-eqz v2, :cond_3

    .line 1139
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_1a

    .line 1141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Burst mode is 5-shots, stop taking picture."

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1144
    :cond_1a
    const/4 v3, 0x4

    move/from16 v0, p1

    if-le v0, v3, :cond_1b

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Burst mode is 5-shots, but we have taken more than 5 pictures."

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1151
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview again"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v3

    .line 1153
    if-eqz v3, :cond_1c

    .line 1154
    invoke-virtual {v3}, Lcom/htc/camera/CameraController;->startPreview()V

    goto/16 :goto_3

    .line 1156
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No camera controller"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1162
    :pswitch_2
    if-eqz v2, :cond_3

    .line 1164
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_1d

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Burst mode is undefined, handle JPEG raw data later."

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 1168
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    goto/16 :goto_10

    .line 1171
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is undefined, but this is not the first picture."

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1176
    :pswitch_3
    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_3

    goto/16 :goto_3

    .line 1212
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-ge v2, v3, :cond_22

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - m_ContinuousBurstImageCounter :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    if-nez v8, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_21

    :cond_1f
    const/4 v7, 0x1

    .line 1217
    :goto_11
    new-instance v2, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;-><init>(Lcom/htc/camera/component/ContinuousBurstController;Lcom/htc/camera/CaptureHandle;I[BZ)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v3, :cond_20

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-interface {v3}, Lcom/htc/camera/aj;->disableAutoUpdate()Lcom/htc/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    :cond_20
    move v3, v8

    .line 1230
    :goto_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move v5, v3

    move-object v3, v2

    goto/16 :goto_5

    .line 1216
    :cond_21
    const/4 v7, 0x0

    goto :goto_11

    .line 1225
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - Drop this index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Drop count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/4 v3, 0x0

    .line 1228
    const/4 v2, 0x0

    goto :goto_12

    .line 1234
    :cond_23
    const/4 v3, 0x0

    move v5, v8

    goto/16 :goto_5

    .line 1262
    :cond_24
    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v2, v13, v6

    if-ltz v2, :cond_26

    .line 1263
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DropState:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    sget-object v6, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    if-eq v2, v6, :cond_25

    .line 1265
    sget-object v2, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DropState:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 1267
    const/4 v4, 0x1

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v6, "onPictureTaken() - Drop current save task"

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1271
    :cond_25
    sget-object v2, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Dropping:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DropState:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v6, "onPictureTaken() - Save current save task due to previous was dropped"

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1276
    :cond_26
    sget-object v2, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_DropState:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 1277
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    goto/16 :goto_6

    .line 1289
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v6, "onPictureTaken() - fileWriter is null"

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    move-object v10, v3

    move v3, v5

    goto/16 :goto_9

    .line 1302
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v5, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v2, v5}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1323
    :cond_2a
    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {v12, v2}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1337
    :cond_2b
    invoke-virtual {v12, v10}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto/16 :goto_c

    .line 1339
    :cond_2c
    if-nez v11, :cond_a

    and-int/lit8 v2, p4, 0x4

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2d

    if-nez p1, :cond_a

    .line 1340
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v4, Lcom/htc/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    sget-object v6, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v4, v5, v6}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_c

    .line 1391
    :cond_2e
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-eqz v2, :cond_f

    .line 1392
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto/16 :goto_f

    .line 1520
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1420
    :cond_2f
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v2

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    if-eqz v2, :cond_30

    .line 1422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Last Jpeg call-back, save last image task: "

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    instance-of v2, v2, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    check-cast v2, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;

    # getter for: Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->index:I
    invoke-static {v2}, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;->access$1900(Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;)I

    move-result v2

    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {v12, v2}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1426
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 1452
    :cond_30
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Stop capturing"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v2}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1458
    if-eqz v11, :cond_31

    if-lez p1, :cond_40

    .line 1460
    :cond_31
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-nez v2, :cond_3f

    .line 1461
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v12, v2}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1465
    :goto_15
    if-eqz v11, :cond_33

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Close camera for recovering"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v12}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 1475
    :cond_33
    :goto_16
    if-nez p1, :cond_34

    .line 1477
    if-eqz v10, :cond_41

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/htc/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1491
    :cond_34
    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    .line 1493
    if-eqz v2, :cond_35

    .line 1494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - stop driver capturing"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v3, "contiburst-state"

    const-string v4, "contiburst-done"

    invoke-virtual {v2, v3, v4}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-virtual {v2}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1501
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    if-eqz v2, :cond_36

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    invoke-virtual {v12, v2}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 1505
    :cond_36
    invoke-virtual {v12}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v2

    if-eqz v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v2, :cond_37

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v2}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 1509
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v2, :cond_38

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v4, 0x2710

    add-int/lit8 v5, p1, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1511
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    .line 1515
    :cond_38
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v2

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-nez v2, :cond_3a

    .line 1516
    :cond_39
    sget-object v2, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1517
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1520
    :cond_3a
    monitor-exit p0

    goto/16 :goto_10

    .line 1422
    :cond_3b
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 1429
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v3, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-ne v2, v3, :cond_3e

    .line 1431
    and-int/lit8 v2, p4, 0x4

    if-nez v2, :cond_3d

    .line 1433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_30

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() Stopping - Waiting for pending pictures"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",m_TakePictureIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    monitor-exit p0

    goto/16 :goto_10

    .line 1442
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - cancel taking picture - ignore jpeg call back"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    goto/16 :goto_14

    .line 1448
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - Unexpected capture state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    monitor-exit p0

    goto/16 :goto_10

    .line 1463
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait HTCCallback to endTakePicture m_TakePictureIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1472
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPEG ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/htc/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1481
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - No photo to save"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/htc/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_17

    :cond_42
    move v9, v2

    goto/16 :goto_e

    :cond_43
    move v2, v3

    goto/16 :goto_d

    :cond_44
    move-object v2, v3

    goto/16 :goto_7

    :cond_45
    move-object v2, v3

    goto/16 :goto_8

    :cond_46
    move v5, v8

    goto/16 :goto_5

    :cond_47
    move v8, v2

    goto/16 :goto_4

    .line 1127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onShutter(I)V
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1539
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1542
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1546
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1550
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    .line 1574
    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-eqz v0, :cond_10

    if-le p1, v7, :cond_10

    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_10

    .line 1576
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Trying to take next picture for nVidia platform or Proto"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-eq v0, v5, :cond_4

    .line 1581
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Burst mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no need to take next picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    :cond_3
    :goto_1
    return-void

    .line 1553
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    .line 1556
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    .line 1586
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1588
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - canCapture() = false, no need to take next picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1594
    :cond_6
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_7

    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1596
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Max picture count reached, no need to take next picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1601
    :cond_7
    if-nez p1, :cond_8

    .line 1603
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v0, v1, :cond_8

    .line 1606
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Cannot start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1613
    :cond_8
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, p1

    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->takeNextPicture(I)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v7

    .line 1614
    :goto_3
    if-eqz v0, :cond_9

    .line 1615
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v2, "onShutter() - Cannot take next picture"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v6, v0

    .line 1618
    :goto_4
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1619
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proto ShutterIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_a
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v5, v0, :cond_3

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    if-lez v0, :cond_3

    .line 1623
    :cond_b
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1624
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1625
    if-eqz v0, :cond_c

    .line 1626
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v2, "onShutter() - stop driver capturing"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    const-string v1, "contiburst-state"

    const-string v2, "contiburst-done"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1630
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    if-nez v0, :cond_d

    .line 1631
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2710

    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1632
    iput-boolean v7, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    .line 1635
    :cond_d
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_3

    if-eqz v6, :cond_3

    .line 1636
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    .line 1637
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/ContinuousBurstController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 1638
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onShutter- onPictureTaken"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    goto/16 :goto_1

    .line 1613
    :cond_e
    add-int/lit8 v0, p1, 0x1

    goto/16 :goto_2

    :cond_f
    move v0, v4

    goto/16 :goto_3

    :cond_10
    move v6, v4

    goto/16 :goto_4

    .line 1550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onThumbnailImageCreated(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1666
    if-eqz p2, :cond_0

    .line 1667
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1669
    :cond_0
    return-void

    .line 1659
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_2

    .line 1660
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-interface {v0, p1, p2}, Lcom/htc/camera/aj;->updateThumbnailImageDirectly(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)Z

    .line 1666
    :goto_1
    if-eqz p2, :cond_0

    goto :goto_0

    .line 1662
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - No IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1666
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    .line 1667
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1666
    :cond_3
    throw v0
.end method

.method private playShutterSound(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1676
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "playShutterSound("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v1, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1677
    if-eqz p1, :cond_3

    const/4 v0, -0x1

    move v1, v0

    .line 1678
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    .line 1682
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_HAS_SELF_TIMER:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v3, v1, v2}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/htc/camera/Handle;

    .line 1686
    :cond_0
    if-nez p1, :cond_1

    .line 1687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/htc/camera/Handle;

    .line 1688
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    .line 1690
    :cond_2
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 1691
    return-void

    :cond_3
    move v1, v2

    .line 1677
    goto :goto_0
.end method

.method private setCaptureMode(Z)V
    .locals 3

    .prologue
    .line 1698
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-nez v0, :cond_2

    .line 1700
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1701
    if-eqz v0, :cond_5

    .line 1703
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set capture mode to contiburst"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v1, "capture-mode-values"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1707
    const-string v1, "burst"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 1708
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1709
    const-string v1, "contiburst-state"

    const-string v2, "contiburst-capturing"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1732
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1733
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    .line 1738
    :cond_2
    :goto_1
    return-void

    .line 1713
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1715
    const-string v1, "capture-mode"

    const-string v2, "contiburst-one-shot"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const-string v1, "contiburst-state"

    const-string v2, "contiburst-capturing"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1719
    :cond_4
    const-string v1, "capture-mode"

    const-string v2, "contiburst"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1736
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No camera controller to set capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V
    .locals 3

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1746
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    .line 1747
    return-void
.end method

.method private setupParamsBeforeTakingPicture(Lcom/htc/camera/CameraController;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1755
    iget-boolean v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_0

    .line 1780
    :goto_0
    return v0

    .line 1759
    :cond_0
    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1766
    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1780
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1774
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    goto :goto_1

    .line 1759
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopShutterSound()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1788
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/htc/camera/Handle;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/htc/camera/Handle;)V

    .line 1791
    iput-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/htc/camera/Handle;

    .line 1793
    :cond_0
    iput-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    .line 1794
    return-void

    .line 1790
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private stopShutterSound(JLcom/htc/camera/Handle;)V
    .locals 8

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "stopShutterSound("

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ", "

    if-eqz p3, :cond_1

    iget-object v4, p3, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1798
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1800
    const/4 v0, 0x1

    .line 1801
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v1}, Lcom/htc/camera/IAudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1803
    const/4 v0, 0x2

    .line 1805
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 1806
    sget v3, Lcom/htc/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    mul-int/2addr v0, v3

    int-to-long v3, v0

    sub-long v6, v3, v1

    .line 1807
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    .line 1809
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopShutterSound() - Stop shutter sound after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object p3, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 1816
    :goto_1
    return-void

    .line 1797
    :cond_1
    const-string v4, "null"

    goto :goto_0

    .line 1815
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, p3}, Lcom/htc/camera/IAudioManager;->stopInMemorySound(Lcom/htc/camera/Handle;)V

    goto :goto_1
.end method

.method private takeNextPicture(I)Z
    .locals 12

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1823
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1826
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "takeNextPicture() - Preview resource is unavailable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    monitor-exit v9

    move v0, v7

    .line 1939
    :goto_0
    return v0

    .line 1833
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    .line 1834
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    if-ne p1, v8, :cond_1

    .line 1837
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    .line 1840
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v3, :cond_1

    .line 1842
    iget-object v0, v2, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 1843
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 1848
    :cond_1
    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1850
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    .line 1863
    :cond_2
    :goto_1
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    if-ne v0, v3, :cond_3

    if-ne p1, v8, :cond_3

    .line 1864
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContDroppingCounter:I

    .line 1865
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DropState:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 1868
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1869
    const-string v2, "capture-mode-values"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1870
    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_7

    .line 1871
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "Set continuous burst type to limit-20"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v2, "contiburst-type"

    const-string v3, "limit-20"

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    :goto_2
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1883
    :cond_3
    if-ne p1, v8, :cond_4

    .line 1884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    .line 1888
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1890
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

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

    iget-object v4, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 1891
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1897
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_StartTime:J

    .line 1898
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getBurstFPS()I

    move-result v0

    if-lez v0, :cond_6

    .line 1899
    const/16 v0, 0x3e8

    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getBurstFPS()I

    move-result v2

    div-int/2addr v0, v2

    mul-int/2addr v0, p1

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    const-wide/32 v10, 0xf4240

    div-long/2addr v4, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    .line 1900
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 1903
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sleep:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1910
    :cond_6
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v2, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "]"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1914
    :try_start_3
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1915
    const/4 v0, 0x2

    if-ge p1, v0, :cond_8

    .line 1916
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p0}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V

    .line 1917
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proto takePicture()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    :goto_4
    iput p1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1939
    :try_start_4
    monitor-exit v9

    move v0, v8

    goto/16 :goto_0

    .line 1853
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    .line 1940
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1856
    :pswitch_1
    if-ne p1, v8, :cond_2

    :try_start_5
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_2

    .line 1857
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_1

    .line 1875
    :cond_7
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v3, "Set continuous burst type to unlimited"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v2, "contiburst-type"

    const-string v3, "unlimited"

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1920
    :cond_8
    :try_start_6
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proto NextPicture()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 1929
    :catch_0
    move-exception v0

    .line 1931
    :try_start_7
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

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

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1932
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_9

    .line 1934
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1935
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1937
    :cond_9
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v7

    goto/16 :goto_0

    .line 1923
    :cond_a
    if-ne p1, v8, :cond_b

    .line 1924
    :try_start_8
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->disableReview()V

    .line 1925
    :cond_b
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p0}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4

    .line 1906
    :catch_1
    move-exception v0

    goto/16 :goto_3

    .line 1850
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private useAutoBurst()Z
    .locals 2

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mContiBurstSupportMode:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    sget-object v1, Lcom/htc/camera/CameraController$ContiBurstSupportMode;->Auto:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2086
    if-nez p1, :cond_0

    .line 2120
    :goto_0
    return v0

    .line 2089
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq p1, v1, :cond_1

    .line 2091
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

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

    .line 2096
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-eq v1, v2, :cond_2

    .line 2098
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2102
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "cancelTakingPicture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2106
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 2108
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

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

    .line 2109
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v2, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 2106
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 2112
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2117
    :cond_4
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 2118
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/htc/camera/component/ContinuousBurstController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 2120
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 429
    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    .line 430
    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 433
    invoke-super {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 434
    return-void
.end method

.method public getBurstFPS()I
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstFps:Ljava/lang/Integer;

    .line 481
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstFps:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 490
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 509
    invoke-super {p0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 512
    :goto_0
    return-void

    .line 494
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 495
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;

    .line 496
    iget-object v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    monitor-enter v3

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 499
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/io/SaveImageTask;

    .line 500
    invoke-virtual {v2}, Lcom/htc/camera/io/SaveImageTask;->clearJpegRawData()V

    goto :goto_1

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 501
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 502
    const/16 v2, 0x2719

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ContinuousBurstController;->removeAsyncMessages(I)V

    .line 503
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/camera/io/Path;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/ContinuousBurstController;->onImageSaved(Lcom/htc/camera/component/ContinuousBurstController$SaveBurstImageTask;Lcom/htc/camera/io/Path;)V

    goto :goto_0

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 520
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 631
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 523
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->onEntered()V

    goto :goto_0

    .line 527
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->onExited()V

    goto :goto_0

    .line 532
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "wait HTCCallback timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 534
    iput-boolean v6, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    .line 535
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 537
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_1

    .line 538
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2711

    iget v3, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    aput-object v0, v5, v4

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x2

    iget-object v6, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    aput-object v6, v5, v0

    const/4 v0, 0x3

    iget v6, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_Orientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 540
    :cond_1
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 541
    iput-object v7, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    goto :goto_0

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_IsEntered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 549
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/Path;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/ContinuousBurstController;->onImageSaveFailed(ILcom/htc/camera/io/Path;)V

    goto :goto_0

    .line 553
    :pswitch_5
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    .line 554
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/Path;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    goto/16 :goto_0

    .line 559
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 560
    aget-object v1, v0, v4

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v7, v0}, Lcom/htc/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(Lcom/htc/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_0

    .line 569
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_1

    :pswitch_8
    goto/16 :goto_0

    .line 573
    :pswitch_9
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "Timeout, play burst shutter sound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, v6}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto/16 :goto_0

    .line 581
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->onBurstModeChanged(I)V

    goto/16 :goto_0

    .line 585
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 586
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v0, :cond_3

    .line 587
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 588
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_max_conti_burst_picture_count"

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 592
    :pswitch_c
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto/16 :goto_0

    .line 611
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 612
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v1, :cond_0

    aget-object v1, v0, v6

    check-cast v1, Lcom/htc/camera/Handle;

    if-eqz v1, :cond_0

    .line 613
    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aget-object v0, v0, v6

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/htc/camera/Handle;)V

    goto/16 :goto_0

    .line 619
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 620
    aget-object v1, v0, v4

    check-cast v1, Lcom/htc/camera/media/MediaInfo;

    aget-object v0, v0, v6

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/ContinuousBurstController;->onThumbnailImageCreated(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 625
    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundDelay:I

    .line 626
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "m_ShutterSoundDelay:"

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_6
        :pswitch_e
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_f
    .end packed-switch

    .line 569
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 643
    invoke-super {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 646
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_max_conti_burst_picture_count"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 647
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v0, :cond_0

    .line 648
    iput v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 651
    :cond_0
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    .line 652
    const-class v0, Lcom/htc/camera/duallens/c;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/duallens/c;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

    .line 653
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 654
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 657
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 659
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isKDDI()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070003

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    .line 668
    :cond_1
    :goto_0
    new-instance v0, Lcom/htc/camera/imaging/Size;

    const v1, 0x7f0a0352

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/ContinuousBurstController;->getDimension(I)I

    move-result v1

    const v2, 0x7f0a0353

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/ContinuousBurstController;->getDimension(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    .line 671
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/ContinuousBurstController$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ContinuousBurstController$3;-><init>(Lcom/htc/camera/component/ContinuousBurstController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 680
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 681
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/ContinuousBurstController$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/ContinuousBurstController$4;-><init>(Lcom/htc/camera/component/ContinuousBurstController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 707
    return-void

    .line 661
    :cond_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070001

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070002

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 3

    .prologue
    .line 1037
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1046
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    if-gt v0, v1, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Shutter call-back["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->onJpegCallbackTimeout(I)V

    .line 1072
    :goto_1
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - JPEG index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but there is no timeout timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    :cond_2
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$5;->$SwitchMap$com$htc$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1060
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1064
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-le v0, v1, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture m_JpegIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1070
    :cond_3
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/camera/component/ContinuousBurstController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 1071
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    goto/16 :goto_1

    .line 1054
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onShutter()V
    .locals 3

    .prologue
    .line 1528
    invoke-direct {p0}, Lcom/htc/camera/component/ContinuousBurstController;->useAutoBurst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    iget v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutter call-back ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to drop picture m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_ShutterIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :goto_0
    return-void

    .line 1534
    :cond_0
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->onShutter(I)V

    .line 1535
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    goto :goto_0
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 7

    .prologue
    .line 1950
    iget-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v0, :cond_0

    .line 1951
    const/4 v0, 0x0

    .line 2069
    :goto_0
    return v0

    .line 1954
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    .line 1955
    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 1956
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->requestAudioFocus()V

    .line 1959
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-nez v0, :cond_2

    .line 1961
    const-class v0, Lcom/htc/camera/aj;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aj;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 1962
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-nez v0, :cond_2

    .line 1963
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Cannot find IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_9

    .line 1969
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 1970
    if-eqz v0, :cond_8

    .line 1972
    iget-object v1, v2, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1973
    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    invoke-direct {v1, v3, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    .line 1990
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    .line 1991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 1992
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    .line 1993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    .line 1994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    .line 1995
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 1996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    .line 1997
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    .line 1998
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    .line 1999
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegIndex:I

    .line 2000
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BucketId:Ljava/lang/String;

    .line 2001
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IfGotHTCCallback:Z

    .line 2002
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2003
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2004
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_DropState:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 2005
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ContinuousBurstImageCounter:I

    .line 2006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_IsSavingStartMsgSent:Z

    .line 2007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    .line 2008
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_SavedBurstImageCount:I

    .line 2009
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/htc/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureState(Lcom/htc/camera/component/ContinuousBurstController$CaptureState;)V

    .line 2012
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_UI:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2014
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Change to 1-shot mode because capture button was released"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->onBurstModeChanged(I)V

    .line 2019
    :cond_3
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2021
    iget-object v0, v2, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 2022
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 2026
    :cond_4
    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2028
    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 2029
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    .line 2035
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_6

    .line 2037
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "JPEG [0]"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 2038
    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    :cond_6
    const-string v0, "burst-always"

    invoke-virtual {p2, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    if-eqz v0, :cond_b

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2045
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - burst always is true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/ContinuousBurstController;->setCaptureMode(Z)V

    .line 2052
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_StartTime:J

    .line 2056
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p0}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1975
    :cond_7
    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-direct {v1, v3, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v1, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    goto/16 :goto_1

    .line 1979
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No photo resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    goto/16 :goto_1

    .line 1985
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    goto/16 :goto_1

    .line 2031
    :cond_a
    const/16 v2, 0x2712

    iget v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_ShutterSoundDelay:I

    int-to-long v3, v0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstController;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_2

    .line 2049
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - burst always is false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2058
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2060
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_c

    .line 2062
    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v2, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 2063
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2065
    :cond_c
    throw v1
.end method
