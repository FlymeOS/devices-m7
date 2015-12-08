.class public final Lcom/htc/camera/component/AutoFaceCaptureUI;
.super Lcom/htc/camera/IStableFace;
.source "AutoFaceCaptureUI.java"

# interfaces
.implements Lcom/htc/camera/IVoiceHfmClient;


# static fields
.field private static mIHFMServiceHMSClassLoader:Ldalvik/system/PathClassLoader;


# instance fields
.field private final isEntered:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

.field private mCanAutoCapture:Z

.field private mCaptureCommands:[Ljava/lang/String;

.field private mDownloadCallback:Lcom/htc/lib1/hfmclient/b;

.field private mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

.field private mHfmCallback:Lcom/htc/lib1/hfmclient/a;

.field private mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

.field private mHiddenCaptureCommands:[Ljava/lang/String;

.field private mHiddenRecordCommands:[Ljava/lang/String;

.field private mIsHoldFocusKey:Z

.field private mLocaleResult:I

.field private mNeedCaptureThisSmile:Z

.field mPhotoVideoSupportedModeLisentner:Lcom/htc/camera/property/c;

.field private mPreCaptureAFHandle:Lcom/htc/camera/Handle;

.field private mRecordCommands:[Ljava/lang/String;

.field private mStrCommandToast:Ljava/lang/String;

.field private mStrCommands:[Ljava/lang/String;

.field private mTakePictureDuringCountdown:Z

.field private m_AccelerometerValues:[F

.field private m_AutoCaptureToastHandle:Lcom/htc/camera/Handle;

.field private volatile m_CanCapture:Z

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

.field private m_CurrentOri:I

.field private m_ExpectedPhotoCount:I

.field private m_HandShakeStableTime:I

.field private m_Is1stAutoCaptureToastShown:Z

.field private m_Is1stVoiceCaptureToastShown:Z

.field private m_LastDetectedFaceCount:I

.field private m_LastFaceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

.field private m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

.field private m_PhotoSavingStartedTime:J

.field private m_PictureCount:I

.field private m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

.field private m_ShutterIndex:I

.field private m_SmileFrameCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

.field private m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

.field private m_ThisSmileCaptured:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ToastManager:Lcom/htc/camera/ak;

.field private m_UIRotationHandle:Lcom/htc/camera/Handle;

.field private m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

.field private m_VoiceCommandToastHandle:Lcom/htc/camera/Handle;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

.field private m_effectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_objectTracker:Lcom/htc/camera/IObjectTracker;

.field private mbHFMServiceReady:Z

.field private mbHFMServiceReserved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1194
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIHFMServiceHMSClassLoader:Ldalvik/system/PathClassLoader;

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 340
    const-string v1, "Auto-Face-Capture UI"

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/IStableFace;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastFaceRects:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ThisSmileCaptured:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    .line 136
    iput-boolean v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIsHoldFocusKey:Z

    .line 137
    iput-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCanAutoCapture:Z

    .line 138
    iput-boolean v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mTakePictureDuringCountdown:Z

    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_AccelerometerValues:[F

    .line 140
    iput v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_HandShakeStableTime:I

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CurrentOri:I

    .line 146
    iput-boolean v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    .line 147
    iput-boolean v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z

    .line 150
    iput v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mLocaleResult:I

    .line 161
    new-instance v0, Lcom/htc/camera/component/AutoFaceCaptureUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$1;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mDownloadCallback:Lcom/htc/lib1/hfmclient/b;

    .line 196
    new-instance v0, Lcom/htc/camera/component/AutoFaceCaptureUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$2;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmCallback:Lcom/htc/lib1/hfmclient/a;

    .line 311
    new-instance v0, Lcom/htc/camera/component/AutoFaceCaptureUI$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$3;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPhotoVideoSupportedModeLisentner:Lcom/htc/camera/property/c;

    .line 341
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->disableAutoInflateView()V

    .line 342
    const-string v0, "AutoFaceCaptureUI.IsEntered"

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isEntered:Lcom/htc/camera/property/Property;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/AutoFaceCaptureUI;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmClient;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/camera/component/AutoFaceCaptureUI;[F)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method static synthetic access$2402(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIsHoldFocusKey:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->showAutoCaptureToast(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->updateAutoFaceCaptureState()V

    return-void
.end method

.method static synthetic access$2902(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->reserveHFMService()V

    return-void
.end method

.method static synthetic access$3000(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->releaseHFMService()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCanAutoCapture:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->onAutoFocusCanceled(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->onAutoFocusFinished(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/camera/component/AutoFaceCaptureUI;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->updateBurstMode(I)V

    return-void
.end method

.method static synthetic access$3902(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mTakePictureDuringCountdown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CanCapture:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->lockRotation()V

    return-void
.end method

.method static synthetic access$4202(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->enableShutterSound(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->unlockRotation()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Z
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isAutoFaceCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4702(Lcom/htc/camera/component/AutoFaceCaptureUI;I)I
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ExpectedPhotoCount:I

    return p1
.end method

.method static synthetic access$4802(Lcom/htc/camera/component/AutoFaceCaptureUI;I)I
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    return p1
.end method

.method static synthetic access$4900(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/camera/component/AutoFaceCaptureUI;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mLocaleResult:I

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/camera/component/AutoFaceCaptureUI;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->showDownloadLangeConfirm()V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/camera/component/AutoFaceCaptureUI;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->checkFaceStable(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/lib1/hfmclient/HfmDownloadClient;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/camera/component/AutoFaceCaptureUI;)Lcom/htc/camera/IUIRotationManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/lib1/hfmclient/HfmDownloadClient;)Lcom/htc/lib1/hfmclient/HfmDownloadClient;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/AutoFaceCaptureUI;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/camera/component/AutoFaceCaptureUI;Z)Z
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/AutoFaceCaptureUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private canSelectVoiceCommand()Z
    .locals 4

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIsHoldFocusKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Support:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1017
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canSelect() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return v0

    .line 1007
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTriggerFaceCapture()Z
    .locals 2

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIsHoldFocusKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCanAutoCapture:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isAutoFaceCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_objectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_objectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->detectedObjects:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkFaceMoving(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const v0, 0x3d83126f    # 0.064f

    const v1, 0x3c83126f    # 0.016f

    .line 1037
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v2

    .line 1065
    :goto_0
    return v0

    .line 1040
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1041
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1050
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isUnder4DimenThreshold()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_HandShakeStableTime:I

    int-to-float v5, v5

    const/high16 v6, 0x41a00000    # 20.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    move v1, v0

    .line 1057
    :goto_1
    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v6, "checkFaceMoving() - Threshold:"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, " m_HandShakeStableTime:"

    iget v9, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_HandShakeStableTime:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1058
    cmpl-float v1, v3, v1

    if-gtz v1, :cond_2

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    .line 1063
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 1065
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private checkFaceStable(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/ObjectTrackingInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1075
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    .line 1076
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastDetectedFaceCount:I

    .line 1078
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastDetectedFaceCount:I

    if-eq v11, v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFaceStable() - now face Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Previous Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastDetectedFaceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isStableFace:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1082
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->canTriggerFaceCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const/16 v2, 0x2715

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x2bc

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1084
    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x5dc

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1088
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1089
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ThisSmileCaptured:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1092
    :cond_1
    const/4 v9, 0x0

    .line 1093
    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v11, :cond_a

    .line 1095
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastDetectedFaceCount:I

    if-eq v11, v0, :cond_3

    .line 1097
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget-object v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->type:Lcom/htc/camera/ObjectTrackingInfoType;

    sget-object v1, Lcom/htc/camera/ObjectTrackingInfoType;->Face:Lcom/htc/camera/ObjectTrackingInfoType;

    if-ne v0, v1, :cond_2

    .line 1098
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastFaceRects:Ljava/util/ArrayList;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget-object v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ThisSmileCaptured:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 1105
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkFaceStable() - faceIdx:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", smileDegree:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileDegree:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", smileScore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileScore:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", SmileFrameCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ObjectTrackingInfo;

    iget-object v1, v1, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->checkFaceMoving(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1107
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isStableFace:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1109
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->canTriggerFaceCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1110
    const/16 v2, 0x2715

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x2bc

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1111
    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x5dc

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1116
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1117
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileDegree:I

    const/16 v2, 0x32

    if-le v0, v2, :cond_7

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ObjectTrackingInfo;

    iget v0, v0, Lcom/htc/camera/ObjectTrackingInfo;->smileScore:I

    const/16 v2, 0x1f4

    if-le v0, v2, :cond_7

    .line 1118
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    if-gez v1, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const/4 v1, 0x1

    .line 1122
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ThisSmileCaptured:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    .line 1123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mNeedCaptureThisSmile:Z

    .line 1124
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ThisSmileCaptured:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1126
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFaceStable() - index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNeedCaptureThisSmile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mNeedCaptureThisSmile:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SmileFrameCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1134
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ObjectTrackingInfo;

    iget-object v1, v1, Lcom/htc/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move v9, v2

    goto/16 :goto_1

    .line 1118
    :cond_6
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1129
    :cond_7
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    if-lez v1, :cond_9

    const/4 v0, -0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1130
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SmileFrameCountList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-ge v0, v1, :cond_8

    .line 1131
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ThisSmileCaptured:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move v2, v9

    goto :goto_3

    .line 1129
    :cond_9
    add-int/lit8 v0, v1, -0x1

    goto :goto_4

    .line 1138
    :cond_a
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isAutoFaceCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz v9, :cond_b

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mNeedCaptureThisSmile:Z

    if-eqz v0, :cond_b

    .line 1142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mNeedCaptureThisSmile:Z

    .line 1143
    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1144
    const/16 v2, 0x2716

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x7d0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1147
    :cond_b
    if-gtz v11, :cond_c

    .line 1148
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 1150
    :cond_c
    return-void
.end method

.method private enableShutterSound(Z)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 999
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/16 v2, 0x271d

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "enableShutterSound() - No controller to enable shutter sound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIHFMServiceHMSClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "getIHFMServiceHMSClass: +++"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const/4 v0, 0x0

    .line 1200
    const-string v2, ""

    .line 1204
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.htc.hfm"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1215
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1217
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v3, "getIHFMServiceHMSClass: get apk name from HtcSpeak"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.htc.HTCSpeaker"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1233
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1237
    :try_start_2
    sget-object v2, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIHFMServiceHMSClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v2, :cond_1

    .line 1239
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v3, "new mIHFMServiceHMSClassLoader"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIHFMServiceHMSClassLoader:Ldalvik/system/PathClassLoader;

    .line 1243
    :cond_1
    const-string v1, "com.htc.hfm.IHfmServiceHMS"

    const/4 v2, 0x1

    sget-object v3, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIHFMServiceHMSClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    .line 1255
    :goto_2
    return-object v0

    .line 1206
    :catch_0
    move-exception v1

    .line 1208
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get apk name, NameNotFound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1210
    :catch_1
    move-exception v1

    .line 1212
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get apk name, NullPointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1223
    :catch_2
    move-exception v1

    .line 1225
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get apk name, NameNotFound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1230
    goto/16 :goto_1

    .line 1227
    :catch_3
    move-exception v1

    .line 1229
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get apk name, NullPointer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v2

    goto/16 :goto_1

    .line 1245
    :catch_4
    move-exception v1

    .line 1247
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get apk name, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1252
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "apk name is null or empty."

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private isAutoFaceCaptureEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1159
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/component/AutoFaceCaptureController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1184
    :goto_0
    return v0

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1163
    goto :goto_0

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1166
    goto :goto_0

    .line 1169
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    .line 1170
    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FRONT_FACE_AUTO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1171
    goto :goto_0

    .line 1174
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v1

    .line 1178
    goto/16 :goto_0

    .line 1181
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 1182
    :goto_1
    instance-of v0, v0, Lcom/htc/camera/effect/PanoramaScene;

    if-eqz v0, :cond_a

    move v0, v1

    .line 1183
    goto/16 :goto_0

    .line 1181
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 1184
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private isUnder4DimenThreshold()Z
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 1344
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CurrentOri:I

    add-int/lit16 v0, v0, -0x167

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CurrentOri:I

    add-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CurrentOri:I

    add-int/lit8 v0, v0, -0x5a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CurrentOri:I

    add-int/lit16 v0, v0, -0xb4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CurrentOri:I

    add-int/lit16 v0, v0, -0x10e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CurrentOri:I

    if-eq v0, v1, :cond_1

    .line 1351
    const/4 v0, 0x1

    .line 1353
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceCaptureSupported()Z
    .locals 10

    .prologue
    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v6, 0x0

    # return false, for rely on the htc vendor app com.htc.HTCSpeaker
    return v6

    .line 1264
    .line 1266
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isSmallRamDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canEnableVoiceCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1270
    :cond_0
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_IS_VOICE_CAPTURE_SUPPORTED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move v8, v6

    .line 1275
    :goto_0
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    if-nez v0, :cond_1

    .line 1276
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->setVolumeControlStream(I)V

    .line 1277
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1278
    const-string v0, "audio_stream_type"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1279
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmClient;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmCallback:Lcom/htc/lib1/hfmclient/a;

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    const-string v4, "com.htc.camera"

    const-string v5, "com.htc.camera.hfm"

    const/16 v7, 0x3ec

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/hfmclient/HfmClient;-><init>(Lcom/htc/lib1/hfmclient/a;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    .line 1281
    :cond_1
    if-eqz v8, :cond_5

    .line 1282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1283
    iput v9, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mLocaleResult:I

    .line 1284
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/lib1/hfmclient/HfmClient;->isSupportedLocaleEx(Landroid/content/Context;Ljava/util/Locale;)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mLocaleResult:I

    .line 1286
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mLocaleResult:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1287
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_IS_VOICE_CAPTURE_SUPPORTED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move v0, v8

    .line 1294
    :goto_1
    iget v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mLocaleResult:I

    packed-switch v1, :pswitch_data_0

    .line 1309
    :pswitch_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceCaptureSupported() - unsupported system language mLocaleResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mLocaleResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceCaptureSupported() -PROPERTY_VOICE_CLIENT_STATUS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    if-eqz v0, :cond_4

    .line 1319
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getIHFMServiceHMSClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    .line 1320
    if-nez v1, :cond_4

    .line 1322
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "isVoiceCaptureSupported() IHFMServiceHMS does not exist!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_IS_VOICE_CAPTURE_SUPPORTED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move v1, v6

    .line 1330
    :goto_3
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1331
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1332
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoiceCaptureSupported() - fase, phone CallState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v6

    .line 1336
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "isVoiceCaptureSupported() - isSupported:"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1337
    return v1

    .line 1291
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceCaptureSupported() - isSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Locale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mLocaleResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_1

    .line 1296
    :pswitch_1
    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotInstall:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1297
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1300
    :pswitch_2
    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Support:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1303
    :pswitch_3
    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Downloading:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1306
    :pswitch_4
    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureUI;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->GotNewVersion:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {p0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    move v1, v0

    goto/16 :goto_3

    :cond_5
    move v0, v8

    goto/16 :goto_2

    :cond_6
    move v8, v9

    goto/16 :goto_0

    .line 1294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 986
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    if-eqz v0, :cond_0

    .line 990
    :goto_0
    return v1

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-string v2, "Auto Face Capture Controller"

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoFaceCaptureController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    .line 990
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private lockRotation()V
    .locals 3

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 1363
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 1364
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Already locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1377
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Lock rotation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v1, "AutoFaceCapture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1412
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1413
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->deviceOrientation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CurrentOri:I

    move v0, v1

    .line 1415
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 1416
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_AccelerometerValues:[F

    aget v2, v2, v0

    aget v3, p1, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1417
    const/4 v0, 0x1

    .line 1421
    :goto_1
    if-eqz v0, :cond_1

    .line 1422
    iput v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_HandShakeStableTime:I

    .line 1427
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_AccelerometerValues:[F

    const/4 v2, 0x3

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1431
    return-void

    .line 1415
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1425
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_HandShakeStableTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_HandShakeStableTime:I

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private onAutoFocusCanceled(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1438
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    if-eq v0, v1, :cond_0

    .line 1443
    :goto_0
    return-void

    .line 1440
    :cond_0
    iput-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    .line 1441
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/16 v2, 0x271b

    iget v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1442
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusCanceled() - takenextPicture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onAutoFocusFinished(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1451
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->handle:Lcom/htc/camera/Handle;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    if-eq v0, v1, :cond_0

    .line 1458
    :goto_0
    return-void

    .line 1454
    :cond_0
    iput-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    .line 1455
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/16 v2, 0x271b

    iget v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1456
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoFocusFinished() - takenextPicture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPhotoSaveStarted(Lcom/htc/camera/CaptureHandle;I)V
    .locals 6

    .prologue
    .line 1466
    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    .line 1469
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableActionScreen()V

    .line 1472
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 1473
    if-eqz v0, :cond_1

    .line 1474
    const v1, 0x7f080173

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->showProcessingDialog(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 1477
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 1486
    :cond_0
    :goto_1
    iput p2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ExpectedPhotoCount:I

    .line 1487
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoSavingStartedTime:J

    .line 1489
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStarted() - Photo count:"

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ExpectedPhotoCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", timestamp:"

    iget-wide v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoSavingStartedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1490
    return-void

    .line 1476
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStarted() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1483
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mTakePictureDuringCountdown:Z

    if-nez v0, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    goto :goto_1
.end method

.method private onPhotoSaveStopped(Lcom/htc/camera/CaptureHandle;ILjava/lang/String;Lcom/htc/camera/io/Path;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1498
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ExpectedPhotoCount:I

    if-eq v0, p2, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhotoSaveStopped() - Expected photo count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ExpectedPhotoCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual photo count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1504
    const-class v0, Lcom/htc/camera/ab;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ab;

    .line 1505
    if-eqz v0, :cond_3

    .line 1506
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ab;->closeProcessingDialog(Lcom/htc/camera/Handle;)V

    .line 1509
    :goto_0
    iput-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ProcessingDialogHandle:Lcom/htc/camera/Handle;

    .line 1514
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoSavingStartedTime:J

    sub-long/2addr v0, v2

    .line 1515
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v3, "onPhotoSaveStopped() - File saving time:"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1518
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ExpectedPhotoCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1520
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1523
    new-instance v1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;

    invoke-direct {v1, p0, v4}, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/component/AutoFaceCaptureUI$1;)V

    .line 1524
    sget-object v2, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iput-object v2, v1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 1525
    iput-object p4, v1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    .line 1526
    iput p5, v1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->orientation:I

    .line 1527
    iput p2, v1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->photoCount:I

    .line 1528
    iput-object p3, v1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->bucketID:Ljava/lang/String;

    .line 1532
    invoke-direct {p0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->startAlbum(Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;)V

    .line 1535
    invoke-virtual {v0, p1}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1538
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    .line 1541
    :cond_2
    return-void

    .line 1508
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveStopped() - No IProcessingDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseHFMService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2098
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseHFMService() - mbHFMServiceReserved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mbHFMServiceReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    if-eqz v0, :cond_1

    .line 2101
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->releaseService()I

    .line 2102
    iput-boolean v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    .line 2107
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z

    .line 2108
    return-void

    .line 2104
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "releaseHFMService() - mHFMClient is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reserveHFMService()V
    .locals 11

    .prologue
    const v10, 0x7f0801b6

    const v9, 0x7f0801b5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1940
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isVoiceCaptureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2091
    :cond_0
    :goto_0
    return-void

    .line 1943
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    if-nez v0, :cond_2

    .line 1944
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    if-eqz v0, :cond_4

    .line 1945
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "reserveHFMService()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->reserveService()I

    .line 1947
    iput-boolean v7, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    .line 1951
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "reserveHFMService() - mbHFMServiceReserved:"

    iget-boolean v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, " mbHFMServiceReady:"

    iget-boolean v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v1, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1952
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    .line 1953
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    .line 1954
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    .line 1955
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    .line 1956
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    move-object v1, v0

    .line 1958
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_16

    .line 1959
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_10

    instance-of v0, v1, Lcom/htc/camera/effect/PanoramaScene;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1964
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    .line 1967
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v1, v0

    move v0, v2

    .line 1968
    :goto_3
    if-ge v0, v1, :cond_6

    .line 1969
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 1968
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1949
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "reserveHFMService() - mHFMClient is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1956
    :cond_5
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_2

    .line 1972
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v1, v0

    .line 1973
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v0, v0

    add-int v3, v1, v0

    move v0, v1

    .line 1974
    :goto_4
    if-ge v0, v3, :cond_7

    .line 1975
    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    sub-int v6, v0, v1

    aget-object v5, v5, v6

    aput-object v5, v4, v0

    .line 1974
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1978
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v1, v0

    .line 1979
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    array-length v0, v0

    add-int v3, v1, v0

    move v0, v1

    .line 1980
    :goto_5
    if-ge v0, v3, :cond_8

    .line 1981
    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    sub-int v6, v0, v1

    aget-object v5, v5, v6

    aput-object v5, v4, v0

    .line 1980
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1984
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v1, v0

    .line 1985
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    array-length v0, v0

    add-int v3, v1, v0

    move v0, v1

    .line 1986
    :goto_6
    if-ge v0, v3, :cond_9

    .line 1987
    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    sub-int v6, v0, v1

    aget-object v5, v5, v6

    aput-object v5, v4, v0

    .line 1986
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1992
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v7, :cond_a

    .line 1993
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2007
    :goto_7
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v7, :cond_d

    .line 2008
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2020
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommandToast:Ljava/lang/String;

    .line 2022
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "reserveHFMService() - photo and video toast"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1995
    :cond_a
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v2

    .line 1996
    :goto_9
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 1997
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v0, v3, :cond_b

    .line 1998
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1996
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2000
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 2002
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2003
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 2010
    :cond_d
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 2011
    :goto_b
    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_f

    .line 2012
    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    if-ne v1, v4, :cond_e

    .line 2013
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2011
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2015
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 2017
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2018
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 2026
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    .line 2029
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v1, v0

    move v0, v2

    .line 2030
    :goto_d
    if-ge v0, v1, :cond_11

    .line 2031
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 2030
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2034
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v1, v0

    .line 2035
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    array-length v0, v0

    add-int v3, v1, v0

    move v0, v1

    .line 2036
    :goto_e
    if-ge v0, v3, :cond_12

    .line 2037
    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    sub-int v6, v0, v1

    aget-object v5, v5, v6

    aput-object v5, v4, v0

    .line 2036
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2041
    :cond_12
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v7, :cond_13

    .line 2042
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommandToast:Ljava/lang/String;

    .line 2055
    :goto_f
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "reserveHFMService() - photo toast"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2044
    :cond_13
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v2

    .line 2045
    :goto_10
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_15

    .line 2046
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v0, v3, :cond_14

    .line 2047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2045
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2049
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 2051
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2052
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommandToast:Ljava/lang/String;

    goto/16 :goto_f

    .line 2058
    :cond_16
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    .line 2063
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v1, v0

    move v0, v2

    .line 2064
    :goto_12
    if-ge v0, v1, :cond_17

    .line 2065
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    sub-int v5, v0, v2

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 2064
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2068
    :cond_17
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v1, v0

    .line 2069
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    array-length v0, v0

    add-int v3, v1, v0

    move v0, v1

    .line 2070
    :goto_13
    if-ge v0, v3, :cond_18

    .line 2071
    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    sub-int v6, v0, v1

    aget-object v5, v5, v6

    aput-object v5, v4, v0

    .line 2070
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2075
    :cond_18
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v7, :cond_19

    .line 2076
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommandToast:Ljava/lang/String;

    .line 2088
    :goto_14
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "reserveHFMService() - video toast"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2078
    :cond_19
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v0, v2

    .line 2079
    :goto_15
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1b

    .line 2080
    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v0, v3, :cond_1a

    .line 2081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2079
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2083
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    .line 2085
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2086
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommandToast:Ljava/lang/String;

    goto/16 :goto_14
.end method

.method private showAutoCaptureToast(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1575
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isAutoFaceCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/UIState;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/UIState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1583
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAutoCaptureToast() - isVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " canShowToast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m_Is1stAutoCaptureToastShown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v2, :cond_3

    .line 1588
    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    const v2, 0x7f0801bb

    invoke-virtual {v0, v2}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_AutoCaptureToastHandle:Lcom/htc/camera/Handle;

    .line 1590
    iput-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z

    .line 1600
    :goto_1
    return-void

    .line 1575
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_AutoCaptureToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 1594
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_AutoCaptureToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 1595
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_AutoCaptureToastHandle:Lcom/htc/camera/Handle;

    goto :goto_1

    .line 1598
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "showAutoCaptureToast() - No m_ToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showDownloadLangeConfirm()V
    .locals 7

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    if-nez v0, :cond_0

    .line 1622
    new-instance v0, Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mDownloadCallback:Lcom/htc/lib1/hfmclient/b;

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;-><init>(Landroid/content/Context;Lcom/htc/lib1/hfmclient/b;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    .line 1623
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->startDownloadCallback()V

    .line 1626
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1631
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-eqz v0, :cond_2

    .line 1632
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v1, "Voice Downloading"

    sget-object v3, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    move-object v6, v0

    .line 1636
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHfmDownloadClient:Lcom/htc/lib1/hfmclient/HfmDownloadClient;

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$30;

    invoke-direct {v3, p0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI$30;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/Handle;)V

    new-instance v4, Lcom/htc/camera/component/AutoFaceCaptureUI$31;

    invoke-direct {v4, p0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI$31;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/Handle;)V

    new-instance v5, Lcom/htc/camera/component/AutoFaceCaptureUI$32;

    invoke-direct {v5, p0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI$32;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/Handle;)V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/hfmclient/HfmDownloadClient;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)I

    .line 1685
    return-void

    .line 1626
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1634
    :cond_2
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_1
.end method

.method private showVoiceCommandToast(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 1694
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->canSelectVoiceCommand()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/UIState;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2}, Lcom/htc/camera/UIState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1702
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showVoiceCommandToast() - isVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " canShowToast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Is1stVoiceCaptureToastShown:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bHFMServiceReserved:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReserved:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bHFMServiceReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mbHFMServiceReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVoiceCaptureEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v4

    sget-object v5, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v2, :cond_6

    .line 1710
    if-eqz v0, :cond_4

    .line 1711
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommandToast:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1712
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_VoiceCommandToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_VoiceCommandToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommandToast:Ljava/lang/String;

    const/16 v3, 0x1b58

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/ak;->showToast(Ljava/lang/String;I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_VoiceCommandToastHandle:Lcom/htc/camera/Handle;

    .line 1716
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "showVoiceCommandToast() shown"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :cond_1
    iput-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z

    .line 1733
    :cond_2
    :goto_1
    return-void

    .line 1694
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1722
    :cond_4
    if-nez p1, :cond_2

    .line 1723
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_VoiceCommandToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 1724
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_VoiceCommandToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 1725
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "showVoiceCommandToast() cancelToast"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_VoiceCommandToastHandle:Lcom/htc/camera/Handle;

    goto :goto_1

    .line 1731
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "showVoiceCommandToast() - No m_ToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startAlbum(Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;)V
    .locals 5

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->frontReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    move-object v1, v0

    .line 1550
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 1551
    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->photoCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1557
    iget-object v0, p1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->filePath:Lcom/htc/camera/io/Path;

    if-eqz v0, :cond_2

    .line 1559
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.VIEW_SELFIE_FROM_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1560
    const-string v1, "key_bucket_id"

    iget-object v3, p1, Lcom/htc/camera/component/AutoFaceCaptureUI$BurstMediaInfo;->bucketID:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    const-string v1, "last_selfie_index"

    iget v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PictureCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1562
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAlbum() - m_PictureCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PictureCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v2, v0, p1}, Lcom/htc/camera/HTCCamera;->startAlbum(Landroid/content/Intent;Lcom/htc/camera/media/MediaInfo;)Z

    .line 1568
    :cond_0
    :goto_1
    return-void

    .line 1545
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->mainReviewDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    move-object v1, v0

    goto :goto_0

    .line 1566
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "startAlbum() - No file path to start auto-review"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private triggerFaceCapture()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1740
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerFaceCapture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isAutoFaceCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1745
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerFaceCapture() - auto-face-capture is not enabled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    :goto_0
    return-void

    .line 1749
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_TOUCH_ON_SCREEN:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerFaceCapture() - isTouchOnScreen skip capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1754
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mIsHoldFocusKey:Z

    if-eqz v0, :cond_2

    .line 1755
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerFaceCapture() - HoldFocusKey skip capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1758
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCanAutoCapture:Z

    if-nez v0, :cond_3

    .line 1759
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerFaceCapture() - user touch skip capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1763
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 1764
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1766
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerFaceCapture() - isServiceMode return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1770
    :cond_4
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1772
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerFaceCapture() - Activity is paused or idle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1776
    :cond_6
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1778
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerFaceCapture() - Current camera mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1781
    :cond_7
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1782
    invoke-direct {p0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->enableShutterSound(Z)V

    .line 1784
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1785
    iput-boolean v6, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mTakePictureDuringCountdown:Z

    .line 1787
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_8

    .line 1788
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPreCaptureAFHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 1790
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/16 v2, 0x271b

    iget v3, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1791
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerFaceCapture() takenextPicture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1795
    :cond_9
    iput-boolean v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mTakePictureDuringCountdown:Z

    .line 1796
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->disableSelfTimer()V

    .line 1797
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->disableActionScreen()V

    .line 1798
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->faceCapturingEvent:Lcom/htc/camera/event/Event;

    sget-object v2, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1799
    const-string v0, "Auto face Capture"

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1800
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "triggerFaceCapture() - Cannot take picture"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    .line 1802
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->enableActionScreen()V

    .line 1806
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->faceCapturedEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 1805
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerFaceCapture() - takingPictureState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private triggerVoiceCapture()V
    .locals 3

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerVoiceCapture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1817
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->voiceCapturingEvent:Lcom/htc/camera/event/Event;

    sget-object v2, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1818
    new-instance v1, Lcom/htc/camera/base/EventArgs;

    invoke-direct {v1}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 1819
    sget-object v2, Lcom/htc/camera/IVoiceHfmClient;->EVENT_TRIGGER_VOICE_TAKE_PICTURE:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 1821
    invoke-virtual {v1}, Lcom/htc/camera/base/EventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1822
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerVoiceCapture() - Event triggerVoiceTakePicture is handled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->voiceCapturedEvent:Lcom/htc/camera/event/Event;

    sget-object v1, Lcom/htc/camera/event/EventArgs;->empty:Lcom/htc/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 1827
    return-void

    .line 1823
    :cond_1
    const-string v1, "voice capture"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerVoiceCapture() - Cannot take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private triggerVoiceCommand(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1849
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerVoiceCommand():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_TOUCH_ON_SCREEN:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerVoiceCommand() - isTouchOnScreen skip capture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    const/16 v2, 0x28a3

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1858
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 1859
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1860
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 1862
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1863
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCaptureCommands:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1864
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->triggerVoiceCapture()V

    goto :goto_0

    .line 1862
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    .line 1868
    :goto_2
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 1869
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mRecordCommands:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1870
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->triggerVoiceRecord()V

    goto :goto_0

    .line 1868
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v3

    .line 1874
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 1875
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenCaptureCommands:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1876
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->triggerVoiceCapture()V

    goto :goto_0

    .line 1874
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1880
    :cond_7
    add-int/lit8 v3, v3, 0x1

    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_9

    .line 1881
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHiddenRecordCommands:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1882
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->triggerVoiceRecord()V

    goto/16 :goto_0

    .line 1886
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerVoiceCommand() no matched command !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1889
    :cond_a
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->triggerVoiceCapture()V

    goto/16 :goto_0

    .line 1891
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1892
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->triggerVoiceRecord()V

    goto/16 :goto_0
.end method

.method private triggerVoiceRecord()V
    .locals 3

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerVoiceRecord()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1836
    new-instance v1, Lcom/htc/camera/base/EventArgs;

    invoke-direct {v1}, Lcom/htc/camera/base/EventArgs;-><init>()V

    .line 1837
    sget-object v2, Lcom/htc/camera/IVoiceHfmClient;->EVENT_TRIGGER_VOICE_RECORD:Lcom/htc/camera/base/EventKey;

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 1838
    invoke-virtual {v1}, Lcom/htc/camera/base/EventArgs;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1839
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "triggerVoiceRecord() - Event triggerVoiceRecord is handled"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    :goto_0
    return-void

    .line 1841
    :cond_0
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->triggerRecord()V

    goto :goto_0
.end method

.method private unlockRotation()V
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - NO UIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :goto_0
    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 1395
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - No locked rotation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Unlock rotation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 1403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private updateAutoFaceCaptureState()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1902
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isAutoFaceCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->isPhotoBoothActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitVideoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    move v4, v6

    .line 1908
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isEntered:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    .line 1910
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->enter()V

    .line 1914
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isEntered:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    .line 1916
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->exit()V

    .line 1919
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1920
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/16 v2, 0x271c

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1921
    :cond_5
    return-void

    :cond_6
    move v4, v3

    .line 1902
    goto :goto_0
.end method

.method private updateBurstMode(I)V
    .locals 7

    .prologue
    .line 1929
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/16 v2, 0x2714

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 1933
    :goto_0
    return-void

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "updateBurstMode() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private voiceCommand()V
    .locals 5

    .prologue
    .line 2115
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->isVoiceCaptureSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2136
    :goto_0
    return-void

    .line 2118
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->canSelectVoiceCommand()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, " voiceCommand canSelectVoiceCommand false"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2123
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    if-eqz v0, :cond_3

    .line 2124
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/htc/hfm/Speech;

    .line 2126
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2127
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-object v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mStrCommands:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/htc/hfm/Speech;->createSpeechFromText(Ljava/lang/String;)Lcom/htc/hfm/Speech;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2131
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/hfmclient/HfmClient;->selectCommand([Lcom/htc/hfm/Speech;)I

    goto :goto_0

    .line 2135
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "Hfm voiceCommand() mHFMClient is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public canCapture()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CanCapture:Z

    return v0
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    .line 361
    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 363
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->releaseHFMService()V

    .line 364
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mHFMClient:Lcom/htc/lib1/hfmclient/HfmClient;

    invoke-virtual {v0}, Lcom/htc/lib1/hfmclient/HfmClient;->close()V

    .line 368
    :cond_0
    invoke-super {p0}, Lcom/htc/camera/IStableFace;->deinitializeOverride()V

    .line 369
    return-void
.end method

.method public enter()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "Enter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isEntered:Lcom/htc/camera/property/Property;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isEntered:Lcom/htc/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "Exit"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isEntered:Lcom/htc/camera/property/Property;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 402
    :cond_0
    iput-boolean v2, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CanCapture:Z

    .line 405
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Controller:Lcom/htc/camera/component/AutoFaceCaptureController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v1, "No controller to notify"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x2713

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 417
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 500
    invoke-super {p0, p1}, Lcom/htc/camera/IStableFace;->handleMessage(Landroid/os/Message;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 421
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->triggerFaceCapture()V

    .line 423
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->canTriggerFaceCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-wide/16 v6, 0xbb8

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0

    .line 430
    :sswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_LastFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 435
    :sswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->isStableFace:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/htc/camera/component/AutoFaceCaptureUI;->removeMessages(I)V

    .line 440
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/AutoFaceCaptureUI;->onPhotoSaveStarted(Lcom/htc/camera/CaptureHandle;I)V

    .line 441
    invoke-direct {p0, v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->enableShutterSound(Z)V

    goto :goto_0

    .line 446
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 447
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PictureCount:I

    .line 448
    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_PHOTO_SAVE_STOPPED last_selfie_index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PictureCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    aget-object v1, v0, v3

    check-cast v1, Lcom/htc/camera/CaptureHandle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v3, v0, v8

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    check-cast v4, Lcom/htc/camera/io/Path;

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/AutoFaceCaptureUI;->onPhotoSaveStopped(Lcom/htc/camera/CaptureHandle;ILjava/lang/String;Lcom/htc/camera/io/Path;I)V

    goto :goto_0

    .line 454
    :sswitch_5
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_ON_SHUTTER_CALLBACK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    .line 456
    iget v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ShutterIndex:I

    if-ne v0, v8, :cond_1

    .line 457
    invoke-direct {p0, v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->updateBurstMode(I)V

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    goto/16 :goto_0

    .line 464
    :sswitch_6
    invoke-direct {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->voiceCommand()V

    goto/16 :goto_0

    .line 468
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 476
    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->triggerVoiceCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :sswitch_8
    const/16 v2, 0x28a3

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/component/AutoFaceCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 491
    invoke-direct {p0, v8}, Lcom/htc/camera/component/AutoFaceCaptureUI;->showVoiceCommandToast(Z)V

    goto/16 :goto_0

    .line 496
    :sswitch_9
    iput-boolean v8, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mCanAutoCapture:Z

    goto/16 :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
        0x2713 -> :sswitch_0
        0x2714 -> :sswitch_5
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_1
        0x2717 -> :sswitch_9
        0x2718 -> :sswitch_8
        0x28a3 -> :sswitch_6
        0x28a4 -> :sswitch_7
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 512
    invoke-super {p0}, Lcom/htc/camera/IStableFace;->initializeOverride()V

    .line 517
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 518
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 519
    const-class v0, Lcom/htc/camera/IObjectTracker;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IObjectTracker;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_objectTracker:Lcom/htc/camera/IObjectTracker;

    .line 521
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_effectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 522
    const-class v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    .line 523
    const-class v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_PhotoBoothController:Lcom/htc/camera/photopattern/IPhotoBoothController;

    .line 524
    const-class v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 525
    const-class v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitVideoController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_SplitVideoController:Lcom/htc/camera/splitcapture/ISplitVideoController;

    .line 526
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 527
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 529
    iput-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stVoiceCaptureToastShown:Z

    .line 530
    iput-boolean v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_Is1stAutoCaptureToastShown:Z

    .line 532
    const-string v0, "AutoFaceCaptureUI.voiceCaptured"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->voiceCapturedEvent:Lcom/htc/camera/event/Event;

    .line 533
    const-string v0, "AutoFaceCaptureUI.voiceCapturing"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->voiceCapturingEvent:Lcom/htc/camera/event/Event;

    .line 534
    const-string v0, "AutoFaceCaptureUI.faceCaptured"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->faceCapturedEvent:Lcom/htc/camera/event/Event;

    .line 535
    const-string v0, "AutoFaceCaptureUI.faceCapturing"

    invoke-static {p0, v0}, Lcom/htc/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/camera/event/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->faceCapturingEvent:Lcom/htc/camera/event/Event;

    .line 538
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 543
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$4;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 552
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$5;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 561
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->keyUpEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$6;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 571
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$7;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 599
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$8;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 615
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isSwitchingCamera:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$9;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 630
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->switchingCameraSlidingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$10;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 640
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$11;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 654
    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_TOUCH_ON_SCREEN:Lcom/htc/camera/base/PropertyKey;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$12;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 671
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    .line 672
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_5

    .line 674
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$13;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 682
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mAutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$14;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$14;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 695
    :goto_0
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 696
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$15;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$15;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 706
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$16;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$16;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 717
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$17;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$17;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 730
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->hasDialog:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$18;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$18;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 752
    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$19;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$19;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 761
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 762
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$20;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$20;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 786
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$21;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$21;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 825
    :cond_0
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/AutoFaceCaptureUI$22;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$22;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 848
    if-eqz v0, :cond_1

    .line 850
    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$23;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$23;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$24;

    const-string v3, "Settings.IsFrontAutoFaceCaptureEnabled"

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI$24;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 883
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->dynamicPropertyChangedListeners:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/AutoFaceCaptureUI$25;

    const-string v3, "Settings.IsVoiceCaptureEnabled"

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/component/AutoFaceCaptureUI$25;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 918
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/AutoFaceCaptureUI$26;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$26;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 927
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_2

    .line 929
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/AutoFaceCaptureUI$27;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$27;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_3

    .line 941
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/AutoFaceCaptureUI$28;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$28;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 960
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPhotoVideoSupportedModeLisentner:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 961
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->mPhotoVideoSupportedModeLisentner:Lcom/htc/camera/property/c;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 964
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_objectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v0, :cond_4

    .line 966
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->m_objectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->detectedObjects:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/AutoFaceCaptureUI$29;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoFaceCaptureUI$29;-><init>(Lcom/htc/camera/component/AutoFaceCaptureUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 978
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/AutoFaceCaptureUI;->enableShutterSound(Z)V

    .line 979
    return-void

    .line 692
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/AutoFaceCaptureUI;->TAG:Ljava/lang/String;

    const-string v2, "linkToOptionalServiceComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
