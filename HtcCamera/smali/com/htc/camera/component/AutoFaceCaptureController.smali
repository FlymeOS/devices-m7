.class public final Lcom/htc/camera/component/AutoFaceCaptureController;
.super Lcom/htc/camera/component/AsyncCameraThreadComponent;
.source "AutoFaceCaptureController.java"

# interfaces
.implements Lcom/htc/camera/k;
.implements Lcom/htc/camera/m;
.implements Lcom/htc/camera/z;


# static fields
.field private static final m_DcfInfo:Lcom/htc/camera/io/DCFInfo;


# instance fields
.field private mAudioManager:Lcom/htc/camera/IAudioManager;

.field private mNeedPlayShutter:Z

.field private m_AutoFaceCaptureImageCounter:I

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureInterval:I

.field private m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

.field private m_ContDroppingCounter:I

.field private m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

.field private m_DropState:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

.field private m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

.field private m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

.field private m_FaceMadeCaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_FirstJpegRawData:[B

.field private m_GotFirstPicture:Z

.field private m_ImageCounter:Lcom/htc/camera/io/FileCounter;

.field private m_IsEnabled:Z

.field private m_IsEntered:Z

.field private m_IsFirstPicture:Z

.field private m_IsSavingPhotos:Z

.field private m_IsSavingStartMsgSent:Z

.field private m_IsSecondPictureTaken:Z

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

.field private m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_PhotoSize:Lcom/htc/camera/imaging/Size;

.field private m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_SavedBurstImageCount:I

.field private final m_SavedImageTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;",
            ">;"
        }
    .end annotation
.end field

.field private m_SceneController:Lcom/htc/camera/effect/ac;

.field private m_SelfieMode:I

.field private m_ShutterIndex:I

.field private m_ShutterSoundHandle:Lcom/htc/camera/Handle;

.field private m_StartTime:J

.field private m_TakePictureIndex:I

.field private m_ThumbnailImageManager:Lcom/htc/camera/aj;

.field private m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;

.field private m_TotalCaptureInterval:J

