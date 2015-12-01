.class public final Lcom/htc/camera/component/PanoramaController2;
.super Lcom/htc/camera/panorama/IPanoramaController;
.source "PanoramaController2.java"

# interfaces
.implements Lcom/htc/camera/k;
.implements Lcom/htc/camera/m;
.implements Lcom/htc/camera/z;


# static fields
.field public static final DEFAULT_SHUTTER_SOUND:I

.field public static THUMBNAIL_LONG_SIDE_LENGTH:I

.field public static THUMBNAIL_SHORT_SIDE_LENGTH:I


# instance fields
.field private final BACKWARD_MOVING_THRESHOLD:I

.field private final MOVING_DIRECTION_THRESHOLD:I

.field private final MOVING_SPEED_THRESHOLD:I

.field private NARROWNESS_THRESHOLD:I

.field private final NARROWNESS_THRESHOLD_RATIO:D

.field private final isNewBurst:Z

.field private final mPostviewCallback:Lcom/htc/camera/k;

.field private mShutterSoundHandle:Lcom/htc/camera/Handle;

.field private m_AecLockHandle:Lcom/htc/camera/Handle;

.field private m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

.field private final m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_AudioManager:Lcom/htc/camera/IAudioManager;

.field private m_AwbLockHandle:Lcom/htc/camera/Handle;

.field private m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

.field private final m_BurstCameraStateListener:Lcom/htc/camera/property/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/c",
            "<",
            "Lcom/htc/camera/burst/BurstCameraState;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

.field private final m_CreatingThumbnailTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_CreatingThumbnailTimeoutHandle:Lcom/htc/camera/Handle;

.field private m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field private m_ExifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FinalizingStitcherTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_FinalizingStitcherTimeoutHandle:Lcom/htc/camera/Handle;

.field private volatile m_IsDirectionLocked:Z

.field private m_IsSecondPictureTaken:Z

.field private m_IsStitchedJpegDataReady:Z

.field private volatile m_IsStitcherAvailable:Z

.field private m_IsThumbnailLenghtReached:Z

.field private final m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

.field private final m_JpegHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/imaging/JpegEventArgs;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_LatestContentUri:Landroid/net/Uri;

.field private m_NativeStitchBuffer:J

.field private final m_NeedSaveEachImage:Z

.field private m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

.field private m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_ResolutionProvider:Lcom/htc/camera/component/PanoramaResolutionProvider;

.field private m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private m_SceneController:Lcom/htc/camera/effect/ac;

.field private final m_ShutterHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_ShutterIndex:I

