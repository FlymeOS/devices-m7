.class final Lcom/htc/camera/dualcamera/DualCameraController;
.super Lcom/htc/camera/dualcamera/IDualCameraController;
.source "DualCameraController.java"

# interfaces
.implements Lcom/htc/camera/z;


# static fields
.field static final MAX_PHOTO_RESOLUTION:Lcom/htc/camera/Resolution;

.field private static m_IsHumanJointLibraryLoaded:Z


# instance fields
.field private m_AudioManager:Lcom/htc/camera/IAudioManager;

.field private m_CameraDeviceManager:Lcom/htc/camera/v;

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private m_DualCaptureVideoResolutionProvider:Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field private m_FileCounter:Lcom/htc/camera/io/FileCounter;

.field private m_HumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

.field private m_HumanJointPhotoResolutionProvider:Lcom/htc/camera/dualcamera/d;

.field private m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

.field private final m_InfPictureAccelerometerValues:[F

.field private m_InfinityFocusSteps:I

.field private m_IsClosingCamera:Z

.field private m_IsOpeningCamera:Z

.field private m_IsPreviewStarted:Z

.field private m_IsPrimaryJpegReceived:Z

.field private m_IsReviewImageNeeded:Z

.field private m_IsSecondaryAFSupported:Z

.field private m_IsSecondaryJpegReceived:Z

.field private final m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

.field private final m_LastAccelerometerValues:[F

.field private m_LastPrimaryObjects:[Lcom/htc/camera/ObjectTrackingInfo;

.field private m_LastSecondaryFaces:[Landroid/hardware/Camera$Face;

.field private m_NormalPhotoResolutionProvider:Lcom/htc/camera/dualcamera/e;

.field private m_OperationTimeoutController:Lcom/htc/camera/debug/a;

.field private m_PendingHumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

.field private m_PhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private m_PreviousSceneMode:Ljava/lang/String;

.field private m_PrimaryCameraPreservationHandle:Lcom/htc/camera/Handle;

.field private m_PrimaryJpeg:[B

.field private m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

.field private m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

.field private m_SceneController:Lcom/htc/camera/effect/ac;

.field private m_SecondaryCameraPreservationHandle:Lcom/htc/camera/Handle;

.field private final m_SecondaryFaceDetectionListener:Lcom/htc/camera/j;

.field private m_SecondaryInfJpeg:[B

.field private m_SecondaryJpeg:[B

.field private m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

.field private m_SecondaryPreviewBorder:Landroid/graphics/drawable/Drawable;

.field private m_SecondaryPreviewBorderBound:Landroid/graphics/Rect;

.field private m_SecondaryPreviewBound:Landroid/graphics/RectF;

.field private m_SharedBackgroundWorker:Lcom/htc/camera/ag;

.field private m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field private final m_TakingPictureAccelerometerValues:[F

.field private m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

.field private m_VideoResolutionHandle:Lcom/htc/camera/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v1, 0xcc0

    const/4 v3, 0x0

    .line 113
    new-instance v0, Lcom/htc/camera/Resolution;

    const-string v5, "PHOTO_1_1_3264_3264"

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController;->MAX_PHOTO_RESOLUTION:Lcom/htc/camera/Resolution;

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 614
    const-string v0, "Dual-Camera Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/dualcamera/IDualCameraController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 171
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->SingleCam:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 176
    sget-object v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_HumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 179
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_InfPictureAccelerometerValues:[F

    .line 188
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    .line 202
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraController$1;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryFaceDetectionListener:Lcom/htc/camera/j;

    .line 217
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_TakingPictureAccelerometerValues:[F

    .line 224
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraController$2;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 615
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/dualcamera/DualCameraController;[Landroid/hardware/Camera$Face;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->onSecondaryFaceDetection([Landroid/hardware/Camera$Face;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->selectSecondaryCamera()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraOpenFailedReason;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->openSecondaryCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraOpenFailedReason;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraType;)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->startSecondaryPreview(Lcom/htc/camera/CameraType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/dualcamera/DualCameraController;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->endPreserveCameras()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/dualcamera/DualCameraController;)Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->stopSecondaryPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/IAudioManager;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/dualcamera/DualCameraController;->setupHumanJointParameters(Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/dualcamera/DualCameraUI;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/dualcamera/DualCameraController;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/ICaptureResolutionManager;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/dualcamera/DualCameraController;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/camera/dualcamera/DualCameraController;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;[B)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraController;->onSecondaryInfJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->onPrimaryShutterReceived(Lcom/htc/camera/CaptureHandle;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;[B)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraController;->onPrimaryJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V

    return-void
.end method

.method static synthetic access$3800(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;[B)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraController;->onSecondaryJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/dualcamera/DualCameraController;Z)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->closeSecondaryCamera(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/CameraController;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraController;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 666
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 667
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateTo() - Change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 687
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/16 v2, 0x2715

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 684
    :pswitch_1
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/16 v2, 0x2716

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private closeSecondaryCamera(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 695
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 696
    if-nez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "closeSecondaryCamera() - No camera to close"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsClosingCamera:Z

    if-eqz v1, :cond_2

    .line 703
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "closeSecondaryCamera() - Secondary camera closing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v4, "closeSecondaryCamera("

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v5

    const-string v6, ")"

    invoke-static {v1, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 710
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsClosingCamera:Z

    .line 713
    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v4}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 730
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSecondaryCamera() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 720
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->stopPreview()V

    move v1, v2

    .line 735
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    invoke-virtual {v2, v0}, Lcom/htc/camera/v;->closeCamera(Lcom/htc/camera/CameraController;)V

    .line 740
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 756
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSecondaryCamera()2 - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move v1, v3

    .line 728
    goto :goto_1

    .line 744
    :pswitch_4
    if-eqz v1, :cond_3

    .line 747
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->startPreview()Lcom/htc/camera/Handle;

    .line 760
    :cond_3
    :pswitch_5
    iput-boolean v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsClosingCamera:Z

    .line 761
    iput-boolean v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPreviewStarted:Z

    .line 762
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 763
    if-eqz p1, :cond_0

    .line 764
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    .line 713
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 740
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private endPreserveCameras()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryCameraPreservationHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryCameraPreservationHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/v;->endPreserveCamera(Lcom/htc/camera/Handle;)V

    .line 776
    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryCameraPreservationHandle:Lcom/htc/camera/Handle;

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryCameraPreservationHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryCameraPreservationHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/v;->endPreserveCamera(Lcom/htc/camera/Handle;)V

    .line 781
    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryCameraPreservationHandle:Lcom/htc/camera/Handle;

    .line 783
    :cond_1
    return-void
.end method

.method private getPrimaryCameraType()Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method private getSecondaryCameraType()Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    return-object v0
.end method

.method private getSecondaryImageBounds(Lcom/htc/camera/imaging/Size;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    const/4 v10, -0x8

    .line 1015
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1016
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1017
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1023
    sget-object v3, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 1058
    :goto_0
    if-eqz p4, :cond_0

    .line 1060
    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1061
    invoke-virtual {p4, v10, v10}, Landroid/graphics/Rect;->inset(II)V

    .line 1063
    :cond_0
    return-void

    .line 1026
    :pswitch_0
    iget v0, p1, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v3, v0

    int-to-double v0, v1

    div-double v0, v3, v0

    .line 1027
    iget v3, p1, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v3, v3

    int-to-double v5, v2

    div-double v2, v3, v5

    .line 1028
    iget v4, p2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    double-to-float v4, v4

    iget v5, p2, Landroid/graphics/RectF;->top:F

    float-to-double v5, v5

    mul-double/2addr v5, v2

    double-to-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    mul-double/2addr v0, v6

    double-to-float v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v1

    mul-double v1, v6, v2

    double-to-float v1, v1

    invoke-virtual {p3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 1034
    :pswitch_1
    iget v0, p1, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v3, v0

    int-to-double v5, v2

    div-double v2, v3, v5

    .line 1035
    iget v0, p1, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v4, v0

    int-to-double v0, v1

    div-double v0, v4, v0

    .line 1036
    iget v4, p1, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v4, v4

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget v5, p2, Landroid/graphics/RectF;->left:F

    float-to-double v5, v5

    mul-double/2addr v5, v0

    double-to-float v5, v5

    iget v6, p1, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v6, v6

    iget v8, p2, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    double-to-float v2, v2

    iget v3, p2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v3

    mul-double/2addr v0, v6

    double-to-float v0, v0

    invoke-virtual {p3, v4, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 1042
    :pswitch_2
    iget v0, p1, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v3, v0

    int-to-double v0, v1

    div-double v0, v3, v0

    .line 1043
    iget v3, p1, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v3, v3

    int-to-double v5, v2

    div-double v2, v3, v5

    .line 1044
    iget v4, p1, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v4, v4

    iget v6, p2, Landroid/graphics/RectF;->right:F

    float-to-double v6, v6

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget v5, p1, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v5, v5

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v7, v7

    mul-double/2addr v7, v2

    sub-double/2addr v5, v7

    double-to-float v5, v5

    iget v6, p1, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v6, v6

    iget v8, p2, Landroid/graphics/RectF;->left:F

    float-to-double v8, v8

    mul-double/2addr v0, v8

    sub-double v0, v6, v0

    double-to-float v0, v0

    iget v1, p1, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v6, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-double v8, v1

    mul-double v1, v8, v2

    sub-double v1, v6, v1

    double-to-float v1, v1

    invoke-virtual {p3, v4, v5, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 1050
    :pswitch_3
    iget v0, p1, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v3, v0

    int-to-double v5, v2

    div-double v2, v3, v5

    .line 1051
    iget v0, p1, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v4, v0

    int-to-double v0, v1

    div-double v0, v4, v0

    .line 1052
    iget v4, p2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-float v4, v4

    iget v5, p1, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v5, v5

    iget v7, p2, Landroid/graphics/RectF;->right:F

    float-to-double v7, v7

    mul-double/2addr v7, v0

    sub-double/2addr v5, v7

    double-to-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    iget v3, p1, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v6, v3

    iget v3, p2, Landroid/graphics/RectF;->left:F

    float-to-double v8, v3

    mul-double/2addr v0, v8

    sub-double v0, v6, v0

    double-to-float v0, v0

    invoke-virtual {p3, v4, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 1023
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private linkToComponents()V
    .locals 2

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-nez v0, :cond_0

    .line 1505
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 1506
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-nez v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find ISceneController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-nez v0, :cond_1

    .line 1513
    const-class v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 1514
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-nez v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IEffectController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-nez v0, :cond_2

    .line 1521
    const-class v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    .line 1522
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-nez v0, :cond_2

    .line 1523
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IImageSettingsController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    if-nez v0, :cond_3

    .line 1529
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    .line 1530
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    if-nez v0, :cond_3

    .line 1531
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IOperationTimeoutController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-nez v0, :cond_4

    .line 1537
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    .line 1538
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-nez v0, :cond_4

    .line 1539
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    if-nez v0, :cond_5

    .line 1545
    const-class v0, Lcom/htc/camera/v;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/v;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    .line 1546
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    if-nez v0, :cond_5

    .line 1547
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find ICameraDeviceManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_6

    .line 1553
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 1554
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_6

    .line 1555
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :cond_6
    return-void
.end method

.method private static declared-synchronized loadHumanJointLibrary()Z
    .locals 5

    .prologue
    .line 1565
    const-class v1, Lcom/htc/camera/dualcamera/DualCameraController;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsHumanJointLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1566
    const/4 v0, 0x1

    .line 1585
    :goto_0
    monitor-exit v1

    return v0

    .line 1569
    :cond_0
    :try_start_1
    const-string v2, "libhtc_humanprocess.so"

    .line 1571
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/CameraApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1573
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/lib"

    invoke-static {v3, v2}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1574
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1575
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1583
    const-class v2, Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadHumanJointLibrary() - Load \'"

    const-string v4, "\'"

    invoke-static {v2, v3, v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1584
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->loadHumanJointLibrary(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsHumanJointLibraryLoaded:Z

    .line 1585
    sget-boolean v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsHumanJointLibraryLoaded:Z

    goto :goto_0

    .line 1578
    :cond_2
    const-class v0, Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "loadHumanJointLibrary() - Cannot find human process library"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    const/4 v0, 0x0

    goto :goto_0

    .line 1565
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native loadHumanJointLibrary(Ljava/lang/String;)Z
.end method

.method private onPreviewAdapterCreated(Lcom/htc/camera/CameraPreviewAdapter;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1594
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "onPreviewAdapterCreated()"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->previewAdapter:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1600
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    const/4 v0, 0x0

    .line 1604
    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v3}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    move v1, v0

    .line 1666
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1667
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->endPreserveCameras()V

    .line 1669
    :cond_1
    return-void

    :sswitch_0
    move v1, v0

    .line 1612
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1614
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->startSecondaryPreview(Lcom/htc/camera/CameraType;)Z

    .line 1615
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1619
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "onPreviewAdapterCreated() - Preview is not started, skip start secondary preview"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1622
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 1623
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->openSecondaryCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraOpenFailedReason;

    move-result-object v0

    .line 1624
    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "onPreviewAdapterCreated() - Fail to open secondary camera"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1631
    :cond_3
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    :sswitch_2
    move v1, v0

    .line 1641
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1643
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->startSecondaryPreview(Lcom/htc/camera/CameraType;)Z

    .line 1644
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1648
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "onPreviewAdapterCreated() - Preview is not started, skip start secondary preview"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1651
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 1652
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->openSecondaryCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraOpenFailedReason;

    move-result-object v0

    .line 1653
    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "onPreviewAdapterCreated() - Fail to open secondary camera"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto/16 :goto_0

    .line 1660
    :cond_5
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto/16 :goto_0

    .line 1604
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method private onPreviewAdapterDestroyed()V
    .locals 3

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewAdapterDestroyed()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->previewAdapter:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1682
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1704
    :goto_0
    return-void

    .line 1685
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewAdapterDestroyed() - Stop secondary preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 1687
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->stopSecondaryPreview()Z

    .line 1688
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStarting:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1691
    :cond_0
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1695
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onPreviewAdapterDestroyed() - Stop secondary preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 1697
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->stopSecondaryPreview()Z

    .line 1698
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1699
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStarting:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1701
    :cond_1
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_0

    .line 1682
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPrimaryJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V
    .locals 2

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 1714
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onPrimaryJpegReceived() - Invalid capture handle, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1717
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPrimaryJpegReceived:Z

    if-eqz v0, :cond_2

    .line 1719
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onPrimaryJpegReceived() - JPEG data was already received, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1723
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onPrimaryJpegReceived()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 1728
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1733
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPrimaryJpegReceived:Z

    .line 1734
    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    .line 1751
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryJpegReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryAFSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryInfJpeg:[B

    if-eqz v0, :cond_0

    .line 1752
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->processFinalImage()V

    goto :goto_0
.end method

.method private onPrimaryObjectDetected([Lcom/htc/camera/ObjectTrackingInfo;)V
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1766
    :goto_0
    return-void

    .line 1765
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastPrimaryObjects:[Lcom/htc/camera/ObjectTrackingInfo;

    goto :goto_0
.end method

.method private onPrimaryShutterReceived(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 1776
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onPrimaryShutterReceived() - Invalid capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onPrimaryShutterReceived()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryAFSupported:Z

    if-nez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1784
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    goto :goto_0
.end method

.method private onSecondaryFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1795
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PendingHumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 1804
    :goto_0
    return-void

    .line 1800
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastSecondaryFaces:[Landroid/hardware/Camera$Face;

    goto :goto_0
.end method

.method private onSecondaryInfJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V
    .locals 2

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 1814
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryInfJpegReceived() - Invalid capture handle, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    :cond_0
    :goto_0
    return-void

    .line 1817
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryInfJpeg:[B

    if-eqz v0, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryInfJpegReceived() - JPEG data was already received, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1823
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryInfJpegReceived()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryInfJpeg:[B

    .line 1852
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPrimaryJpegReceived:Z

    if-eqz v0, :cond_0

    .line 1853
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->processFinalImage()V

    goto :goto_0
.end method

.method private onSecondaryJpegReceived(Lcom/htc/camera/CaptureHandle;[B)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1862
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 1864
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryJpegReceived() - Invalid capture handle, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1867
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryJpegReceived:Z

    if-eqz v0, :cond_2

    .line 1869
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryJpegReceived() - JPEG data was already received, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1873
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "onSecondaryJpegReceived()"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_3

    .line 1878
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 1879
    iput-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 1883
    :cond_3
    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryJpegReceived:Z

    .line 1884
    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    .line 1885
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    monitor-enter v2

    .line 1887
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_InfPictureAccelerometerValues:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    array-length v7, v7

    invoke-static {v0, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1888
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1905
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryAFSupported:Z

    if-eqz v0, :cond_4

    .line 1908
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/htc/camera/CameraController;

    .line 1909
    invoke-virtual {v6}, Lcom/htc/camera/CameraController;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PreviousSceneMode:Ljava/lang/String;

    .line 1910
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSecondaryJpegReceived() - Change to manual scene, previous scene mode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PreviousSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v6}, Lcom/htc/camera/CameraController;->stopPreview()V

    .line 1912
    const-string v0, "manual"

    invoke-virtual {v6, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v6}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1914
    invoke-virtual {v6}, Lcom/htc/camera/CameraController;->startPreview()V

    .line 1920
    :try_start_1
    invoke-virtual {v6}, Lcom/htc/camera/CameraController;->updateCameraParameters()V

    .line 1921
    const-string v0, "min-focus"

    invoke-virtual {v6, v0}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I

    move-result v2

    .line 1922
    const-string v0, "max-focus"

    invoke-virtual {v6, v0}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v7, v0

    .line 1930
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryJpegReceived() - Manual focus range : ["

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1931
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecondaryJpegReceived() - Change manual focus steps to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    add-int/lit8 v0, v7, 0x1

    iput v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_InfinityFocusSteps:I

    .line 1933
    const-string v0, "focus"

    iget v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_InfinityFocusSteps:I

    invoke-virtual {v6, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1934
    invoke-virtual {v6}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 1937
    const-wide/16 v0, 0x12c

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1943
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryJpegReceived() - Take secondary picture with infinity focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :try_start_3
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$18;

    invoke-direct {v0, p0}, Lcom/htc/camera/dualcamera/DualCameraController$18;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$19;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$19;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1969
    :catch_0
    move-exception v0

    .line 1971
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "onSecondaryJpegReceived() - Fail to take picture with infinity focus"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1976
    :cond_4
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPrimaryJpegReceived:Z

    if-eqz v0, :cond_0

    .line 1977
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->processFinalImage()V

    goto/16 :goto_0

    .line 1888
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1924
    :catch_1
    move-exception v0

    .line 1926
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v4, "onSecondaryJpegReceived() - Fail to get manual focus range"

    invoke-static {v2, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v7, v1

    move v2, v3

    .line 1928
    goto :goto_1

    .line 1939
    :catch_2
    move-exception v0

    .line 1941
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSecondaryJpegReceived() - Interrupted"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onSwitchingCamera(Lcom/htc/camera/CameraType;)V
    .locals 3

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSwitchingCamera() - Not dual-camera mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    :goto_0
    return-void

    .line 1991
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    if-nez v0, :cond_1

    .line 1993
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSwitchingCamera() - Not ICameraDeviceManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1996
    :cond_1
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2007
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchingCamera() - Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2000
    :pswitch_0
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainToFrontSwitching:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 2011
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSwitchingCamera("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2016
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 2017
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, p1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2019
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/v;->beginPreserveCamera(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryCameraPreservationHandle:Lcom/htc/camera/Handle;

    .line 2020
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    invoke-virtual {v1, v0}, Lcom/htc/camera/v;->beginPreserveCamera(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryCameraPreservationHandle:Lcom/htc/camera/Handle;

    .line 2029
    :goto_2
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 2036
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchingCamera() - Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2004
    :pswitch_1
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontToMainSwitching:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_1

    .line 2023
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "onSwitchingCamera() - Switch to unknown camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2033
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->closeSecondaryCamera(Z)V

    goto/16 :goto_0

    .line 1996
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2029
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private openSecondaryCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraOpenFailedReason;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2046
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    if-nez v0, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "openSecondaryCamera() - Not ICameraDeviceManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->Unknown:Lcom/htc/camera/CameraOpenFailedReason;

    .line 2142
    :goto_0
    return-object v0

    .line 2051
    :cond_0
    if-nez p1, :cond_1

    .line 2053
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "openSecondaryCamera() - No camera type"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/htc/camera/CameraOpenFailedReason;

    goto :goto_0

    .line 2056
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsOpeningCamera:Z

    if-eqz v0, :cond_2

    .line 2058
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "openSecondaryCamera() - Secondary is opening"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 2059
    goto :goto_0

    .line 2061
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2063
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2065
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "openSecondaryCamera() - Secondary is open"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 2066
    goto :goto_0

    .line 2070
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSecondaryCamera() - Secondary is open, current camera type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/htc/camera/CameraOpenFailedReason;

    goto :goto_0

    .line 2075
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openSecondaryCamera("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsOpeningCamera:Z

    .line 2080
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 2097
    :goto_1
    new-instance v0, Lcom/htc/camera/Reference;

    invoke-direct {v0}, Lcom/htc/camera/Reference;-><init>()V

    .line 2101
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CameraDeviceManager:Lcom/htc/camera/v;

    invoke-virtual {v4, p1, v0}, Lcom/htc/camera/v;->openCamera(Lcom/htc/camera/CameraType;Lcom/htc/camera/Reference;)Lcom/htc/camera/CameraOpenFailedReason;

    move-result-object v4

    .line 2111
    iget-object v0, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 2112
    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v5, v6, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2113
    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v5, v6, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2116
    if-nez v0, :cond_5

    .line 2117
    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openSecondaryCamera() - Fail to open camera : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    :cond_5
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsOpeningCamera:Z

    .line 2122
    if-eqz v0, :cond_6

    .line 2125
    const-string v2, "caf-focus-mode"

    const-string v5, "default"

    invoke-virtual {v0, v2, v5}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    const-string v2, "continuous-picture"

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->setFocusMode(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    .line 2128
    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    .line 2131
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 2135
    :cond_6
    if-eqz v1, :cond_7

    .line 2137
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "openSecondaryCamera() - Restart primary preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->startPreview()Lcom/htc/camera/Handle;

    :cond_7
    move-object v0, v4

    .line 2142
    goto/16 :goto_0

    .line 2084
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2085
    if-eqz v0, :cond_8

    .line 2087
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v4, "openSecondaryCamera() - Stop primary preview first"

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->stopPreview()V

    move v1, v0

    goto/16 :goto_1

    :cond_8
    move v1, v0

    goto/16 :goto_1

    .line 2080
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processFinalImage()V
    .locals 30

    .prologue
    .line 2151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v1, :cond_0

    .line 2153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processFinalImage() - No capture handle"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    :goto_0
    return-void

    .line 2156
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPrimaryJpegReceived:Z

    if-nez v1, :cond_1

    .line 2158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processFinalImage() - Primary JPEG is not received yet"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2161
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryJpegReceived:Z

    if-nez v1, :cond_2

    .line 2163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processFinalImage() - Secondary JPEG is not received yet"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2166
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryAFSupported:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryInfJpeg:[B

    if-nez v1, :cond_3

    .line 2168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processFinalImage() - Secondary infinity JPEG is not received yet"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2173
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/16 v2, 0x271a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 2176
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2177
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2178
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    invoke-static {v4}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v10

    .line 2182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    invoke-static {v4}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v5

    .line 2185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    if-nez v4, :cond_4

    .line 2186
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    .line 2187
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorderBound:Landroid/graphics/Rect;

    if-nez v4, :cond_5

    .line 2188
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorderBound:Landroid/graphics/Rect;

    .line 2189
    :cond_5
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v6}, Lcom/htc/camera/dualcamera/DualCameraUI;->getPreviewBound()Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2190
    iget v6, v1, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v4, v6, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "processFinalImage() - tmpBound="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, ", "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, ", "

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget v8, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, ", "

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2194
    sget-object v6, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v1, v6, v1

    packed-switch v1, :pswitch_data_0

    .line 2229
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorderBound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorderBound:Landroid/graphics/Rect;

    const/4 v2, -0x8

    const/4 v3, -0x8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 2233
    const/16 v26, 0x0

    .line 2234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    if-eqz v1, :cond_d

    .line 2237
    const/4 v4, 0x0

    .line 2238
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsReviewImageNeeded:Z

    move/from16 v28, v0

    .line 2239
    const/16 v27, 0x0

    .line 2243
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 2244
    if-eqz v1, :cond_6

    .line 2245
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->stopPreview()V

    .line 2246
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->stopPreview()V

    .line 2250
    :cond_7
    const-string v1, "DualCamera.StitchImages.Start"

    invoke-static {v1}, Lcom/htc/camera/debug/Profiler;->startTimer(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v29

    .line 2251
    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v1

    aget v1, v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_1

    move-object/from16 v3, v27

    move/from16 v1, v28

    .line 2343
    :goto_2
    :try_start_1
    const-string v2, "DualCamera.StitchImages.End"

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Lcom/htc/camera/debug/Profiler;->checkInterval(Lcom/htc/camera/Handle;Ljava/lang/String;)V

    .line 2346
    if-eqz v1, :cond_e

    if-eqz v4, :cond_e

    .line 2348
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/rotate/UIRotation;

    .line 2349
    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    sget-object v5, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v5}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v5

    if-ne v2, v5, :cond_c

    new-instance v2, Lcom/htc/camera/imaging/Size;

    sget-object v5, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v5, v5, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    sget-object v6, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v6, v6, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    invoke-direct {v2, v5, v6}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 2353
    :goto_3
    new-instance v5, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-static {v2, v5}, Lcom/htc/camera/imaging/ImageUtility;->getRatioStretchSize(Lcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;)Lcom/htc/camera/imaging/Size;

    move-result-object v2

    .line 2354
    iget v5, v2, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    const/4 v6, 0x1

    invoke-static {v4, v5, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 2355
    :try_start_2
    sget-object v4, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {v1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v1, v4, v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    packed-switch v1, :pswitch_data_2

    move-object v1, v2

    :goto_4
    move-object/from16 v26, v1

    .line 2377
    :goto_5
    if-eqz v3, :cond_8

    .line 2378
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 2387
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraController;

    .line 2388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PreviousSceneMode:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processFinalImage() - Restore scene mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PreviousSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PreviousSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 2392
    const-string v2, "focus"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 2393
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 2394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PreviousSceneMode:Ljava/lang/String;

    .line 2398
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "processFinalImage() - Unlock AE and AWB"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 2402
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 2403
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 2407
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2408
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 2409
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPrimaryJpegReceived:Z

    .line 2410
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    .line 2411
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryJpegReceived:Z

    .line 2412
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    .line 2413
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryInfJpeg:[B

    .line 2414
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 2415
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 2416
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PendingHumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 2417
    const/16 v1, 0x274c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->removeMessages(I)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/16 v3, 0x271b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v7, v6, v1

    const/4 v1, 0x1

    aput-object v26, v6, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2423
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    goto/16 :goto_0

    .line 2197
    :pswitch_0
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v6, v1

    int-to-double v1, v2

    div-double v1, v6, v1

    .line 2198
    iget v6, v10, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v6, v6

    int-to-double v8, v3

    div-double/2addr v6, v8

    .line 2199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->left:F

    float-to-double v8, v8

    mul-double/2addr v8, v1

    double-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->top:F

    float-to-double v11, v9

    mul-double/2addr v11, v6

    double-to-float v9, v11

    iget v11, v4, Landroid/graphics/RectF;->right:F

    float-to-double v11, v11

    mul-double/2addr v1, v11

    double-to-float v1, v1

    iget v2, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v11, v2

    mul-double/2addr v6, v11

    double-to-float v2, v6

    invoke-virtual {v3, v8, v9, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 2205
    :pswitch_1
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v6, v1

    int-to-double v8, v3

    div-double/2addr v6, v8

    .line 2206
    iget v1, v10, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v8, v1

    int-to-double v1, v2

    div-double v1, v8, v1

    .line 2207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    iget v8, v10, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v8, v8

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v11, v11

    mul-double/2addr v11, v6

    sub-double/2addr v8, v11

    double-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->left:F

    float-to-double v11, v9

    mul-double/2addr v11, v1

    double-to-float v9, v11

    iget v11, v10, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v11, v11

    iget v13, v4, Landroid/graphics/RectF;->top:F

    float-to-double v13, v13

    mul-double/2addr v6, v13

    sub-double v6, v11, v6

    double-to-float v6, v6

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v11, v4

    mul-double/2addr v1, v11

    double-to-float v1, v1

    invoke-virtual {v3, v8, v9, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 2213
    :pswitch_2
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v6, v1

    int-to-double v1, v2

    div-double v1, v6, v1

    .line 2214
    iget v6, v10, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v6, v6

    int-to-double v8, v3

    div-double/2addr v6, v8

    .line 2215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    iget v8, v10, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v8, v8

    iget v11, v4, Landroid/graphics/RectF;->right:F

    float-to-double v11, v11

    mul-double/2addr v11, v1

    sub-double/2addr v8, v11

    double-to-float v8, v8

    iget v9, v10, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v11, v9

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v13, v9

    mul-double/2addr v13, v6

    sub-double/2addr v11, v13

    double-to-float v9, v11

    iget v11, v10, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v11, v11

    iget v13, v4, Landroid/graphics/RectF;->left:F

    float-to-double v13, v13

    mul-double/2addr v1, v13

    sub-double v1, v11, v1

    double-to-float v1, v1

    iget v2, v10, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v11, v2

    iget v2, v4, Landroid/graphics/RectF;->top:F

    float-to-double v13, v2

    mul-double/2addr v6, v13

    sub-double v6, v11, v6

    double-to-float v2, v6

    invoke-virtual {v3, v8, v9, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 2221
    :pswitch_3
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v6, v1

    int-to-double v8, v3

    div-double/2addr v6, v8

    .line 2222
    iget v1, v10, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v8, v1

    int-to-double v1, v2

    div-double v1, v8, v1

    .line 2223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->top:F

    float-to-double v8, v8

    mul-double/2addr v8, v6

    double-to-float v8, v8

    iget v9, v10, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v11, v9

    iget v9, v4, Landroid/graphics/RectF;->right:F

    float-to-double v13, v9

    mul-double/2addr v13, v1

    sub-double/2addr v11, v13

    double-to-float v9, v11

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v11, v11

    mul-double/2addr v6, v11

    double-to-float v6, v6

    iget v7, v10, Lcom/htc/camera/imaging/Size;->height:I

    int-to-double v11, v7

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-double v13, v4

    mul-double/2addr v1, v13

    sub-double v1, v11, v1

    double-to-float v1, v1

    invoke-virtual {v3, v8, v9, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_1

    .line 2256
    :pswitch_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    invoke-static {v1}, Lcom/htc/camera/imaging/ImageUtility;->extractExif([B)Ljava/util/Hashtable;

    move-result-object v5

    .line 2259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/dualcamera/DualCameraController;->processNormalDualCameraImage([B[BLandroid/graphics/RectF;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2260
    const/4 v8, 0x0

    .line 2263
    new-instance v1, Lcom/htc/camera/io/SaveBitmapImageTask;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct/range {v1 .. v7}, Lcom/htc/camera/io/SaveBitmapImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Landroid/graphics/Bitmap;Ljava/util/Hashtable;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    move-object v3, v1

    move v1, v8

    .line 2264
    goto/16 :goto_2

    .line 2270
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    invoke-static {v1}, Lcom/htc/camera/imaging/ImageUtility;->extractExif([B)Ljava/util/Hashtable;

    move-result-object v5

    .line 2273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->processHalfSplitImage([B[B)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2276
    new-instance v1, Lcom/htc/camera/io/SaveBitmapImageTask;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct/range {v1 .. v7}, Lcom/htc/camera/io/SaveBitmapImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Landroid/graphics/Bitmap;Ljava/util/Hashtable;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    move-object v3, v1

    move/from16 v1, v28

    .line 2277
    goto/16 :goto_2

    .line 2283
    :pswitch_6
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v10, Lcom/htc/camera/imaging/Size;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 2284
    iget v1, v5, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, v5, Lcom/htc/camera/imaging/Size;->height:I

    mul-int/2addr v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2287
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 2288
    new-instance v6, Lcom/htc/camera/Reference;

    invoke-direct {v6}, Lcom/htc/camera/Reference;-><init>()V

    .line 2289
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 2290
    const/4 v1, 0x3

    new-array v7, v1, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v1

    const/4 v1, 0x1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v1

    const/4 v1, 0x2

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v1

    .line 2295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBound:Landroid/graphics/RectF;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v1, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 2297
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    monitor-enter v11
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2299
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_TakingPictureAccelerometerValues:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 2300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_InfPictureAccelerometerValues:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    .line 2301
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v1, p0

    .line 2302
    :try_start_5
    invoke-direct/range {v1 .. v9}, Lcom/htc/camera/dualcamera/DualCameraController;->processHumanJointImage(Ljava/nio/Buffer;Ljava/nio/Buffer;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;[Landroid/graphics/Rect;[F[F)V

    .line 2305
    iget v1, v10, Lcom/htc/camera/imaging/Size;->width:I

    iget v10, v10, Lcom/htc/camera/imaging/Size;->height:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 2306
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processFinalImage() - Secondary image data size = "

    iget-object v10, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    invoke-static {v1, v2, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2313
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processFinalImage() - Mask image data size = "

    iget-object v10, v6, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    invoke-static {v1, v2, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2314
    iget-object v1, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v6, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    move-object/from16 v20, v0

    .line 2318
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2319
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processFinalImage() - Secondary image bounds = "

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2323
    new-instance v10, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v1, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    if-eqz v1, :cond_b

    iget-object v1, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryInfJpeg:[B

    move-object/from16 v19, v0

    iget-object v1, v6, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_InfinityFocusSteps:I

    move/from16 v25, v0

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    invoke-direct/range {v10 .. v25}, Lcom/htc/camera/dualcamera/DualCameraController$SaveHumanJointImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;ILandroid/graphics/Bitmap;[B[B[B[BI[Landroid/graphics/Rect;[F[FI)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-object v3, v10

    move/from16 v1, v28

    move-object/from16 v4, v16

    .line 2340
    goto/16 :goto_2

    .line 2301
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 2371
    :catch_0
    move-exception v1

    move-object/from16 v2, v27

    .line 2373
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v4, "processFinalImage() - Fail to process final image"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v2

    goto/16 :goto_5

    .line 2323
    :cond_b
    const/4 v15, 0x0

    goto :goto_7

    .line 2349
    :cond_c
    :try_start_8
    new-instance v2, Lcom/htc/camera/imaging/Size;

    sget-object v5, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v5, v5, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    sget-object v6, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v6, v6, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    invoke-direct {v2, v5, v6}, Lcom/htc/camera/imaging/Size;-><init>(II)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 2371
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_8

    .line 2358
    :pswitch_7
    const/16 v1, 0x10e

    const/4 v4, 0x1

    :try_start_9
    invoke-static {v2, v1, v4}, Lcom/htc/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_4

    .line 2361
    :pswitch_8
    const/16 v1, 0xb4

    const/4 v4, 0x1

    invoke-static {v2, v1, v4}, Lcom/htc/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_4

    .line 2364
    :pswitch_9
    const/16 v1, 0x5a

    const/4 v4, 0x1

    invoke-static {v2, v1, v4}, Lcom/htc/camera/imaging/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v1

    goto/16 :goto_4

    .line 2383
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    sget-object v3, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraThread;->notifyTakingPictureFailed(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    goto/16 :goto_6

    .line 2371
    :catch_2
    move-exception v1

    move-object/from16 v26, v2

    move-object v2, v3

    goto :goto_8

    :cond_e
    move-object/from16 v1, v26

    goto/16 :goto_4

    .line 2194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2251
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2355
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private processHalfSplitImage([B[B)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 2456
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    .line 2457
    invoke-static {p1}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v1

    .line 2458
    invoke-static {p2}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v2

    .line 2459
    new-instance v3, Lcom/htc/camera/imaging/Size;

    iget v4, v1, Lcom/htc/camera/imaging/Size;->width:I

    iget v5, v2, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v1, Lcom/htc/camera/imaging/Size;->height:I

    iget v6, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 2462
    iget v4, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v5, v3, Lcom/htc/camera/imaging/Size;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2465
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2466
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2467
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 2468
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 2469
    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2472
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v11, v1, Lcom/htc/camera/imaging/Size;->width:I

    iget v12, v1, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2473
    const/4 v5, 0x0

    iget v1, v1, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2474
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    if-ne v0, v1, :cond_3

    .line 2475
    const/4 v1, 0x0

    iget v5, v3, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v5, v5, 0x2

    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v11, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v8, v1, v5, v6, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2480
    :goto_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    iget v6, v2, Lcom/htc/camera/imaging/Size;->width:I

    iget v11, v2, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v9, v1, v5, v6, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2481
    const/4 v1, 0x0

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2482
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    if-ne v0, v1, :cond_4

    .line 2483
    const/4 v0, 0x0

    iget v1, v3, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2507
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "processHalfSplitImage() - Load primary image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    new-instance v6, Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 2509
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2510
    const/4 v0, 0x0

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 2511
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 2512
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2513
    new-instance v3, Lcom/htc/camera/Reference;

    invoke-direct {v3}, Lcom/htc/camera/Reference;-><init>()V

    .line 2514
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$20;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/dualcamera/DualCameraController$20;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;[BLcom/htc/camera/Reference;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;Landroid/os/ConditionVariable;)V

    .line 2536
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    if-nez v1, :cond_0

    .line 2537
    const-class v1, Lcom/htc/camera/ag;

    invoke-virtual {p0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ag;

    iput-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    .line 2538
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    invoke-virtual {v1, v0}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2539
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2545
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "processHalfSplitImage() - Load secondary image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 2547
    invoke-virtual {v0, v9, v5}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2552
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processHalfSplitImage() - Waiting for primary image"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    invoke-virtual {v6}, Landroid/os/ConditionVariable;->block()V

    .line 2555
    iget-object v0, v3, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2558
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2559
    iget v3, v4, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v5, v4, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2560
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v4, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2561
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2565
    iget v0, v9, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v3, v9, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2566
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v9, v10, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2567
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2571
    return-object v7

    .line 2477
    :cond_3
    const/4 v1, 0x0

    const/4 v5, 0x0

    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v11, v3, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v8, v1, v5, v6, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 2485
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 2490
    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v11, v1, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v11, v11, 0x2

    iget v12, v1, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 2491
    iget v1, v1, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v1, v1, 0x4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2492
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    if-ne v0, v1, :cond_6

    .line 2493
    iget v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v1, v1, 0x2

    const/4 v5, 0x0

    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v11, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v8, v1, v5, v6, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2498
    :goto_2
    const/4 v1, 0x0

    const/4 v5, 0x0

    iget v6, v2, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v6, v6, 0x2

    iget v11, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v9, v1, v5, v6, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 2499
    iget v1, v2, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2500
    sget-object v1, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    if-ne v0, v1, :cond_7

    .line 2501
    iget v0, v3, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    iget v2, v3, Lcom/htc/camera/imaging/Size;->width:I

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 2495
    :cond_6
    const/4 v1, 0x0

    const/4 v5, 0x0

    iget v6, v3, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v6, v6, 0x2

    iget v11, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v8, v1, v5, v6, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .line 2503
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, v3, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v2, v2, 0x2

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1
.end method

.method private static native processHumanJointImage([B[Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;[B[Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;[BLjava/nio/Buffer;Ljava/nio/Buffer;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;I[F[F[Landroid/graphics/Rect;Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;ILcom/htc/camera/Reference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;",
            "[B[",
            "Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;",
            "[B",
            "Ljava/nio/Buffer;",
            "Ljava/nio/Buffer;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;I[F[F[",
            "Landroid/graphics/Rect;",
            "Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;",
            "I",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method private processHumanJointImage(Ljava/nio/Buffer;Ljava/nio/Buffer;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;[Landroid/graphics/Rect;[F[F)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/Buffer;",
            "Ljava/nio/Buffer;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/htc/camera/Reference",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Landroid/graphics/Rect;",
            "[F[F)V"
        }
    .end annotation

    .prologue
    .line 2580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2581
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No secondary camera controller."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2584
    :cond_0
    invoke-static {}, Lcom/htc/camera/dualcamera/DualCameraController;->loadHumanJointLibrary()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2585
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to load human-joint library."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2590
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraController;

    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->updateCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2597
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraController;

    const-string v2, "front-stable-face"

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2598
    if-eqz v7, :cond_3

    .line 2600
    const-string v1, "\\,"

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2601
    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 2607
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2608
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2609
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v2

    .line 2610
    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v3

    .line 2611
    const/4 v6, 0x4

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 2612
    new-instance v1, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;

    invoke-direct/range {v1 .. v6}, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;-><init>(IIIIF)V

    .line 2613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processHumanJointImage() - \'front-stable-face\' parameter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v14, v1

    .line 2635
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastPrimaryObjects:[Lcom/htc/camera/ObjectTrackingInfo;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastPrimaryObjects:[Lcom/htc/camera/ObjectTrackingInfo;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 2637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastPrimaryObjects:[Lcom/htc/camera/ObjectTrackingInfo;

    array-length v1, v1

    new-array v2, v1, [Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;

    .line 2638
    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_5

    .line 2639
    new-instance v3, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastPrimaryObjects:[Lcom/htc/camera/ObjectTrackingInfo;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;-><init>(Lcom/htc/camera/ObjectTrackingInfo;)V

    aput-object v3, v2, v1

    .line 2638
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2592
    :catch_0
    move-exception v1

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "processHumanJointImage() - Fail to update secondary camera parameters"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2615
    :catch_1
    move-exception v1

    .line 2617
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processHumanJointImage() - Invalid \'front-stable-face\' parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    const/4 v1, 0x0

    goto :goto_1

    .line 2623
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processHumanJointImage() - Invalid \'front-stable-face\' parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    const/4 v1, 0x0

    goto :goto_1

    .line 2629
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processHumanJointImage() - No \'front-stable-face\' parameter"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    const/4 v14, 0x0

    goto :goto_2

    .line 2642
    :cond_4
    const/4 v2, 0x0

    .line 2646
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastSecondaryFaces:[Landroid/hardware/Camera$Face;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastSecondaryFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 2648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastSecondaryFaces:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    new-array v4, v1, [Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;

    .line 2649
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_7

    .line 2650
    new-instance v3, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastSecondaryFaces:[Landroid/hardware/Camera$Face;

    aget-object v5, v5, v1

    invoke-direct {v3, v5}, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;-><init>(Landroid/hardware/Camera$Face;)V

    aput-object v3, v4, v1

    .line 2649
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 2653
    :cond_6
    const/4 v4, 0x0

    .line 2656
    :cond_7
    invoke-static {}, Lcom/htc/camera/CameraNativeLibrary;->load()V

    .line 2657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryInfJpeg:[B

    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v6

    iget-object v6, v6, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v6}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/camera/rotate/UIRotation;

    iget v10, v6, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_HumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    iget v15, v6, Lcom/htc/camera/dualcamera/HumanJointMaskType;->parameterValue:I

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p6

    move-object/from16 v16, p3

    invoke-static/range {v1 .. v16}, Lcom/htc/camera/dualcamera/DualCameraController;->processHumanJointImage([B[Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;[B[Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;[BLjava/nio/Buffer;Ljava/nio/Buffer;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;I[F[F[Landroid/graphics/Rect;Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;ILcom/htc/camera/Reference;)I

    move-result v7

    .line 2675
    move-object/from16 v0, p6

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_8

    .line 2678
    const/4 v1, 0x2

    aget-object v1, p6, v1

    iget v2, v14, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2679
    const/4 v1, 0x2

    aget-object v1, p6, v1

    iget v2, v14, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2680
    const/4 v1, 0x2

    aget-object v1, p6, v1

    iget v2, v14, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2681
    const/4 v1, 0x2

    aget-object v1, p6, v1

    iget v2, v14, Lcom/htc/camera/dualcamera/DualCameraController$FaceInfo;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2683
    :cond_8
    const/4 v1, 0x0

    :goto_5
    move-object/from16 v0, p6

    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 2684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "processHumanJointImage() - Secondary rect ["

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "] is "

    aget-object v6, p6, v1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2683
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2685
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "processHumanJointImage() - Engine version : "

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2688
    if-nez v7, :cond_a

    .line 2707
    :goto_6
    return-void

    .line 2690
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processHumanJointImage() - Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    const/4 v1, -0x1

    if-ne v7, v1, :cond_b

    .line 2692
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to stitch final image"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2695
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    invoke-static {v1}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v8

    .line 2696
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 2697
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 2698
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/dualcamera/DualCameraUI;->getDefaultSecondaryPreviewBounds(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;Landroid/graphics/RectF;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/imaging/Size;Lcom/htc/camera/Reference;)V

    .line 2699
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v9, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->getSecondaryImageBounds(Lcom/htc/camera/imaging/Size;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 2700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/htc/camera/dualcamera/DualCameraController;->processNormalDualCameraImage([B[BLandroid/graphics/RectF;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2701
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 2702
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2703
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/16 v3, 0x2724

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_6
.end method

.method private processNormalDualCameraImage([B[BLandroid/graphics/RectF;Z)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2733
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "processFinalImage() - Load primary image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2735
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 2736
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 2737
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2738
    array-length v1, p1

    invoke-static {p1, v7, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2741
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "processFinalImage() - Load secondary image"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 2743
    array-length v2, p2

    invoke-static {p2, v7, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2746
    if-eqz p4, :cond_1

    .line 2748
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorder:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 2749
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorder:Landroid/graphics/drawable/Drawable;

    .line 2750
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorder:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorderBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2754
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 2756
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 2759
    :cond_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2760
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2761
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2762
    if-eqz p4, :cond_3

    .line 2763
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryPreviewBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2764
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v4, p3, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2772
    return-object v1
.end method

.method private restorePhotoResolutionProvider(I)V
    .locals 2

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 2783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 2785
    :cond_0
    return-void
.end method

.method private selectSecondaryCamera()Lcom/htc/camera/CameraType;
    .locals 2

    .prologue
    .line 2792
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$CameraType:[I

    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getPrimaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2799
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2795
    :pswitch_0
    sget-object v0, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    goto :goto_0

    .line 2797
    :pswitch_1
    sget-object v0, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    goto :goto_0

    .line 2792
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPhotoResolutionProvider(I)V
    .locals 3

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2872
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2874
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_HumanJointPhotoResolutionProvider:Lcom/htc/camera/dualcamera/d;

    if-nez v0, :cond_0

    .line 2875
    new-instance v0, Lcom/htc/camera/dualcamera/d;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/dualcamera/d;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_HumanJointPhotoResolutionProvider:Lcom/htc/camera/dualcamera/d;

    .line 2876
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_HumanJointPhotoResolutionProvider:Lcom/htc/camera/dualcamera/d;

    .line 2886
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2888
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 2889
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v2, v0, p1}, Lcom/htc/camera/ICaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PhotoResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 2890
    if-eqz v1, :cond_1

    .line 2891
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/ICaptureResolutionManager;->restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 2896
    :cond_1
    :goto_1
    return-void

    .line 2880
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_NormalPhotoResolutionProvider:Lcom/htc/camera/dualcamera/e;

    if-nez v0, :cond_3

    .line 2881
    new-instance v0, Lcom/htc/camera/dualcamera/e;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/dualcamera/e;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_NormalPhotoResolutionProvider:Lcom/htc/camera/dualcamera/e;

    .line 2882
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_NormalPhotoResolutionProvider:Lcom/htc/camera/dualcamera/e;

    goto :goto_0

    .line 2895
    :cond_4
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->restorePhotoResolutionProvider(I)V

    goto :goto_1
.end method

.method private setupHumanJointParameters(Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V
    .locals 3

    .prologue
    .line 2903
    if-nez p1, :cond_1

    .line 2905
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "setupHumanJointParameters() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    :cond_0
    :goto_0
    return-void

    .line 2908
    :cond_1
    if-nez p2, :cond_2

    .line 2909
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 2910
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2912
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "setupHumanJointParameters() - Enable for "

    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2913
    const-string v0, "human-joint-mode"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_HumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->updateHumanJointMaskType(Lcom/htc/camera/CameraController;Lcom/htc/camera/dualcamera/HumanJointMaskType;Z)V

    .line 2921
    if-eqz p3, :cond_0

    .line 2922
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0

    .line 2917
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "setupHumanJointParameters() - Disable for "

    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2918
    const-string v0, "human-joint-mode"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupParametersBeforeStartPreview(Lcom/htc/camera/CameraController;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/high16 v5, 0x3ec00000    # 0.375f

    .line 2931
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    .line 2934
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getSecondaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2935
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    iget-object v0, v0, Lcom/htc/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 2940
    :cond_0
    :try_start_0
    iget v0, v1, Lcom/htc/camera/CameraType;->orientation:I

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v2, v2, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    rsub-int v2, v2, 0x168

    sub-int/2addr v0, v2

    .line 2941
    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2942
    add-int/lit16 v0, v0, 0xb4

    .line 2943
    :cond_1
    if-gez v0, :cond_3

    .line 2944
    add-int/lit16 v0, v0, 0x168

    .line 2947
    :goto_0
    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2955
    :goto_1
    invoke-direct {p0, p1, v4, v3}, Lcom/htc/camera/dualcamera/DualCameraController;->setupHumanJointParameters(Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V

    .line 2958
    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$CameraMode:[I

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    invoke-virtual {v0}, Lcom/htc/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3073
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 3074
    return-void

    .line 2946
    :cond_3
    :try_start_1
    rem-int/lit16 v0, v0, 0x168
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2949
    :catch_0
    move-exception v0

    .line 2951
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "setupParametersBeforeStartPreview() -  Cannot set display orientation"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2962
    :pswitch_0
    const-string v0, "cam-mode"

    invoke-virtual {p1, v0, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 2963
    invoke-virtual {p1, v3}, Lcom/htc/camera/CameraController;->setRecordingHint(Z)V

    .line 2965
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_2

    .line 2968
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 2969
    invoke-static {v0}, Lcom/htc/camera/imaging/ImageUtility;->cameraSizeListToSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2970
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoPreviewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    .line 2971
    new-instance v3, Lcom/htc/camera/imaging/Size;

    invoke-direct {v3}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 2972
    sget-object v4, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_1

    .line 2979
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 2980
    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 2983
    :goto_3
    invoke-static {v3, v2, v6}, Lcom/htc/camera/imaging/ImageUtility;->findNearestSize(Lcom/htc/camera/imaging/Size;Ljava/util/List;Z)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 2985
    if-nez v0, :cond_4

    .line 2987
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "setupParametersBeforeStartPreview() - Cannot find nearest preview size, use default size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    new-instance v0, Lcom/htc/camera/imaging/Size;

    const/16 v1, 0x3c0

    const/16 v2, 0x220

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 2990
    :cond_4
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {p1, v1, v2}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 2992
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "setupParametersBeforeStartPreview() - Preview size is "

    iget v3, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "x"

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2995
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 2996
    if-eqz v0, :cond_2

    .line 2998
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 2999
    invoke-static {v1}, Lcom/htc/camera/imaging/ImageUtility;->cameraSizeListToSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3000
    new-instance v2, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 3001
    new-instance v3, Lcom/htc/camera/imaging/Size;

    invoke-direct {v3}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 3002
    sget-object v4, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_2

    .line 3010
    iget v0, v2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 3011
    iget v0, v2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 3014
    :goto_4
    invoke-static {v3, v1, v6}, Lcom/htc/camera/imaging/ImageUtility;->findNearestSize(Lcom/htc/camera/imaging/Size;Ljava/util/List;Z)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 3016
    if-nez v0, :cond_5

    .line 3018
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "setupParametersBeforeStartPreview() - Cannot find nearest picture size, use default size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    new-instance v0, Lcom/htc/camera/imaging/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 3021
    :cond_5
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {p1, v1, v2}, Lcom/htc/camera/CameraController;->setPictureSizeParameter(II)V

    .line 3023
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "setupParametersBeforeStartPreview() - Picture size is "

    iget v3, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "x"

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2975
    :pswitch_1
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    iput v1, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 2976
    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    iput v0, v3, Lcom/htc/camera/imaging/Size;->height:I

    goto/16 :goto_3

    .line 3006
    :pswitch_2
    iget v0, v2, Lcom/htc/camera/imaging/Size;->width:I

    iput v0, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 3007
    iget v0, v2, Lcom/htc/camera/imaging/Size;->height:I

    iput v0, v3, Lcom/htc/camera/imaging/Size;->height:I

    goto :goto_4

    .line 3030
    :pswitch_3
    const-string v0, "cam-mode"

    invoke-virtual {p1, v0, v6}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 3031
    invoke-virtual {p1, v6}, Lcom/htc/camera/CameraController;->setRecordingHint(Z)V

    .line 3032
    invoke-virtual {p1, v3}, Lcom/htc/camera/CameraController;->setVideoStabilization(Z)V

    .line 3034
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DualCaptureVideoResolutionProvider:Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;

    if-eqz v0, :cond_2

    .line 3036
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DualCaptureVideoResolutionProvider:Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;

    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getPrimaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 3037
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DualCaptureVideoResolutionProvider:Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;

    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getPrimaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;->getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 3038
    if-eqz v0, :cond_2

    .line 3041
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getSecondaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/camera/CameraConfigFileReader;->getAllVideoResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 3042
    invoke-static {v1}, Lcom/htc/camera/imaging/ImageUtility;->resolutionListToSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3043
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DualCaptureVideoResolutionProvider:Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;

    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getPrimaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;->getPreviewSize(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Lcom/htc/camera/imaging/Size;

    move-result-object v2

    .line 3044
    new-instance v3, Lcom/htc/camera/imaging/Size;

    invoke-direct {v3}, Lcom/htc/camera/imaging/Size;-><init>()V

    .line 3045
    sget-object v4, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$IDualCameraController$CaptureStyle:[I

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_3

    .line 3052
    iget v0, v2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 3053
    iget v0, v2, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v3, Lcom/htc/camera/imaging/Size;->height:I

    .line 3056
    :goto_5
    invoke-static {v3, v1, v6}, Lcom/htc/camera/imaging/ImageUtility;->findNearestSize(Lcom/htc/camera/imaging/Size;Ljava/util/List;Z)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 3058
    if-nez v0, :cond_6

    .line 3060
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "setupParametersBeforeStartPreview() - Cannot find nearest video size, use default size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    new-instance v0, Lcom/htc/camera/imaging/Size;

    sget-object v1, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    sget-object v2, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    invoke-virtual {v2}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    .line 3063
    :cond_6
    iget v1, v0, Lcom/htc/camera/imaging/Size;->width:I

    iget v2, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {p1, v1, v2}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 3065
    const-string v1, "video-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "setupParametersBeforeStartPreview() - Video size is "

    iget v3, v0, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "x"

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 3048
    :pswitch_4
    iget v0, v2, Lcom/htc/camera/imaging/Size;->width:I

    iput v0, v3, Lcom/htc/camera/imaging/Size;->width:I

    .line 3049
    iget v0, v2, Lcom/htc/camera/imaging/Size;->height:I

    iput v0, v3, Lcom/htc/camera/imaging/Size;->height:I

    goto :goto_5

    .line 2958
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2972
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    .line 3002
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3045
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method

.method private startSecondaryPreview(Lcom/htc/camera/CameraType;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3082
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 3097
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSecondaryPreview() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3091
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->openSecondaryCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/CameraOpenFailedReason;

    .line 3101
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    .line 3102
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 3103
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->previewAdapter:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraPreviewAdapter;

    .line 3104
    if-nez v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "startSecondaryPreview() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 3185
    :goto_0
    return v0

    .line 3109
    :cond_0
    if-nez v1, :cond_1

    .line 3111
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "startSecondaryPreview() - No preview adapter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 3112
    goto :goto_0

    .line 3114
    :cond_1
    iget-boolean v5, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPreviewStarted:Z

    if-eqz v5, :cond_2

    .line 3116
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "startSecondaryPreview() - Preview is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 3117
    goto :goto_0

    .line 3120
    :cond_2
    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v6, "startSecondaryPreview("

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/camera/CameraType;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, ")"

    invoke-static {v5, v6, v7, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3126
    iget-object v5, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->getPreviewAdapterSyncRoot()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3128
    :try_start_0
    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3130
    :try_start_1
    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v7}, Lcom/htc/camera/dualcamera/DualCameraUI;->isPreviewAdapterAvailable()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3132
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "startSecondaryPreview() - Preview adapter not available"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v2

    goto :goto_0

    .line 3135
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3137
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "startSecondaryPreview() - Preview resource is unavailable"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v0, v2

    goto :goto_0

    .line 3144
    :cond_4
    :try_start_5
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setPreviewAdapter(Lcom/htc/camera/CameraPreviewAdapter;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3153
    :try_start_6
    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->setupParametersBeforeStartPreview(Lcom/htc/camera/CameraController;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3158
    :try_start_7
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->startPreview()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3167
    :try_start_8
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryFaceDetectionListener:Lcom/htc/camera/j;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setFaceDetectionListener(Lcom/htc/camera/j;)V

    .line 3168
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3169
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->startFaceDetection()V

    .line 3170
    :cond_5
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3171
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3174
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-eqz v0, :cond_6

    .line 3175
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lcom/htc/camera/ImageSettings;->backup(Lcom/htc/camera/HTCCamera;I)Lcom/htc/camera/ImageSettings;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 3177
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 3182
    iput-boolean v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPreviewStarted:Z

    move v0, v3

    .line 3185
    goto/16 :goto_0

    .line 3146
    :catch_0
    move-exception v0

    .line 3148
    :try_start_a
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "startSecondaryPreview() - Fail to set preview texture"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3149
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move v0, v2

    goto/16 :goto_0

    .line 3160
    :catch_1
    move-exception v0

    .line 3162
    :try_start_c
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "startSecondaryPreview() - start preview failed"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3163
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v0, v2

    goto/16 :goto_0

    .line 3170
    :catchall_0
    move-exception v0

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    throw v0

    .line 3171
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v0

    .line 3082
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private stopSecondaryPreview()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3194
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 3195
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->previewAdapter:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraPreviewAdapter;

    .line 3196
    if-nez v0, :cond_0

    .line 3198
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "stopSecondaryPreview() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 3240
    :goto_0
    return v0

    .line 3201
    :cond_0
    iget-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPreviewStarted:Z

    if-nez v1, :cond_1

    .line 3203
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "stopSecondaryPreview() - Preview is not started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 3204
    goto :goto_0

    .line 3207
    :cond_1
    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v4}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v4

    aget v1, v1, v4

    sparse-switch v1, :sswitch_data_0

    .line 3213
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSecondaryPreview() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3216
    :sswitch_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v4, "stopSecondaryPreview()"

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    .line 3223
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->stopPreview()V

    .line 3227
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3228
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3237
    :goto_1
    iput-boolean v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPreviewStarted:Z

    move v0, v3

    .line 3240
    goto :goto_0

    .line 3230
    :catch_0
    move-exception v0

    .line 3232
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v4, "stopSecondaryPreview() - Fail to clear preview texture(surface)"

    invoke-static {v1, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3207
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method private takePrimaryPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3365
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Take primary picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Primary JPEG call-back"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 3374
    :goto_0
    :try_start_0
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$23;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$23;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$24;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$24;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3404
    return-void

    .line 3371
    :cond_0
    iput-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 3395
    :catch_0
    move-exception v0

    .line 3397
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v1, :cond_1

    .line 3399
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 3400
    iput-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 3402
    :cond_1
    throw v0
.end method

.method private takeSecondaryPicture(Lcom/htc/camera/CaptureHandle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3411
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Take secondary picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 3415
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Secondary JPEG call-back"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 3422
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    new-instance v1, Lcom/htc/camera/dualcamera/DualCameraController$25;

    invoke-direct {v1, p0}, Lcom/htc/camera/dualcamera/DualCameraController$25;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    const/4 v2, 0x0

    new-instance v3, Lcom/htc/camera/dualcamera/DualCameraController$26;

    invoke-direct {v3, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$26;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V

    .line 3440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPreviewStarted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3452
    return-void

    .line 3417
    :cond_0
    iput-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 3442
    :catch_0
    move-exception v0

    .line 3444
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v1, :cond_1

    .line 3446
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 3447
    iput-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 3449
    :cond_1
    throw v0
.end method

.method private updateHumanJointMaskType()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 3479
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PendingHumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 3534
    :goto_0
    return-void

    .line 3486
    :cond_0
    sget-object v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->LONG_HAIR:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 3509
    sget-object v1, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    if-eq v0, v1, :cond_2

    .line 3512
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    monitor-enter v1

    .line 3514
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    .line 3515
    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    .line 3516
    iget-object v6, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    float-to-double v6, v6

    .line 3517
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3518
    mul-double v1, v2, v2

    mul-double v3, v4, v4

    add-double/2addr v1, v3

    mul-double v3, v6, v6

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 3519
    div-double v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 3520
    const-wide v3, 0x4056800000000000L    # 90.0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v5

    sub-double v1, v3, v1

    .line 3521
    const-wide v3, 0x4045800000000000L    # 43.0

    cmpl-double v3, v1, v3

    if-gez v3, :cond_1

    const-wide v3, -0x3fba800000000000L    # -43.0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_2

    .line 3522
    :cond_1
    sget-object v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 3526
    :cond_2
    invoke-direct {p0, v0, v8}, Lcom/htc/camera/dualcamera/DualCameraController;->updateHumanJointMaskType(Lcom/htc/camera/dualcamera/HumanJointMaskType;Z)V

    goto :goto_0

    .line 3517
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateHumanJointMaskType(Lcom/htc/camera/CameraController;Lcom/htc/camera/dualcamera/HumanJointMaskType;Z)V
    .locals 4

    .prologue
    .line 3552
    if-eqz p1, :cond_0

    .line 3554
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "updateHumanJointMaskType() - Camera : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", type : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string v3, "("

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p2, Lcom/htc/camera/dualcamera/HumanJointMaskType;->parameterValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ")"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3555
    const-string v0, "human-mask-type"

    iget v1, p2, Lcom/htc/camera/dualcamera/HumanJointMaskType;->parameterValue:I

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 3556
    if-eqz p3, :cond_0

    .line 3557
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 3559
    :cond_0
    return-void
.end method

.method private updateHumanJointMaskType(Lcom/htc/camera/dualcamera/HumanJointMaskType;Z)V
    .locals 6

    .prologue
    .line 3537
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_HumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    if-eq v0, p1, :cond_0

    .line 3539
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "updateHumanJointMaskType("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3540
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_HumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 3541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PendingHumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 3542
    const/16 v0, 0x274c

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->removeMessages(I)V

    .line 3543
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3545
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraController;->updateHumanJointMaskType(Lcom/htc/camera/CameraController;Lcom/htc/camera/dualcamera/HumanJointMaskType;Z)V

    .line 3546
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraController;->updateHumanJointMaskType(Lcom/htc/camera/CameraController;Lcom/htc/camera/dualcamera/HumanJointMaskType;Z)V

    .line 3549
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 624
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTakingPicture() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_0
    return v3

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "cancelTakingPicture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 636
    iput-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_OperationTimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 641
    iput-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpegTimeoutHandle:Lcom/htc/camera/Handle;

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 646
    iput-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 647
    iput-boolean v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsPrimaryJpegReceived:Z

    .line 648
    iput-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PrimaryJpeg:[B

    .line 649
    iput-boolean v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryJpegReceived:Z

    .line 650
    iput-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SecondaryJpeg:[B

    .line 651
    iput-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 652
    iput-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 655
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/16 v2, 0x271b

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v7, v5, v6

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 658
    goto :goto_0
.end method

.method public enter(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 792
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Called by anther thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$3;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 812
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Dual-camera mode is already entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_2
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 820
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "enter("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 828
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getPrimaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 829
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->MainToDual:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 834
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->linkToComponents()V

    .line 837
    invoke-direct {p0, v4}, Lcom/htc/camera/dualcamera/DualCameraController;->setPhotoResolutionProvider(I)V

    .line 838
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DualCaptureVideoResolutionProvider:Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/ICaptureResolutionManager;->setVideoResolutionProvider(Lcom/htc/camera/am;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_VideoResolutionHandle:Lcom/htc/camera/Handle;

    .line 847
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-eqz v0, :cond_4

    .line 849
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_EffectController:Lcom/htc/camera/effect/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 850
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v5}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 852
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    .line 856
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->previewAdapter:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_8

    .line 858
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->selectSecondaryCamera()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->startSecondaryPreview(Lcom/htc/camera/CameraType;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 859
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Fail to start preview"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    :cond_6
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->FrontToDual:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_1

    .line 862
    :cond_7
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 868
    :pswitch_1
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto/16 :goto_0

    .line 865
    :pswitch_2
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto/16 :goto_0

    .line 874
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - No preview adapter, start preview later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    .line 862
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public exit(I)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 885
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Called by anther thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$4;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "exit("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v0, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 909
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->endPreserveCameras()V

    .line 911
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v3}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 938
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit() - current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :pswitch_1
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualToMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 943
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 947
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 951
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->closeSecondaryCamera(Z)V

    .line 954
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v3, :cond_2

    .line 956
    invoke-direct {p0, v6}, Lcom/htc/camera/dualcamera/DualCameraController;->restorePhotoResolutionProvider(I)V

    .line 957
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_VideoResolutionHandle:Lcom/htc/camera/Handle;

    if-eqz v3, :cond_2

    .line 959
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_VideoResolutionHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v3, v4, v6}, Lcom/htc/camera/ICaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 966
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v3

    .line 967
    if-eqz v3, :cond_3

    .line 968
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v3, v2, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->setupHumanJointParameters(Lcom/htc/camera/CameraController;Ljava/lang/Boolean;Z)V

    .line 970
    :cond_3
    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v3}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 989
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-static {v2, v3}, Lcom/htc/camera/ImageSettings;->backup(Lcom/htc/camera/HTCCamera;I)Lcom/htc/camera/ImageSettings;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    goto/16 :goto_0

    .line 935
    :pswitch_2
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualToFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_1

    .line 973
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 976
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraThread;->closeCamera()V

    .line 977
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v2, v3}, Lcom/htc/camera/CameraThread;->openCamera(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 978
    if-eqz v0, :cond_4

    .line 979
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->startPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 981
    :cond_4
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->SingleCam:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_3

    .line 984
    :pswitch_4
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->SingleCam:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 970
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1071
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1107
    invoke-super {p0, p1}, Lcom/htc/camera/dualcamera/IDualCameraController;->handleMessage(Landroid/os/Message;)V

    .line 1110
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1074
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->updateHumanJointMaskType()V

    goto :goto_0

    .line 1078
    :sswitch_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PendingHumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_PendingHumanJointMaskType:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->updateHumanJointMaskType(Lcom/htc/camera/dualcamera/HumanJointMaskType;Z)V

    goto :goto_0

    .line 1083
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/htc/camera/ObjectTrackingInfo;

    check-cast v0, [Lcom/htc/camera/ObjectTrackingInfo;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->onPrimaryObjectDetected([Lcom/htc/camera/ObjectTrackingInfo;)V

    goto :goto_0

    .line 1087
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraPreviewAdapter;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->onPreviewAdapterCreated(Lcom/htc/camera/CameraPreviewAdapter;)V

    goto :goto_0

    .line 1091
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->onPreviewAdapterDestroyed()V

    goto :goto_0

    .line 1095
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsReviewImageNeeded:Z

    goto :goto_0

    .line 1099
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->onSwitchingCamera(Lcom/htc/camera/CameraType;)V

    goto :goto_0

    .line 1071
    nop

    :sswitch_data_0
    .sparse-switch
        0x2714 -> :sswitch_4
        0x2715 -> :sswitch_5
        0x2716 -> :sswitch_7
        0x271a -> :sswitch_3
        0x2724 -> :sswitch_1
        0x272e -> :sswitch_6
        0x2738 -> :sswitch_0
        0x274c -> :sswitch_2
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 1119
    invoke-super {p0}, Lcom/htc/camera/dualcamera/IDualCameraController;->initializeOverride()V

    .line 1122
    new-instance v0, Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DualCaptureVideoResolutionProvider:Lcom/htc/camera/dualcamera/DualCaptureVideoResolutionProvider;

    .line 1125
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 1126
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraClosingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$5;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1154
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraClosedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$6;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1174
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$7;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1201
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraOpeningEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$8;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1229
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeTakingPictureEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$9;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1244
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->previewStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$10;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1279
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$11;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1314
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->previewStoppingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$12;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1334
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->previewStoppedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/dualcamera/DualCameraController$13;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1354
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeRecording:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$14;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController$14;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1381
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$15;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController$15;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1400
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$16;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController$16;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1475
    return-void
.end method

.method final link(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 1

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$17;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$17;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraUI;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1495
    :goto_0
    return-void

    .line 1494
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    goto :goto_0
.end method

.method public setCaptureStyle(Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2810
    if-nez p1, :cond_0

    .line 2812
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureStyle() - No style specified"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2860
    :goto_0
    return v0

    .line 2817
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->isDependencyThread()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2819
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "setCaptureStyle("

    const-string v4, ") - Called from another thread"

    invoke-static {v2, v3, p1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2820
    new-instance v2, Lcom/htc/camera/dualcamera/DualCameraController$21;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$21;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;)V

    invoke-virtual {p0, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2829
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureStyle() - Fail to perform cross-thread operation"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2832
    goto :goto_0

    .line 2836
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v2, :cond_3

    .line 2838
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureStyle() - Taking picture"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2843
    :cond_3
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v3, "setCaptureStyle("

    const-string v4, ")"

    invoke-static {v2, v3, p1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2844
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2845
    goto :goto_0

    .line 2848
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->setPhotoResolutionProvider(I)V

    .line 2851
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2853
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2854
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    :cond_5
    :goto_1
    move v0, v1

    .line 2860
    goto :goto_0

    .line 2856
    :cond_6
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->invalidateCameraParameters()V

    goto :goto_1
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 3250
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 3357
    :goto_0
    return v0

    .line 3254
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3256
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No secondary camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3257
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$22;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController$22;-><init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->invokeAsync(Ljava/lang/Runnable;)Z

    move v0, v6

    .line 3266
    goto :goto_0

    .line 3269
    :cond_1
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3278
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3272
    :pswitch_0
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainTakingPicture:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 3282
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v2, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 3283
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController;

    .line 3284
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getSecondaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    if-ne v1, v3, :cond_4

    .line 3285
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    iget v1, v1, Lcom/htc/camera/CameraType;->orientation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    .line 3288
    :goto_2
    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setRotation(I)V

    .line 3291
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getPrimaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v1, v2, :cond_2

    .line 3292
    const-string v1, "save_mirror"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3296
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->enableReview()V

    .line 3301
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    monitor-enter v1

    .line 3303
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_TakingPictureAccelerometerValues:[F

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    array-length v7, v7

    invoke-static {v2, v3, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3307
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3309
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Lock AE and AWB"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->hasAutoFocus()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_IsSecondaryAFSupported:Z

    .line 3311
    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 3312
    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController;->setAutoWhiteBalanceLock(Z)Z

    .line 3315
    :cond_3
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 3318
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getPrimaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_6

    .line 3320
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraController;->takePrimaryPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)V

    .line 3321
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->takeSecondaryPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 3330
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Find directory and file counter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 3332
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 3333
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-static {v1}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    sget-object v3, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/htc/camera/Settings;Ljava/lang/String;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileFormat;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3342
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 3343
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 3354
    :goto_5
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move v0, v6

    .line 3357
    goto/16 :goto_0

    .line 3275
    :pswitch_1
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontTakingPicture:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-direct {p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto/16 :goto_1

    .line 3286
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraController;->getSecondaryCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v1, v3, :cond_8

    .line 3287
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/CameraType;

    iget v1, v1, Lcom/htc/camera/CameraType;->orientation:I

    add-int/2addr v1, v2

    rem-int/lit16 v1, v1, 0x168

    goto/16 :goto_2

    .line 3298
    :cond_5
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->disableReview()V

    goto/16 :goto_3

    .line 3304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3325
    :cond_6
    invoke-direct {p0, p1}, Lcom/htc/camera/dualcamera/DualCameraController;->takeSecondaryPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 3326
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/dualcamera/DualCameraController;->takePrimaryPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)V

    goto :goto_4

    .line 3347
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Fail to get directory or file counter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    iput-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 3350
    iput-object v8, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    goto :goto_5

    :cond_8
    move v1, v2

    goto/16 :goto_2

    .line 3269
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final updateAccelerometerValues([F)V
    .locals 5

    .prologue
    .line 3459
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    monitor-enter v1

    .line 3461
    if-eqz p1, :cond_0

    .line 3462
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3469
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3470
    const/16 v0, 0x2724

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 3471
    return-void

    .line 3465
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 3466
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 3467
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController;->m_LastAccelerometerValues:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    goto :goto_0

    .line 3469
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