.field private m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    sput-object v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 117
    new-instance v0, Lcom/htc/camera/component/d;

    invoke-direct {v0}, Lcom/htc/camera/component/d;-><init>()V

    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->registerFileNameChecker(Lcom/htc/camera/io/c;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 383
    const-string v0, "Auto Face Capture Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    .line 139
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Unavailable:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    .line 159
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MaxPictureCount:I

    .line 160
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedImageTasks:Ljava/util/Set;

    .line 186
    new-instance v0, Lcom/htc/camera/component/AutoFaceCaptureController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AutoFaceCaptureController$2;-><init>(Lcom/htc/camera/component/AutoFaceCaptureController;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AutoFaceCaptureController;I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureController;->onJpegCallbackTimeout(I)V

    return-void
.end method

.method static synthetic access$100()Lcom/htc/camera/io/DCFInfo;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/io/FileCounter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/io/FileCounter;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ImageCounter:Lcom/htc/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/imaging/Size;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/AutoFaceCaptureController;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedImageTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/AutoFaceCaptureController;)Lcom/htc/camera/component/AutoFaceCaptureUI;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/AutoFaceCaptureController;Lcom/htc/camera/CameraController;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureController;->setupParamsBeforeTakingPicture(Lcom/htc/camera/CameraController;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/AutoFaceCaptureController;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/AutoFaceCaptureController;ZZ)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/AutoFaceCaptureController;->updateSmileCaptureState(ZZ)V

    return-void
.end method

.method private findNextDirectoryCounters()Z
    .locals 6

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    .line 407
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 408
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 409
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    invoke-static {v1}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DcfInfo:Lcom/htc/camera/io/DCFInfo;

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    .line 421
    :cond_0
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 422
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ImageCounter:Lcom/htc/camera/io/FileCounter;

    .line 425
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 602
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canEnableAutoCapture()Z

    move-result v1

    if-nez v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v0

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 606
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->isSmileFromFaceSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToUI()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 620
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    if-eqz v0, :cond_0

    .line 624
    :goto_0
    return v1

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Auto-Face-Capture UI"

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoFaceCaptureUI;

    :goto_1
    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    .line 624
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 623
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 624
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private onBurstModeChanged(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 633
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    if-nez v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 639
    iput p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    .line 642
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_GotFirstPicture:Z

    if-eqz v0, :cond_0

    .line 644
    iput-boolean v4, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_GotFirstPicture:Z

    .line 645
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Handle JPEG data again"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FirstJpegRawData:[B

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1, v4}, Lcom/htc/camera/component/AutoFaceCaptureController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FirstJpegRawData:[B

    goto :goto_0
.end method

.method private onEntered()V
    .locals 2

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    .line 662
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Ready:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    .line 665
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExited()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 675
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    if-nez v0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 679
    :cond_0
    iput-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FirstJpegRawData:[B

    .line 681
    iput-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_GotFirstPicture:Z

    .line 682
    iput v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    .line 683
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Unavailable:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    goto :goto_0
.end method

.method private onImageSaveFailed(ILcom/htc/camera/io/Path;)V
    .locals 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

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

    .line 738
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Capturing:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    if-eq v0, v1, :cond_0

    .line 740
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageSaveFailed() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaveFailed() - Stop capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Stopping:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    goto :goto_0
.end method

.method private onImageSaved(Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;Lcom/htc/camera/io/Path;)V
    .locals 7

    .prologue
    .line 692
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaved(\'"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 695
    if-nez p2, :cond_1

    .line 728
    :goto_1
    return-void

    .line 692
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->getJpegRawData(Z)[B

    move-result-object v0

    .line 703
    iget-object v1, p1, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->imageWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->imageHeight:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    iget v4, v4, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/imaging/ThumbnailUtility;->a([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 706
    if-nez v0, :cond_3

    .line 707
    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;->MEDIA_TYPE_IMAGE:Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;

    invoke-static {v0, v1}, Lcom/htc/camera/imaging/ThumbnailUtility;->a(Ljava/lang/String;Lcom/htc/camera/imaging/ThumbnailUtility$MediaType;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 710
    :goto_2
    if-eqz v6, :cond_2

    .line 712
    new-instance v0, Lcom/htc/camera/media/MediaInfo;

    const/4 v1, 0x0

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-wide v4, p1, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->takenDateTime:J

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/media/MediaInfo;-><init>(Landroid/net/Uri;Lcom/htc/camera/io/Path;Lcom/htc/camera/io/FileFormat;J)V

    .line 713
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

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoFaceCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :goto_3
    invoke-virtual {p1}, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->clearJpegRawData()V

    goto :goto_1

    .line 716
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 718
    :catch_0
    move-exception v0

    .line 720
    :try_start_2
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 726
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->clearJpegRawData()V

    throw v0

    :cond_3
    move-object v6, v0

    goto :goto_2
.end method

.method private onJpegCallbackTimeout(I)V
    .locals 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

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

    .line 758
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Capturing:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    if-eq v0, v1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_0
    return-void

    .line 765
    :cond_0
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Stopping:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    goto :goto_0
.end method

.method private onPhotoSaveCompleted(Lcom/htc/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 775
    if-nez p2, :cond_3

    .line 776
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedBurstImageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 778
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted("

    const-string v3, ", "

    const-string v5, ")"

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 779
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - Last file path : "

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    invoke-static {v0, v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 782
    iput-boolean v6, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSavingPhotos:Z

    .line 785
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/aj;->enableAutoUpdate(Lcom/htc/camera/Handle;)V

    .line 788
    iput-object v7, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/duallens/c;->resumeDualLensService(Lcom/htc/camera/Handle;)V

    .line 795
    iput-object v7, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    if-eqz v0, :cond_2

    .line 802
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v4, 0x2711

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v6

    const/4 v0, 0x1

    aput-object p3, v5, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    aput-object v2, v5, v0

    const/4 v0, 0x3

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_Orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    move-object v0, p0

    move v2, v4

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoFaceCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 806
    :goto_1
    return-void

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - No UI to notify"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p2

    goto :goto_0
.end method

.method private onPictureTaken(I[BLcom/htc/camera/CameraController;I)V
    .locals 17

    .prologue
    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "JPEG call-back ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 868
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move v9, v2

    .line 871
    :goto_0
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_0

    .line 873
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_StartTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureInterval:I

    .line 874
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TotalCaptureInterval:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureInterval:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TotalCaptureInterval:J

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - Average capture interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TotalCaptureInterval:J

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

    .line 879
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v10

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    sget-object v3, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Capturing:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    .line 882
    :goto_1
    if-eqz v2, :cond_e

    .line 884
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_d

    .line 886
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v2, 0x0

    .line 899
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    packed-switch v3, :pswitch_data_0

    .line 932
    :cond_3
    :goto_3
    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsFirstPicture:Z

    .line 935
    if-nez p1, :cond_35

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_35

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_35

    .line 937
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->findNextDirectoryCounters()Z

    move-result v3

    if-nez v3, :cond_35

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Cannot find available directory counters, stop capturing"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const/4 v2, 0x0

    move v8, v2

    .line 946
    :goto_4
    if-eqz p2, :cond_17

    .line 948
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    if-nez p1, :cond_12

    if-nez v8, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    .line 950
    :cond_5
    new-instance v3, Lcom/htc/camera/io/SaveImageTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v0, p2

    invoke-direct {v3, v10, v2, v0}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    if-eqz v2, :cond_34

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/htc/camera/io/SaveImageTask;->imageWidth:Ljava/lang/Integer;

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/htc/camera/io/SaveImageTask;->imageHeight:Ljava/lang/Integer;

    move v5, v8

    .line 985
    :goto_5
    const/4 v4, 0x0

    .line 986
    if-eqz v5, :cond_1c

    .line 988
    const-class v2, Lcom/htc/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/io/IMediaFileWriter;

    .line 989
    if-eqz v2, :cond_1b

    .line 991
    invoke-interface {v2}, Lcom/htc/camera/io/IMediaFileWriter;->getMediaQueueCapacity()J

    move-result-wide v6

    .line 992
    invoke-interface {v2}, Lcom/htc/camera/io/IMediaFileWriter;->getMediaQueueSize()J

    move-result-wide v11

    .line 993
    long-to-double v13, v11

    long-to-double v15, v6

    div-double/2addr v13, v15

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onPictureTaken() - File buffer : "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-wide v6, 0x3fee666660000000L    # 0.949999988079071

    cmpl-double v2, v13, v6

    if-ltz v2, :cond_18

    .line 998
    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->ContinuousDropping:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DropState:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 999
    const/4 v4, 0x1

    .line 1000
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ContDroppingCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ContDroppingCounter:I

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPictureTaken() - Drop previous save task, DropState: Continuous("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ContDroppingCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ContDroppingCounter:I

    const/16 v6, 0x8

    if-lt v2, v6, :cond_6

    .line 1004
    const/4 v5, 0x0

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v6, "onPictureTaken() - Reach maximum continuous dropping limitation(8), stop capturing"

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_6
    :goto_6
    if-eqz v4, :cond_33

    .line 1028
    if-eqz v3, :cond_32

    .line 1029
    invoke-virtual {v3}, Lcom/htc/camera/io/SaveImageTask;->clearJpegRawData()V

    .line 1030
    const/4 v2, 0x0

    .line 1032
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    :goto_8
    move-object v8, v2

    move v3, v5

    .line 1040
    :goto_9
    if-eqz v3, :cond_7

    if-nez p1, :cond_7

    .line 1042
    const-class v2, Lcom/htc/camera/io/IMediaFileWriter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/io/IMediaFileWriter;

    .line 1043
    if-eqz v2, :cond_1d

    .line 1045
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v5}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 1046
    new-instance v5, Lcom/htc/camera/CloseableHandleReference;

    invoke-interface {v2}, Lcom/htc/camera/io/IMediaFileWriter;->suspendUpdatingMediaStore()Lcom/htc/camera/CloseableHandle;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1052
    :goto_a
    invoke-static/range {p2 .. p2}, Lcom/htc/camera/imaging/ImageUtility;->getJpegImageOrientation([B)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_Orientation:I

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

    if-eqz v2, :cond_7

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

    invoke-virtual {v2}, Lcom/htc/camera/duallens/c;->suspendDualLensService()Lcom/htc/camera/Handle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DualLensServiceSuspensionHandle:Lcom/htc/camera/Handle;

    .line 1060
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    if-eqz v2, :cond_9

    .line 1062
    if-nez v8, :cond_8

    if-nez v4, :cond_8

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1065
    :cond_8
    if-nez v4, :cond_1e

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {v10, v2}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1067
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    :cond_9
    :goto_b
    if-eqz v8, :cond_20

    .line 1081
    if-eqz v3, :cond_1f

    .line 1082
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 1090
    :cond_a
    :goto_c
    if-eqz v3, :cond_31

    if-nez p1, :cond_31

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSecondPictureTaken:Z

    if-nez v2, :cond_31

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview"

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v10}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v2

    sget-object v4, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v2, v4, :cond_31

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Cannot start preview"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const/4 v2, 0x0

    .line 1101
    :goto_d
    monitor-enter p0

    .line 1104
    if-nez v2, :cond_2a

    .line 1108
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    sget-object v3, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Capturing:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    if-ne v2, v3, :cond_2c

    .line 1110
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_22

    .line 1112
    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Stopping:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

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

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    :goto_e
    return-void

    .line 868
    :cond_b
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_0

    .line 880
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 889
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MaxPictureCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_2

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - This is the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MaxPictureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " picture, stop capturing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 895
    :cond_e
    if-eqz p2, :cond_f

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_2

    .line 896
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 902
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Burst mode is 1-shot, stop taking picture."

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsFirstPicture:Z

    if-nez v2, :cond_10

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Burst mode is 1-shot, but this is not the first picture."

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_10
    const/4 v2, 0x0

    .line 906
    goto/16 :goto_3

    .line 909
    :pswitch_2
    if-eqz v2, :cond_3

    .line 911
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_11

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Burst mode is undefined,"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FirstJpegRawData:[B

    .line 915
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_GotFirstPicture:Z

    goto/16 :goto_e

    .line 919
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Burst mode is undefined, but this is not the first picture."

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 924
    :pswitch_3
    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsFirstPicture:Z

    if-eqz v3, :cond_3

    goto/16 :goto_3

    .line 959
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MaxPictureCount:I

    if-ge v2, v3, :cond_16

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - AutoFaceCaptureImageCounter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    if-nez v8, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MaxPictureCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_15

    :cond_13
    const/4 v7, 0x1

    .line 964
    :goto_f
    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;-><init>(Lcom/htc/camera/component/AutoFaceCaptureController;Lcom/htc/camera/CaptureHandle;I[BZ)V

    .line 965
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/camera/io/SaveImageTask;->takenDateTime:J

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v3, :cond_14

    .line 969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-interface {v3}, Lcom/htc/camera/aj;->disableAutoUpdate()Lcom/htc/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DisableThumbUpdateHandle:Lcom/htc/camera/Handle;

    :cond_14
    move v3, v8

    .line 978
    :goto_10
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    move v5, v3

    move-object v3, v2

    goto/16 :goto_5

    .line 963
    :cond_15
    const/4 v7, 0x0

    goto :goto_f

    .line 973
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - Drop this index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Drop count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MaxPictureCount:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/4 v3, 0x0

    .line 976
    const/4 v2, 0x0

    goto :goto_10

    .line 982
    :cond_17
    const/4 v3, 0x0

    move v5, v8

    goto/16 :goto_5

    .line 1010
    :cond_18
    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v2, v13, v6

    if-ltz v2, :cond_1a

    .line 1011
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ContDroppingCounter:I

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DropState:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    sget-object v6, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Dropped:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    if-eq v2, v6, :cond_19

    .line 1013
    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Dropped:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DropState:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 1015
    const/4 v4, 0x1

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v6, "onPictureTaken() - Drop current save task"

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1019
    :cond_19
    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Dropping:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DropState:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 1020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v6, "onPictureTaken() - Save current save task due to previous was dropped"

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1024
    :cond_1a
    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Unavailable:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DropState:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    goto/16 :goto_6

    .line 1036
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v6, "onPictureTaken() - fileWriter is null"

    invoke-static {v2, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move-object v8, v3

    move v3, v5

    goto/16 :goto_9

    .line 1049
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v5, "onPictureTaken() - No IMediaFileWriter interface"

    invoke-static {v2, v5}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1070
    :cond_1e
    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {v10, v2}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1073
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPictureTaken() - Continuous Burst ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1084
    :cond_1f
    invoke-virtual {v10, v8}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto/16 :goto_c

    .line 1086
    :cond_20
    if-nez v9, :cond_a

    and-int/lit8 v2, p4, 0x4

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_21

    if-nez p1, :cond_a

    .line 1087
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v4, Lcom/htc/camera/CaptureEventArgs;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    sget-object v6, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v4, v5, v6}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_c

    .line 1119
    :cond_22
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    if-eqz v2, :cond_23

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Last Jpeg call-back, save last image task: "

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    instance-of v2, v2, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    check-cast v2, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;

    # getter for: Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->index:I
    invoke-static {v2}, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;->access$1000(Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;)I

    move-result v2

    :goto_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {v10, v2}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PreviousSaveImageTask:Lcom/htc/camera/io/SaveImageTask;

    .line 1151
    :cond_23
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Stop capturing"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v2}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 1157
    if-eqz v9, :cond_24

    if-lez p1, :cond_2f

    .line 1160
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v10, v2}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1162
    if-eqz v9, :cond_25

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Close camera for recovering"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v10}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 1177
    :cond_25
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    if-eqz v2, :cond_26

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    invoke-virtual {v10, v2}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 1181
    :cond_26
    invoke-virtual {v10}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v2, :cond_27

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v2}, Lcom/htc/camera/IAudioManager;->abandonAudioFocus()V

    .line 1185
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSavingStartMsgSent:Z

    if-nez v2, :cond_28

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v4, 0x2710

    add-int/lit8 v5, p1, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/camera/component/AutoFaceCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1187
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSavingStartMsgSent:Z

    .line 1188
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->onBurstModeChanged(I)V

    .line 1192
    :cond_28
    if-nez p1, :cond_29

    .line 1194
    if-eqz v8, :cond_30

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/camera/component/AutoFaceCaptureController;->onPhotoSaveCompleted(Lcom/htc/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1204
    :cond_29
    :goto_14
    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Ready:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    .line 1205
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1207
    :cond_2a
    monitor-exit p0

    goto/16 :goto_e

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1121
    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 1128
    :cond_2c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    sget-object v3, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Stopping:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    if-ne v2, v3, :cond_2e

    .line 1130
    and-int/lit8 v2, p4, 0x4

    if-nez v2, :cond_2d

    .line 1132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_23

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() Stopping - Waiting for pending pictures"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

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

    iget v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    monitor-exit p0

    goto/16 :goto_e

    .line 1141
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - cancel taking picture - ignore jpeg call back"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    goto/16 :goto_12

    .line 1147
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPictureTaken() - Unexpected capture state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    monitor-exit p0

    goto/16 :goto_e

    .line 1169
    :cond_2f
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

    invoke-virtual {v10, v2}, Lcom/htc/camera/CameraThread;->handleCommonCallbackTimeout(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1198
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - No photo to save"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/camera/component/AutoFaceCaptureController;->onPhotoSaveCompleted(Lcom/htc/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_14

    :cond_31
    move v2, v3

    goto/16 :goto_d

    :cond_32
    move-object v2, v3

    goto/16 :goto_7

    :cond_33
    move-object v2, v3

    goto/16 :goto_8

    :cond_34
    move v5, v8

    goto/16 :goto_5

    :cond_35
    move v8, v2

    goto/16 :goto_4

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onShutter(I)V
    .locals 6

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1223
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    const/16 v2, 0x2714

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoFaceCaptureController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1226
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mNeedPlayShutter:Z

    if-eqz v0, :cond_1

    .line 1227
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->playShutterSound()V

    .line 1229
    :cond_1
    return-void
.end method

.method private onThumbnailImageCreated(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSavingPhotos:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1251
    if-eqz p2, :cond_0

    .line 1252
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1254
    :cond_0
    return-void

    .line 1244
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    invoke-interface {v0, p1, p2}, Lcom/htc/camera/aj;->updateThumbnailImageDirectly(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)Z

    .line 1251
    :goto_1
    if-eqz p2, :cond_0

    goto :goto_0

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - No IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1251
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    .line 1252
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1251
    :cond_3
    throw v0
.end method

.method private playShutterSound()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1261
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "playShutterSound()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v2, v2}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 1266
    :cond_0
    return-void
.end method

.method private setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1274
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    .line 1275
    return-void
.end method

.method private setupParamsBeforeTakingPicture(Lcom/htc/camera/CameraController;)Z
    .locals 1

    .prologue
    .line 1283
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    if-nez v0, :cond_0

    .line 1284
    const/4 v0, 0x0

    .line 1286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private takeNextPicture(I)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1294
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1297
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "takeNextPicture() - Preview resource is unavailable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    monitor-exit v9

    move v0, v7

    .line 1357
    :goto_0
    return v0

    .line 1304
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    .line 1305
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    if-ne p1, v8, :cond_1

    .line 1309
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    if-ne v0, v3, :cond_1

    .line 1311
    iget-object v0, v2, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 1312
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-virtual {v2, v0}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 1317
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    if-ne v0, v3, :cond_2

    if-ne p1, v8, :cond_2

    .line 1318
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ContDroppingCounter:I

    .line 1319
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Unavailable:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DropState:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 1324
    :cond_2
    if-ne p1, v8, :cond_3

    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSecondPictureTaken:Z

    .line 1329
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    .line 1331
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

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

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 1332
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 1338
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_StartTime:J

    .line 1339
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "]"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    if-nez p1, :cond_5

    .line 1343
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->disableReview()V

    .line 1344
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p0}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V

    .line 1345
    iput p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1357
    :try_start_2
    monitor-exit v9

    move v0, v8

    goto/16 :goto_0

    .line 1347
    :catch_0
    move-exception v0

    .line 1349
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

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

    .line 1350
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_6

    .line 1352
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1353
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1355
    :cond_6
    monitor-exit v9

    move v0, v7

    goto/16 :goto_0

    .line 1358
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private updateSmileCaptureState(ZZ)V
    .locals 5

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateSmileCaptureState("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "), IsEntered:"

    iget-boolean v4, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1577
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    if-nez v0, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEnabled:Z

    .line 1584
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 1585
    if-eqz v0, :cond_4

    .line 1587
    if-eqz p1, :cond_2

    .line 1589
    const-string v1, "ola-sbd-options"

    const-string v2, "120"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - Enable smile-capturer"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :goto_1
    if-eqz p2, :cond_0

    .line 1609
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1611
    :catch_0
    move-exception v0

    .line 1613
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - Cannot apply settings"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1594
    :cond_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_blink detection"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1596
    const-string v1, "ola-sbd-options"

    const-string v2, "103"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - Enable blink"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1601
    :cond_3
    const-string v1, "ola-sbd-options"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - None"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1618
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateSmileCaptureState() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1534
    if-nez p1, :cond_0

    .line 1568
    :goto_0
    return v0

    .line 1537
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq p1, v1, :cond_1

    .line 1539
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

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

    .line 1544
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Capturing:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    if-eq v1, v2, :cond_2

    .line 1546
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1550
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "cancelTakingPicture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1554
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 1556
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

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

    .line 1557
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v2, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1554
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 1560
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1565
    :cond_4
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Stopping:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    .line 1566
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 1568
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    .line 394
    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 397
    invoke-super {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 398
    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 434
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 453
    invoke-super {p0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 456
    :goto_0
    return-void

    .line 438
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 439
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;

    .line 440
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedImageTasks:Ljava/util/Set;

    monitor-enter v3

    .line 442
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/io/SaveImageTask;

    .line 444
    invoke-virtual {v2}, Lcom/htc/camera/io/SaveImageTask;->clearJpegRawData()V

    goto :goto_1

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 445
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedImageTasks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 446
    const/16 v2, 0x2719

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->removeAsyncMessages(I)V

    .line 447
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Lcom/htc/camera/io/Path;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onImageSaved(Lcom/htc/camera/component/AutoFaceCaptureController$SaveBurstImageTask;Lcom/htc/camera/io/Path;)V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 540
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 543
    :cond_0
    :goto_1
    return-void

    .line 467
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onEntered()V

    goto :goto_1

    .line 471
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onExited()V

    goto :goto_1

    .line 475
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/Path;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onImageSaveFailed(ILcom/htc/camera/io/Path;)V

    goto :goto_1

    .line 479
    :pswitch_4
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedBurstImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedBurstImageCount:I

    .line 480
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/io/Path;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    goto :goto_1

    .line 485
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 486
    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    const/4 v2, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onPhotoSaveCompleted(Lcom/htc/camera/CaptureHandle;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_1

    .line 490
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onBurstModeChanged(I)V

    goto :goto_1

    .line 495
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 496
    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/media/MediaInfo;

    aget-object v0, v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onThumbnailImageCreated(Lcom/htc/camera/media/MediaInfo;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 501
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 502
    if-gez v0, :cond_2

    .line 504
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsFirstPicture:Z

    if-nez v0, :cond_0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    .line 510
    :cond_1
    new-instance v1, Lcom/htc/camera/CaptureHandle;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/CaptureHandle;-><init>(Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V

    iput-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FaceMadeCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 511
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FaceMadeCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureController;->takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "MSG_TAKE_NEXT_PICTURE - Cannot takePicture of first burst "

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "MSG_TAKE_NEXT_PICTURE - takePicture "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 521
    :cond_2
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    iget v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    if-ne v0, v1, :cond_3

    .line 522
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->takeNextPicture(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "MSG_TAKE_NEXT_PICTURE - Cannot takeNextPicture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_TAKE_NEXT_PICTURE - previous capture not finished m_JpegIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m_ShutterIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 533
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->updateSmileCaptureState(ZZ)V

    goto/16 :goto_1

    .line 537
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mNeedPlayShutter:Z

    goto/16 :goto_0

    .line 464
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 552
    invoke-super {p0}, Lcom/htc/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 555
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_MaxPictureCount:I

    .line 558
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    .line 559
    const-class v0, Lcom/htc/camera/duallens/c;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/duallens/c;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DualLensServiceManager:Lcom/htc/camera/duallens/c;

    .line 560
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 561
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 562
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 565
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070002

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    .line 571
    :cond_0
    new-instance v0, Lcom/htc/camera/imaging/Size;

    const v1, 0x7f0a0352

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/AutoFaceCaptureController;->getDimension(I)I

    move-result v1

    const v2, 0x7f0a0353

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/AutoFaceCaptureController;->getDimension(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageSize:Lcom/htc/camera/imaging/Size;

    .line 574
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 575
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureController$3;-><init>(Lcom/htc/camera/component/AutoFaceCaptureController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 585
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/AutoFaceCaptureController$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoFaceCaptureController$4;-><init>(Lcom/htc/camera/component/AutoFaceCaptureController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 595
    return-void
.end method

.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 3

    .prologue
    .line 814
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 816
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 817
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 823
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    iget v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    if-gt v0, v1, :cond_3

    .line 825
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Shutter call-back["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onJpegCallbackTimeout(I)V

    .line 862
    :cond_1
    :goto_1
    return-void

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - JPEG index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but there is no timeout timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_3
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$5;->$SwitchMap$com$htc$camera$component$AutoFaceCaptureController$CaptureState:[I

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 837
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 841
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    iget v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    if-le v0, v1, :cond_4

    .line 842
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureState:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture m_JpegIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 847
    :cond_4
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/camera/component/AutoFaceCaptureController;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 848
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    .line 850
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_1

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - take Pending picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureController;->takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - Cannot takePicture "

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 857
    :catch_0
    move-exception v0

    .line 858
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - takePicture "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 831
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onShutter()V
    .locals 1

    .prologue
    .line 1215
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->onShutter(I)V

    .line 1216
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    .line 1217
    return-void
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 9

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1367
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture() - IsFirstPicture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsFirstPicture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GotFirstPicture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_GotFirstPicture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SelfieMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IsEntered:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsEntered:Z

    if-nez v0, :cond_0

    move v7, v8

    .line 1525
    :goto_0
    return v7

    .line 1376
    :cond_0
    iput-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1378
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsFirstPicture:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    if-eq v0, v3, :cond_1

    .line 1379
    invoke-direct {p0, v3}, Lcom/htc/camera/component/AutoFaceCaptureController;->onBurstModeChanged(I)V

    .line 1381
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    if-ne v0, v3, :cond_5

    .line 1383
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - BURST_MODE_CONTINUOUS"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1387
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FaceMadeCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, v1, :cond_2

    .line 1388
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - countdown end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    iget v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    if-ge v0, v1, :cond_3

    .line 1390
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - only 1 shutter, pend takeNextPicture after previous capture finished"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1395
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1396
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SceneController:Lcom/htc/camera/effect/ac;

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture() - setScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    :cond_2
    iput-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FaceMadeCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1402
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    iget v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    if-ne v0, v1, :cond_4

    .line 1403
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->takeNextPicture(I)Z

    move-result v7

    goto/16 :goto_0

    .line 1393
    :cond_3
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Stopping:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    goto :goto_1

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture() - skip takeNextPicture m_JpegIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_ShutterIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1411
    :cond_5
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 1412
    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_6

    .line 1413
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->mAudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->requestAudioFocus()V

    .line 1416
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-nez v0, :cond_7

    .line 1418
    const-class v0, Lcom/htc/camera/aj;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aj;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    .line 1419
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ThumbnailImageManager:Lcom/htc/camera/aj;

    if-nez v0, :cond_7

    .line 1420
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Cannot find IThumbnailImageManager interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_7
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportSaveMirrorImage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1426
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isSaveMirrorImageEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v7

    .line 1427
    :goto_2
    const-string v2, "save_mirror"

    if-eqz v0, :cond_e

    const-string v0, "true"

    :goto_3
    invoke-virtual {p2, v2, v0}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :cond_8
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v2, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 1432
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->is3DCamera()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1434
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1435
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->orientation:I

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1444
    :goto_4
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takePicture() - Set rotation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p2, v0}, Lcom/htc/camera/CameraController;->setRotation(I)V

    .line 1446
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1450
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_13

    .line 1452
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 1453
    if-eqz v0, :cond_12

    .line 1455
    iget-object v1, v1, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1456
    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    .line 1473
    :goto_5
    iput-boolean v7, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsFirstPicture:Z

    .line 1474
    iput-boolean v8, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_GotFirstPicture:Z

    .line 1475
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TotalCaptureInterval:J

    .line 1476
    iput-boolean v7, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSavingPhotos:Z

    .line 1477
    iput-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 1478
    iput-boolean v8, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSecondPictureTaken:Z

    .line 1479
    iput v8, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TakePictureIndex:I

    .line 1480
    iput v8, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_ShutterIndex:I

    .line 1481
    iput v8, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegIndex:I

    .line 1482
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1483
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1484
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Unavailable:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_DropState:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 1485
    iput v8, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_AutoFaceCaptureImageCounter:I

    .line 1486
    iput-boolean v8, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_IsSavingStartMsgSent:Z

    .line 1487
    iput-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_LastSavedImageFilePath:Lcom/htc/camera/io/Path;

    .line 1488
    iput v8, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SavedBurstImageCount:I

    .line 1489
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;->Capturing:Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->setCaptureState(Lcom/htc/camera/component/AutoFaceCaptureController$CaptureState;)V

    .line 1492
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_SelfieMode:I

    if-eq v0, v7, :cond_9

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_UI:Lcom/htc/camera/component/AutoFaceCaptureUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1494
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Change to 1-shot "

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-direct {p0, v7}, Lcom/htc/camera/component/AutoFaceCaptureController;->onBurstModeChanged(I)V

    .line 1499
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_a

    .line 1501
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "JPEG [0]"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    .line 1502
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_FaceMadeCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-ne v0, v1, :cond_b

    .line 1510
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->disableReview()V

    .line 1511
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_StartTime:J

    .line 1512
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p0}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1514
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1516
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_c

    .line 1518
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v2, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1519
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1521
    :cond_c
    throw v1

    :cond_d
    move v0, v8

    .line 1426
    goto/16 :goto_2

    .line 1427
    :cond_e
    const-string v0, "false"

    goto/16 :goto_3

    .line 1437
    :cond_f
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v0, v0, Lcom/htc/camera/CameraType;->orientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_4

    .line 1441
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Set rotation landscape while 3D photo mode"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 1442
    goto/16 :goto_4

    .line 1458
    :cond_11
    new-instance v1, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    iput-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    goto/16 :goto_5

    .line 1462
    :cond_12
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No photo resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iput-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    goto/16 :goto_5

    .line 1468
    :cond_13
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iput-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureController;->m_PhotoSize:Lcom/htc/camera/imaging/Size;

    goto/16 :goto_5
.end method