.field private m_StitchedJpegData:[B

.field private final m_StitchingImageTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_StitchingImageTimeoutHandle:Lcom/htc/camera/Handle;

.field private m_TakePictureIndex:I

.field private m_ThumbnailBitmap:Landroid/graphics/Bitmap;

.field private m_ThumbnailRgbBuffer:Ljava/nio/ByteBuffer;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/htc/camera/CameraThread;->DEFAULT_SHUTTER_SOUND:I

    sput v0, Lcom/htc/camera/component/PanoramaController2;->DEFAULT_SHUTTER_SOUND:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 396
    const-string v0, "Panorama Controller2"

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/htc/camera/panorama/IPanoramaController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 102
    sget-object v0, Lcom/htc/camera/HardwarePlatform;->CURRENT:Lcom/htc/camera/HardwarePlatform;

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->Broadcom:Lcom/htc/camera/HardwarePlatform;

    if-ne v0, v1, :cond_0

    const-wide v0, 0x3fe3333333333333L    # 0.6

    :goto_0
    iput-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD_RATIO:D

    .line 103
    const/16 v0, 0x320

    iput v0, p0, Lcom/htc/camera/component/PanoramaController2;->MOVING_SPEED_THRESHOLD:I

    .line 104
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/camera/component/PanoramaController2;->BACKWARD_MOVING_THRESHOLD:I

    .line 105
    const/16 v0, 0x96

    iput v0, p0, Lcom/htc/camera/component/PanoramaController2;->MOVING_DIRECTION_THRESHOLD:I

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    .line 136
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Unavailable:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    .line 139
    iput-boolean v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsDirectionLocked:Z

    .line 143
    iput-boolean v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_NeedSaveEachImage:Z

    .line 146
    iput-boolean v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsThumbnailLenghtReached:Z

    .line 154
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    .line 156
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaController2;->isNewBurst:Z

    .line 299
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$1;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 307
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$2;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 315
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$3;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CreatingThumbnailTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 323
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$4;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 331
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$5;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_FinalizingStitcherTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 339
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$6;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->mPostviewCallback:Lcom/htc/camera/k;

    .line 347
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$7;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegHandler:Lcom/htc/camera/event/a;

    .line 355
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$8;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$8;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ShutterHandler:Lcom/htc/camera/event/a;

    .line 363
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$9;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/PanoramaController2$9;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCameraStateListener:Lcom/htc/camera/property/c;

    .line 398
    new-instance v0, Lcom/htc/camera/component/PanoramaResolutionProvider;

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/component/PanoramaResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProvider:Lcom/htc/camera/component/PanoramaResolutionProvider;

    .line 399
    return-void

    .line 102
    :cond_0
    const-wide v0, 0x3fe6666666666666L    # 0.7

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/htc/camera/component/PanoramaController2;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2;->m_LatestContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/component/PanoramaController2;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/camera/component/PanoramaController2;->onJpegCallbackTimeout(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/PanoramaController2;)Lcom/htc/camera/effect/ac;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_SceneController:Lcom/htc/camera/effect/ac;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/PanoramaController2;Lcom/htc/camera/imaging/JpegEventArgs;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/camera/component/PanoramaController2;->onPictureTaken(Lcom/htc/camera/imaging/JpegEventArgs;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/PanoramaController2;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/camera/component/PanoramaController2;->onShutter(Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/component/PanoramaController2;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/PanoramaController2;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/PanoramaController2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/PanoramaController2;)[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchedJpegData:[B

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/PanoramaController2;Lcom/htc/camera/CaptureHandle;[B)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/PanoramaController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[B)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/component/PanoramaController2;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/htc/camera/component/PanoramaController2;->restoreResolutionProvider(I)V

    return-void
.end method

.method private attachImage()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 926
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    if-ne v0, v1, :cond_3

    move v0, v8

    .line 933
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget-object v1, v1, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget-object v1, v1, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    array-length v1, v1

    if-nez v1, :cond_1

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "attachImage() - jpegRawData has error."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 940
    :cond_1
    if-eqz v0, :cond_8

    .line 943
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " attachImage() - attach image ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget v2, v2, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 948
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_6

    .line 950
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 951
    if-eqz v0, :cond_5

    .line 956
    iget-object v1, v1, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 958
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    .line 959
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    move v14, v1

    move v1, v0

    move v0, v14

    .line 966
    :goto_1
    int-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD_RATIO:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD:I

    :goto_2
    move v10, v0

    move v11, v1

    .line 989
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_2

    .line 991
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget v0, v0, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    if-nez v0, :cond_7

    .line 992
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attach image["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget v2, v2, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 997
    :cond_2
    :goto_4
    const/16 v12, 0x65

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget v13, v0, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    new-instance v0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget-object v1, v1, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    iget-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    sget v5, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    sget v6, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    const/4 v2, 0x4

    new-array v7, v2, [I

    iget v2, p0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD:I

    aput v2, v7, v9

    const/16 v2, 0x320

    aput v2, v7, v8

    const/4 v2, 0x2

    const/16 v3, 0x12c

    aput v3, v7, v2

    const/4 v2, 0x3

    const/16 v3, 0x96

    aput v3, v7, v2

    move v2, v11

    move v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;-><init>([BIILcom/htc/camera/rotate/UIRotation;II[I)V

    invoke-virtual {p0, v12, v13, v8, v0}, Lcom/htc/camera/component/PanoramaController2;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 1005
    :goto_5
    return-void

    :cond_3
    move v0, v9

    .line 931
    goto/16 :goto_0

    .line 963
    :cond_4
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    .line 964
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    move v14, v1

    move v1, v0

    move v0, v14

    goto :goto_1

    .line 970
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "attachImage() - No photo resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    move v1, v9

    goto/16 :goto_2

    .line 975
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "attachImage() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    move v11, v9

    goto/16 :goto_3

    .line 994
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attach image["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget v2, v2, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_4

    .line 1002
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v2, "attachImage() - isCapturing is false."

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/16 v2, 0x66

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    iget v3, v1, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_5
.end method

.method private attachImageInternal(Lcom/htc/camera/component/PanoramaController2$StitchImageData;II)V
    .locals 10

    .prologue
    const/16 v9, 0x66

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1012
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "attachImageInternal() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    # getter for: Lcom/htc/camera/component/PanoramaController2$StitchImageData;->jpegRawData:[B
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->access$1100(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)[B

    move-result-object v0

    # getter for: Lcom/htc/camera/component/PanoramaController2$StitchImageData;->imageWidth:I
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->access$1200(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)I

    move-result v1

    # getter for: Lcom/htc/camera/component/PanoramaController2$StitchImageData;->imageHeight:I
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->access$1300(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)I

    move-result v2

    # getter for: Lcom/htc/camera/component/PanoramaController2$StitchImageData;->captureRotation:Lcom/htc/camera/rotate/UIRotation;
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->access$1400(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v3

    # getter for: Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thumbnailLongSideLength:I
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->access$1500(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)I

    move-result v4

    # getter for: Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thumbnailShortSideLength:I
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->access$1600(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)I

    move-result v5

    # getter for: Lcom/htc/camera/component/PanoramaController2$StitchImageData;->thresholds:[I
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->access$1700(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)[I

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/htc/camera/PanoramaStitcher;->attachImage([BIILcom/htc/camera/rotate/UIRotation;II[I)I

    move-result v0

    .line 1018
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    .line 1021
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "The direction is NO"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    if-eq v0, v1, :cond_b

    .line 1096
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v2, v9

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1098
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "attachImageInternal() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    return-void

    .line 1025
    :cond_1
    iget-boolean v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsDirectionLocked:Z

    if-nez v1, :cond_5

    .line 1029
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "The direction is left"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    .line 1045
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    .line 1046
    if-eqz v1, :cond_4

    .line 1048
    const/16 v2, 0x9

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iput-boolean v7, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsDirectionLocked:Z

    goto :goto_0

    .line 1034
    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1036
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "The direction is right"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const/4 v3, 0x2

    goto :goto_2

    .line 1041
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "The direction is wrong!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v8

    goto :goto_2

    .line 1052
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify onDirectionChanged"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "Direction is already locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v2, " attach result has error !"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    sget-object v5, Lcom/htc/camera/component/PanoramaController2$ErrorType;->Unknown:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 1065
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_8

    .line 1067
    sget-object v5, Lcom/htc/camera/component/PanoramaController2$ErrorType;->TooFast:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 1068
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "Too fast error"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    move-object v0, p0

    move v2, v9

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v7, v8

    .line 1091
    goto/16 :goto_0

    .line 1070
    :cond_8
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_9

    .line 1072
    sget-object v5, Lcom/htc/camera/component/PanoramaController2$ErrorType;->Backward:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 1073
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "Backward error"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1075
    :cond_9
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    .line 1077
    sget-object v5, Lcom/htc/camera/component/PanoramaController2$ErrorType;->TooNarrow:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 1078
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "Too narrow error"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1080
    :cond_a
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_7

    .line 1082
    sget-object v5, Lcom/htc/camera/component/PanoramaController2$ErrorType;->InitFailed:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 1083
    iput-boolean v7, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitchedJpegDataReady:Z

    .line 1084
    # getter for: Lcom/htc/camera/component/PanoramaController2$StitchImageData;->jpegRawData:[B
    invoke-static {p1}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;->access$1100(Lcom/htc/camera/component/PanoramaController2$StitchImageData;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchedJpegData:[B

    .line 1085
    iput-boolean v8, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    .line 1086
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "initalize stitcher failed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move v8, v7

    goto/16 :goto_1
.end method

.method private createReviewImage([BLcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1911
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "createReviewImage() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1918
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1919
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1925
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v5, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 1926
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1928
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v0, v5

    int-to-double v2, v0

    .line 1929
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    .line 1938
    :goto_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1940
    add-int/lit8 v0, v0, -0x1

    .line 1945
    const/4 v1, 0x0

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1946
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1947
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1954
    if-eqz v0, :cond_4

    .line 1957
    :try_start_1
    invoke-virtual {p2}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1959
    int-to-double v1, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double v3, v1, v3

    .line 1960
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v1, v5

    .line 1969
    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1971
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1973
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toScreenRatio is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1978
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1981
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "createReviewImage() - end"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2000
    if-eqz v0, :cond_0

    .line 2004
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_2
    move-object v0, v1

    .line 1995
    :cond_1
    :goto_3
    return-object v0

    .line 1934
    :cond_2
    :try_start_3
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/2addr v0, v1

    int-to-double v2, v0

    .line 1935
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v0, v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-double v0, v0

    goto :goto_0

    .line 1965
    :cond_3
    :try_start_4
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double v3, v1, v3

    .line 1966
    int-to-double v1, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v1, v5

    goto :goto_1

    .line 1986
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v2, "createReviewImage() - dstBitmap is null"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2000
    if-eqz v0, :cond_1

    .line 2004
    :try_start_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 2006
    :catch_0
    move-exception v1

    .line 2008
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "createReviewImage() - Cannot recycle dstBitmap"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1992
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 1994
    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "createReviewImage() - Cannot create review image"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2000
    if-eqz v1, :cond_5

    .line 2004
    :try_start_7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_5
    move-object v0, v7

    .line 1995
    goto :goto_3

    .line 2000
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v7, :cond_6

    .line 2004
    :try_start_8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 2000
    :cond_6
    :goto_7
    throw v0

    .line 2006
    :catch_2
    move-exception v1

    .line 2008
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "createReviewImage() - Cannot recycle dstBitmap"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 2006
    :catch_3
    move-exception v0

    .line 2008
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v2, "createReviewImage() - Cannot recycle dstBitmap"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 2006
    :catch_4
    move-exception v0

    .line 2008
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "createReviewImage() - Cannot recycle dstBitmap"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2000
    :catchall_1
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_6

    .line 1992
    :catch_5
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4
.end method

.method private createThumbnail()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1634
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "createThumbnail () - start."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Create thumbnail"

    const-wide/16 v2, 0x1388

    iget-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_CreatingThumbnailTimeoutCallback:Lcom/htc/camera/debug/b;

    iget-object v5, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CreatingThumbnailTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1643
    :cond_0
    new-instance v3, Lcom/htc/camera/widget/PanoramaObject;

    invoke-direct {v3}, Lcom/htc/camera/widget/PanoramaObject;-><init>()V

    .line 1646
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailRgbBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v3}, Lcom/htc/camera/PanoramaStitcher;->getThumbnailImage(Ljava/nio/ByteBuffer;Lcom/htc/camera/widget/PanoramaObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1648
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "createThumbnail () - Failed to get thumbnail image."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_1

    .line 1711
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CreatingThumbnailTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CreatingThumbnailTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "createThumbnail () - end."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    return v8

    .line 1656
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailRgbBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1657
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailRgbBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " m_ThumbnailBitmap.getHeight() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " m_ThumbnailBitmap.getWidth() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget v0, v3, Lcom/htc/camera/widget/PanoramaObject;->clippingRectWidth:I

    int-to-double v0, v0

    iget v2, v3, Lcom/htc/camera/widget/PanoramaObject;->clippingRectHeight:I

    int-to-double v4, v2

    div-double/2addr v0, v4

    .line 1676
    sget v2, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    int-to-double v4, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 1679
    iput v0, v3, Lcom/htc/camera/widget/PanoramaObject;->availableThumbnailLength:I

    .line 1682
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " shownThumbnailLength is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsThumbnailLenghtReached:Z

    if-eqz v0, :cond_6

    :cond_3
    move v6, v8

    .line 1689
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 1690
    if-eqz v0, :cond_4

    .line 1692
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1694
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, v3, Lcom/htc/camera/widget/PanoramaObject;->maxStitchedImageLength:I

    .line 1704
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    const/16 v2, 0xe

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    aput-object v0, v5, v8

    aput-object v3, v5, v7

    move-object v0, p0

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v8, v6

    goto/16 :goto_0

    .line 1659
    :catch_0
    move-exception v0

    .line 1661
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v2, "createThumbnail() - Fail to copy bitmap"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1698
    :cond_5
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, v3, Lcom/htc/camera/widget/PanoramaObject;->maxStitchedImageLength:I

    .line 1699
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " maxStitchedImageLength is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/htc/camera/widget/PanoramaObject;->maxStitchedImageLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move v6, v7

    goto :goto_2
.end method

.method private finalizeStitcher()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2123
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    if-nez v0, :cond_1

    .line 2126
    invoke-static {}, Lcom/htc/camera/PanoramaStitcher;->finalizeStitcher()V

    .line 2127
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    iget-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2130
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->unlockSharedLargeNativeBuffer(J)V

    .line 2131
    iput-wide v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    .line 2138
    :cond_0
    :goto_0
    const/16 v2, 0x68

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2139
    return-void

    .line 2135
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "finalizeStitcher() - m_IsStitcherAvailable is true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 579
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    :cond_0
    const/4 v0, 0x0

    .line 585
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isPanoramaSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public static isZoomingSupported()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method private lock2A()V
    .locals 2

    .prologue
    .line 2085
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->unlock2A()V

    .line 2087
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "lock2A()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    const-class v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 2090
    if-eqz v0, :cond_0

    .line 2092
    const-string v1, "Panorama"

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->lockAutoExposure(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_AecLockHandle:Lcom/htc/camera/Handle;

    .line 2093
    const-string v1, "Panorama"

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->lockAutoWhiteBalance(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AwbLockHandle:Lcom/htc/camera/Handle;

    .line 2095
    :cond_0
    return-void
.end method

.method private onCancelCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1836
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    if-nez v0, :cond_1

    .line 1838
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1841
    iput-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1842
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/htc/camera/component/PanoramaController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[BZ)V

    .line 1849
    :goto_0
    return-void

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onCancelCapture() - Stopping capture, ignore this cancel"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1848
    :cond_1
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Stopping:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->setCaptureState(Lcom/htc/camera/component/PanoramaController2$CaptureState;)V

    goto :goto_0
.end method

.method private onEnterPanoramaMode(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 611
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    sget v2, Lcom/htc/camera/component/PanoramaController2;->DEFAULT_SHUTTER_SOUND:I

    invoke-interface {v0, v2}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v7, v3}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 621
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v7}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProvider:Lcom/htc/camera/component/PanoramaResolutionProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_3

    .line 627
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 628
    if-eqz v0, :cond_6

    .line 631
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 632
    const/4 v1, 0x3

    .line 633
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProvider:Lcom/htc/camera/component/PanoramaResolutionProvider;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 634
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 635
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaMode() - Resolution provider changed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_4

    .line 646
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->lockSharedLargeNativeBuffer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    .line 647
    iget-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_7

    .line 649
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->unlockSharedLargeNativeBuffer(J)V

    .line 650
    iput-wide v5, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    .line 658
    :cond_4
    :goto_1
    return-void

    .line 637
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaMode() - Cannot change resolution provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "enterPanoramaMode() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onEnterPanoramaMode() - Fail to lock stitch buffer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    const/16 v2, 0x66

    sget-object v5, Lcom/htc/camera/component/PanoramaController2$ErrorType;->InitFailed:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1
.end method

.method private onExitPanoramaMode(I)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 666
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    if-eqz v0, :cond_2

    .line 669
    invoke-static {}, Lcom/htc/camera/PanoramaStitcher;->finalizeStitcher()V

    .line 672
    iget-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 674
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->unlockSharedLargeNativeBuffer(J)V

    .line 675
    iput-wide v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    .line 682
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    .line 687
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    const-string v0, "zsl"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->setCaptureMode(Ljava/lang/String;)V

    .line 692
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 696
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/camera/component/PanoramaController2;->restoreResolutionProvider(I)V

    .line 701
    return-void

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onExitPanoramaMode() - Finalizing stitcher, unlock stitch buffer later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_3
    const-string v0, "normal"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->setCaptureMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onImageAttached(ZII)V
    .locals 7

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onImageAttached() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1117
    :cond_0
    if-eqz p1, :cond_1

    .line 1118
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->createThumbnail()Z

    move-result p1

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    if-eqz v0, :cond_6

    .line 1124
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1130
    :goto_0
    if-nez p1, :cond_9

    .line 1134
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, " onImageAttached() - get panorama image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1138
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Get stitched image"

    const-wide/16 v2, 0x7530

    iget-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchingImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1142
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    if-eqz v0, :cond_7

    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitchedJpegDataReady:Z

    .line 1145
    invoke-static {}, Lcom/htc/camera/PanoramaStitcher;->getImage()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchedJpegData:[B

    .line 1146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitchedJpegDataReady:Z

    .line 1150
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_3

    .line 1151
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "finalize Stitcher"

    const-wide/16 v2, 0x3a98

    iget-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_FinalizingStitcherTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_FinalizingStitcherTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1153
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    .line 1159
    :goto_1
    const/16 v0, 0x67

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/camera/component/PanoramaController2;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 1161
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_4

    .line 1163
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchingImageTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchingImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1167
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchedJpegData:[B

    if-eqz v0, :cond_8

    .line 1168
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " the length of stitched jpeg data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchedJpegData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_5

    .line 1174
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->stopBurstShots()V

    .line 1176
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchedJpegData:[B

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/PanoramaController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[B)V

    .line 1289
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onImageAttached() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    return-void

    .line 1126
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify onIntermediateJpeg"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1157
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    goto :goto_1

    .line 1170
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, " stitched jpeg data is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1181
    :cond_9
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->attachImage()V

    goto :goto_3
.end method

.method private onJpegCallbackTimeout(I)V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

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

    .line 711
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    if-eq v0, v1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegCallbackTimeout() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignore timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Stopping:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->setCaptureState(Lcom/htc/camera/component/PanoramaController2$CaptureState;)V

    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/camera/component/PanoramaController2;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    goto :goto_0
.end method

.method private onPictureTaken(I[BLcom/htc/camera/CameraController;I)V
    .locals 17

    .prologue
    .line 1339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, "JPEG call-back ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "]"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1342
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    .line 1350
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v14

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    sget-object v4, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    if-ne v3, v4, :cond_5

    .line 1354
    const/4 v13, 0x1

    .line 1358
    :goto_0
    if-eqz v13, :cond_6

    .line 1360
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_2

    .line 1362
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const/4 v13, 0x0

    .line 1371
    :cond_2
    :goto_1
    if-eqz v13, :cond_c

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, " attach image"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const/4 v5, 0x0

    .line 1376
    const/4 v4, 0x0

    .line 1377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v3, :cond_a

    .line 1379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v3, v3, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/Resolution;

    .line 1380
    if-eqz v3, :cond_9

    .line 1384
    invoke-virtual {v3}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v4

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD_RATIO:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD:I

    .line 1386
    iget-object v4, v14, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v4}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v4}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1388
    invoke-virtual {v3}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v4

    .line 1389
    invoke-virtual {v3}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :goto_2
    move v11, v3

    move v12, v4

    .line 1418
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v3, :cond_3

    .line 1420
    if-nez p1, :cond_b

    .line 1421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attach image["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x2710

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/PanoramaController2;->m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1427
    :cond_3
    :goto_4
    const/16 v15, 0x65

    new-instance v3, Lcom/htc/camera/component/PanoramaController2$StitchImageData;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    sget v8, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    sget v9, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    const/4 v4, 0x4

    new-array v10, v4, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD:I

    aput v5, v10, v4

    const/4 v4, 0x1

    const/16 v5, 0x320

    aput v5, v10, v4

    const/4 v4, 0x2

    const/16 v5, 0x12c

    aput v5, v10, v4

    const/4 v4, 0x3

    const/16 v5, 0x96

    aput v5, v10, v4

    move-object/from16 v4, p2

    move v5, v12

    move v6, v11

    invoke-direct/range {v3 .. v10}, Lcom/htc/camera/component/PanoramaController2$StitchImageData;-><init>([BIILcom/htc/camera/rotate/UIRotation;II[I)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/htc/camera/component/PanoramaController2;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 1437
    :goto_5
    if-eqz v13, :cond_10

    if-nez p1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_IsSecondPictureTaken:Z

    if-nez v3, :cond_10

    .line 1439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v14}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v3

    sget-object v4, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v3, v4, :cond_10

    .line 1442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Cannot start preview"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    const/4 v3, 0x0

    .line 1448
    :goto_6
    if-nez p1, :cond_d

    if-eqz v3, :cond_d

    .line 1450
    const/4 v4, 0x0

    .line 1451
    const/4 v5, 0x0

    .line 1455
    :try_start_0
    const-string v3, ".camera_temp"

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1456
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1457
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1460
    new-instance v5, Landroid/media/ExifInterface;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1461
    const/16 v3, 0xe

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "DateTime"

    aput-object v8, v7, v3

    const/4 v3, 0x1

    const-string v8, "FocalLength"

    aput-object v8, v7, v3

    const/4 v3, 0x2

    const-string v8, "GPSAltitude"

    aput-object v8, v7, v3

    const/4 v3, 0x3

    const-string v8, "GPSAltitudeRef"

    aput-object v8, v7, v3

    const/4 v3, 0x4

    const-string v8, "GPSLatitude"

    aput-object v8, v7, v3

    const/4 v3, 0x5

    const-string v8, "GPSLatitudeRef"

    aput-object v8, v7, v3

    const/4 v3, 0x6

    const-string v8, "GPSLongitude"

    aput-object v8, v7, v3

    const/4 v3, 0x7

    const-string v8, "GPSLongitudeRef"

    aput-object v8, v7, v3

    const/16 v3, 0x8

    const-string v8, "GPSProcessingMethod"

    aput-object v8, v7, v3

    const/16 v3, 0x9

    const-string v8, "GPSDateStamp"

    aput-object v8, v7, v3

    const/16 v3, 0xa

    const-string v8, "GPSTimeStamp"

    aput-object v8, v7, v3

    const/16 v3, 0xb

    const-string v8, "Make"

    aput-object v8, v7, v3

    const/16 v3, 0xc

    const-string v8, "Model"

    aput-object v8, v7, v3

    const/16 v3, 0xd

    const-string v8, "WhiteBalance"

    aput-object v8, v7, v3

    .line 1477
    array-length v8, v7

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v8, :cond_f

    aget-object v9, v7, v3

    .line 1479
    invoke-virtual {v5, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1480
    if-eqz v10, :cond_4

    .line 1481
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/camera/component/PanoramaController2;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v11, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1477
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1357
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1366
    :cond_6
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    array-length v3, v0

    if-nez v3, :cond_2

    .line 1367
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1393
    :cond_8
    invoke-virtual {v3}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v4

    .line 1394
    invoke-virtual {v3}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_2

    .line 1399
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v6, "takePicture() - No photo resolution"

    invoke-static {v3, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    move v4, v5

    goto/16 :goto_2

    .line 1404
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v6, "takePicture() - No ICaptureResolutionManager interface"

    invoke-static {v3, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v4

    move v12, v5

    goto/16 :goto_3

    .line 1423
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attach image["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x1388

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/component/PanoramaController2;->m_AttachingImageTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v8, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->m_AttachImageTimeoutHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_4

    .line 1432
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - isCapturing is false."

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    const/16 v5, 0x66

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_5

    .line 1484
    :catch_0
    move-exception v3

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    .line 1486
    :goto_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v7, "Cannot extract EXIF from first frame"

    invoke-static {v6, v7, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1490
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1492
    if-eqz v5, :cond_d

    .line 1493
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1497
    :cond_d
    :goto_9
    return-void

    .line 1490
    :catchall_0
    move-exception v3

    move-object v6, v4

    move-object v4, v5

    :goto_a
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1492
    if-eqz v6, :cond_e

    .line 1493
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1490
    :cond_e
    throw v3

    :cond_f
    invoke-static {v4}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1492
    if-eqz v6, :cond_d

    .line 1493
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_9

    .line 1490
    :catchall_1
    move-exception v3

    move-object v4, v5

    goto :goto_a

    :catchall_2
    move-exception v3

    goto :goto_a

    :catchall_3
    move-exception v3

    move-object v6, v5

    goto :goto_a

    .line 1484
    :catch_1
    move-exception v3

    move-object v4, v5

    move-object v5, v6

    goto :goto_8

    :catch_2
    move-exception v3

    move-object v5, v6

    goto :goto_8

    :cond_10
    move v3, v13

    goto/16 :goto_6
.end method

.method private onPictureTaken(Lcom/htc/camera/imaging/JpegEventArgs;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1500
    if-eqz p1, :cond_3

    .line 1501
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "JPEG call-back ["

    iget v4, p1, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static {v1, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1505
    :goto_0
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    .line 1507
    if-eqz p1, :cond_4

    iget v1, p1, Lcom/htc/camera/imaging/JpegEventArgs;->index:I

    if-nez v1, :cond_4

    .line 1510
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    sget-object v3, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    if-ne v1, v3, :cond_0

    .line 1511
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->attachImage()V

    .line 1514
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 1515
    iget-object v3, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, "onPictureTaken() - Start preview"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->startPreviewSilently()Lcom/htc/camera/CameraPreviewStartResult;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    if-eq v1, v3, :cond_1

    .line 1518
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - Cannot start preview"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_1
    :try_start_0
    const-string v1, ".camera_temp"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1528
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1529
    :try_start_2
    iget-object v2, p1, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1532
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1533
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DateTime"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "FocalLength"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "GPSAltitude"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "GPSAltitudeRef"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "GPSLatitude"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "GPSLatitudeRef"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "GPSLongitude"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "GPSLongitudeRef"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "GPSProcessingMethod"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "GPSDateStamp"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "GPSTimeStamp"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "Make"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "Model"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "WhiteBalance"

    aput-object v6, v4, v5

    .line 1549
    array-length v5, v4

    :goto_1
    if-ge v0, v5, :cond_6

    aget-object v6, v4, v0

    .line 1551
    invoke-virtual {v2, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1552
    if-eqz v7, :cond_2

    .line 1553
    iget-object v8, p0, Lcom/htc/camera/component/PanoramaController2;->m_ExifTags:Ljava/util/Hashtable;

    invoke-virtual {v8, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1549
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1503
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "onPictureTaken() - jpeg event args is null"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1556
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1558
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v4, "Cannot extract EXIF from first frame"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1562
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1564
    if-eqz v2, :cond_4

    .line 1565
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1569
    :cond_4
    :goto_3
    return-void

    .line 1562
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1564
    if-eqz v3, :cond_5

    .line 1565
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1562
    :cond_5
    throw v0

    :cond_6
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1564
    if-eqz v3, :cond_4

    .line 1565
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 1562
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 1556
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private onShutter(I)V
    .locals 4

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 902
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->playShutterSound()V

    .line 905
    :cond_0
    return-void
.end method

.method private onShutter(Lcom/htc/camera/OneValueEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    iget-object v2, p1, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 909
    iget-object v0, p1, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 911
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->startBurstShots()Z

    .line 917
    :cond_1
    return-void
.end method

.method private onStitchCompleted(Lcom/htc/camera/CaptureHandle;[B)V
    .locals 1

    .prologue
    .line 1726
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/component/PanoramaController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[BZ)V

    .line 1727
    return-void
.end method

.method private onStitchCompleted(Lcom/htc/camera/CaptureHandle;[BZ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1730
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - Invalid capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    :goto_0
    return-void

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_1

    .line 1744
    sget-object v1, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1750
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStitchCompleted() - m_BurstCamera.burstCameraState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v2, v2, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1756
    :cond_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitchedJpegDataReady:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    .line 1758
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - m_IsStitchedJpegDataReady is false. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1763
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->unRegisterBurstCameraCallbacks()V

    .line 1775
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v6

    .line 1776
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStitchCompleted() - jpegData is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    if-eqz p2, :cond_4

    .line 1779
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_ExifTags:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;-><init>(Lcom/htc/camera/component/PanoramaController2;Lcom/htc/camera/CaptureHandle;[BLjava/util/Hashtable;Lcom/htc/camera/rotate/UIRotation;)V

    .line 1780
    sget-object v1, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    iput-object v1, v0, Lcom/htc/camera/component/PanoramaController2$SavePanoramaImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 1781
    invoke-virtual {v6, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1789
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v6, v0}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1792
    iput-object v8, p0, Lcom/htc/camera/component/PanoramaController2;->m_CurrentJpegEventArgs:Lcom/htc/camera/imaging/JpegEventArgs;

    .line 1793
    iput-object v8, p0, Lcom/htc/camera/component/PanoramaController2;->m_StitchedJpegData:[B

    .line 1794
    iput-object v8, p0, Lcom/htc/camera/component/PanoramaController2;->m_ExifTags:Ljava/util/Hashtable;

    .line 1795
    iput-object v8, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1796
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Ready:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->setCaptureState(Lcom/htc/camera/component/PanoramaController2$CaptureState;)V

    .line 1798
    const-string v0, "panorama"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->setCaptureMode(Ljava/lang/String;)V

    .line 1802
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->unlock2A()V

    .line 1805
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 1807
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0, p2, v0}, Lcom/htc/camera/component/PanoramaController2;->createReviewImage([BLcom/htc/camera/rotate/UIRotation;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1808
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    if-eqz v0, :cond_5

    .line 1809
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    const/16 v2, 0xd

    move-object v0, p0

    move v3, v7

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1819
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    if-eqz v0, :cond_6

    .line 1820
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    const/16 v2, 0xb

    move-object v0, p0

    move v3, v7

    move v4, v7

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1825
    :goto_3
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->reTakePicture()V

    .line 1827
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1786
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onStitchCompleted() - No JPEG data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    iget-object v0, v6, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/CaptureEventArgs;

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v1, p1, v2}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto :goto_1

    .line 1812
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "No UI to send review image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    if-eqz v5, :cond_3

    .line 1814
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 1822
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify STITCH_COMPLETED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1744
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerBurstCameraCallbacks()V
    .locals 2

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "registerBurstCameraCallbacks()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->jpegReceivedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 2150
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->shutterReceivedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_ShutterHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 2151
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCameraStateListener:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2157
    :goto_0
    return-void

    .line 2155
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "registerBurstCameraCallbacks() - m_BurstCamera is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreResolutionProvider(I)V
    .locals 3

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 2104
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 2105
    if-eqz v0, :cond_2

    .line 2107
    const/4 v1, 0x2

    .line 2108
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_0

    .line 2109
    const/4 v1, 0x0

    .line 2110
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 2111
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "exitPanoramaMode() - Resolution provider restored"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 2117
    :cond_1
    return-void

    .line 2114
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "exitPanoramaMode() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCaptureMode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_1

    .line 566
    const-string v1, "capture-mode-values"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 567
    const-string v1, "capture-mode"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_0
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No camera controller to set mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCaptureState(Lcom/htc/camera/component/PanoramaController2$CaptureState;)V
    .locals 3

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1894
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    .line 1895
    return-void
.end method

.method private unRegisterBurstCameraCallbacks()V
    .locals 2

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterBurstCameraCallbacks()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->jpegReceivedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 2168
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->shutterReceivedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_ShutterHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 2169
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCameraStateListener:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->removeChangedCallback(Lcom/htc/camera/property/c;)Z

    .line 2175
    :goto_0
    return-void

    .line 2173
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterBurstCameraCallbacks() - m_BurstCamera is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unlock2A()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2068
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "unlock2A()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    const-class v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    .line 2071
    if-eqz v0, :cond_0

    .line 2073
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_AecLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->unlockAutoExposure(Lcom/htc/camera/Handle;)V

    .line 2074
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_AwbLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IImageSettingsController;->unlockAutoWhiteBalance(Lcom/htc/camera/Handle;)V

    .line 2076
    :cond_0
    iput-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_AecLockHandle:Lcom/htc/camera/Handle;

    .line 2077
    iput-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_AwbLockHandle:Lcom/htc/camera/Handle;

    .line 2078
    return-void
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2018
    if-nez p1, :cond_0

    .line 2037
    :goto_0
    return v0

    .line 2021
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq p1, v1, :cond_1

    .line 2023
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

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

    .line 2028
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    sget-object v2, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    if-eq v1, v2, :cond_2

    .line 2030
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2035
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->onCancelCapture()V

    .line 2037
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 409
    iget-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->unlockSharedLargeNativeBuffer(J)V

    .line 412
    iput-wide v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    .line 416
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/panorama/IPanoramaController;->deinitializeOverride()V

    .line 417
    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 426
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 440
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/camera/panorama/IPanoramaController;->handleAsyncMessage(Landroid/os/Message;)V

    .line 443
    :goto_0
    return-void

    .line 430
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/PanoramaController2$StitchImageData;

    .line 431
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 432
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 433
    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/PanoramaController2;->attachImageInternal(Lcom/htc/camera/component/PanoramaController2$StitchImageData;II)V

    goto :goto_0

    .line 437
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->finalizeStitcher()V

    goto :goto_0

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 451
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 498
    invoke-super {p0, p1}, Lcom/htc/camera/panorama/IPanoramaController;->handleMessage(Landroid/os/Message;)V

    .line 501
    :goto_0
    return-void

    .line 455
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->onEnterPanoramaMode(I)V

    goto :goto_0

    .line 459
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->onExitPanoramaMode(I)V

    goto :goto_0

    .line 463
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->onCancelCapture()V

    goto :goto_0

    .line 466
    :sswitch_3
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsThumbnailLenghtReached:Z

    goto :goto_0

    .line 470
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 471
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 472
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 473
    invoke-direct {p0, v0, v1, v2}, Lcom/htc/camera/component/PanoramaController2;->onImageAttached(ZII)V

    goto :goto_0

    .line 479
    :sswitch_5
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_FinalizingStitcherTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_FinalizingStitcherTimeoutHandle:Lcom/htc/camera/Handle;

    .line 485
    :cond_0
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    .line 488
    iget-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 490
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->unlockSharedLargeNativeBuffer(J)V

    .line 491
    iput-wide v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->reTakePicture()V

    goto :goto_0

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_3
        0x66 -> :sswitch_4
        0x68 -> :sswitch_5
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 510
    invoke-super {p0}, Lcom/htc/camera/panorama/IPanoramaController;->initializeOverride()V

    .line 513
    const-class v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 514
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 515
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 516
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 517
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    .line 518
    const-class v0, Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/IBurstCamera;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    .line 521
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 522
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/PanoramaController2$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/PanoramaController2$10;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 533
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/PanoramaController2$11;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/PanoramaController2$11;-><init>(Lcom/htc/camera/component/PanoramaController2;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 557
    return-void
.end method

.method link(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 2

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/camera/component/PanoramaController2;->PROPERTY_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    if-ne v0, v1, :cond_1

    .line 602
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    .line 603
    :cond_1
    return-void
.end method

.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 3

    .prologue
    .line 1301
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-virtual {v1, v0}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1310
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ShutterIndex:I

    iget v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    if-gt v0, v1, :cond_2

    .line 1312
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Shutter call-back["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->onJpegCallbackTimeout(I)V

    .line 1336
    :goto_1
    return-void

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - JPEG index is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but there is no timeout timer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1318
    :cond_2
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$12;->$SwitchMap$com$htc$camera$component$PanoramaController2$CaptureState:[I

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-virtual {v1}, Lcom/htc/camera/component/PanoramaController2$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1324
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1328
    :pswitch_0
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    iget v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_TakePictureIndex:I

    if-le v0, v1, :cond_3

    .line 1329
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture m_JpegIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",m_TakePictureIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_TakePictureIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1334
    :cond_3
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/htc/camera/component/PanoramaController2;->onPictureTaken(I[BLcom/htc/camera/CameraController;I)V

    .line 1335
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    goto/16 :goto_1

    .line 1318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostviewCallback([B)V
    .locals 3

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    if-nez p1, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onPostviewCallback() - yuvData is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "onPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    return-void

    .line 1885
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostviewCallback() - yuvData.length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShutter()V
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ShutterIndex:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->onShutter(I)V

    .line 895
    iget v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ShutterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ShutterIndex:I

    .line 896
    return-void
.end method

.method public final playShutterSound()V
    .locals 1

    .prologue
    .line 1856
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1857
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->playShutterSound(Z)V

    .line 1861
    :goto_0
    return-void

    .line 1859
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->playShutterSound(Z)V

    goto :goto_0
.end method

.method public final playShutterSound(Z)V
    .locals 3

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 1867
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->mShutterSoundHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 1875
    :goto_0
    return-void

    .line 1870
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "playShutterSound() - No shutter sound ID"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "playShutterSound() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reTakePicture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 727
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureState:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Ready:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    if-eq v0, v1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 733
    iput-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 737
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/component/PanoramaController2;->takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 741
    iget-object v2, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v3, "reTakePicture() - fail to take picture"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 742
    const/4 v0, 0x1

    invoke-direct {p0, v1, v4, v0}, Lcom/htc/camera/component/PanoramaController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[BZ)V

    goto :goto_0
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 11

    .prologue
    const-wide v6, 0x3fb999999999999aL    # 0.1

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 754
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    :goto_0
    return v3

    .line 757
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    if-nez v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - m_IsStitcherAvailable is false. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    move v3, v2

    .line 761
    goto :goto_0

    .line 764
    :cond_1
    iput-object v10, p0, Lcom/htc/camera/component/PanoramaController2;->m_PendingCaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 767
    iget-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Try to lock stitcher buffer again"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->lockSharedLargeNativeBuffer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    .line 772
    :cond_2
    iget-wide v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_NativeStitchBuffer:J

    const/high16 v4, 0x8000000

    invoke-static {v0, v1, v4}, Lcom/htc/camera/PanoramaStitcher;->initialize(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Fail to initialize stitcher"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    const/16 v2, 0x66

    sget-object v5, Lcom/htc/camera/component/PanoramaController2$ErrorType;->InitFailed:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/PanoramaController2;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 776
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to initialize stitcher"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 783
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 786
    iput-boolean v2, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitcherAvailable:Z

    .line 787
    iput-boolean v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsSecondPictureTaken:Z

    .line 788
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaController2;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 789
    iput v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_TakePictureIndex:I

    .line 790
    iput v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_ShutterIndex:I

    .line 791
    iput v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegIndex:I

    .line 792
    iput-boolean v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsDirectionLocked:Z

    .line 793
    iput-boolean v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsThumbnailLenghtReached:Z

    .line 794
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/PanoramaController2;->setCaptureState(Lcom/htc/camera/component/PanoramaController2$CaptureState;)V

    .line 795
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_JpegTimeoutTimerHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 796
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ExifTags:Ljava/util/Hashtable;

    .line 798
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 799
    if-eqz v0, :cond_4

    .line 801
    invoke-virtual {p0}, Lcom/htc/camera/component/PanoramaController2;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 803
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolution.getWidth() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resolution.getHeight is() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v6

    double-to-int v1, v4

    sput v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    .line 805
    sget v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    sget v4, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    rem-int/lit8 v4, v4, 0x4

    sub-int/2addr v1, v4

    sput v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    .line 808
    sget v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    int-to-double v4, v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    int-to-double v6, v1

    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    mul-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-wide v6, p0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD_RATIO:D

    mul-double/2addr v0, v6

    div-double v0, v4, v0

    double-to-int v0, v0

    sput v0, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    .line 817
    :goto_1
    sget v0, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    sget v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    rem-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sput v0, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    .line 824
    :cond_4
    sget v0, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    .line 825
    sget v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    .line 826
    iget-object v4, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " thumbnailHeight is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", thumnnailWidth is() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 832
    sget v0, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    sget v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_ThumbnailRgbBuffer:Ljava/nio/ByteBuffer;

    .line 835
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->lock2A()V

    .line 836
    iput-boolean v3, p0, Lcom/htc/camera/component/PanoramaController2;->m_IsStitchedJpegDataReady:Z

    .line 840
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_7

    .line 842
    invoke-direct {p0}, Lcom/htc/camera/component/PanoramaController2;->registerBurstCameraCallbacks()V

    .line 845
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->reset()V

    .line 847
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->takeOneShot()Z

    move-result v0

    if-nez v0, :cond_5

    .line 849
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Failed to startBurstShot"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-direct {p0, p1, v10, v2}, Lcom/htc/camera/component/PanoramaController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[BZ)V

    :cond_5
    :goto_2
    move v3, v2

    .line 886
    goto/16 :goto_0

    .line 812
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolution.getWidth() is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resolution.getHeight is() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v6

    double-to-int v1, v4

    sput v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    .line 814
    sget v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    sget v4, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    rem-int/lit8 v4, v4, 0x4

    sub-int/2addr v1, v4

    sput v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    .line 815
    sget v1, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_SHORT_SIDE_LENGTH:I

    int-to-double v4, v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    int-to-double v6, v1

    const-wide/high16 v8, 0x4016000000000000L    # 5.5

    mul-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-wide v6, p0, Lcom/htc/camera/component/PanoramaController2;->NARROWNESS_THRESHOLD_RATIO:D

    mul-double/2addr v0, v6

    div-double v0, v4, v0

    double-to-int v0, v0

    sput v0, Lcom/htc/camera/component/PanoramaController2;->THUMBNAIL_LONG_SIDE_LENGTH:I

    goto/16 :goto_1

    .line 855
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaController2;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - m_BurstCamera is not existed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-direct {p0, p1, v10, v2}, Lcom/htc/camera/component/PanoramaController2;->onStitchCompleted(Lcom/htc/camera/CaptureHandle;[BZ)V

    goto :goto_2
.end method
