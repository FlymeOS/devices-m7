.class public final Lcom/htc/camera/panorama/PanoramaPlusUI;
.super Lcom/htc/camera/panorama/IPanoramaPlusController;
.source "PanoramaPlusUI.java"


# static fields
.field private static final CAPTURE_TIMEOUT:I = 0x1d4c0

.field private static final DEVICE_ORIENTATION_PORTRAIT:I

.field private static final DUMP_SENSOR_DURATION:J = 0xb2d05e00L

.field public static final FLAG_DEFER_RELEASE_3D_PREVIEW_RENDERING:I = 0x10000

.field public static final FLAG_PRESERVE_PREVIEW_STATE:I = 0x1

.field private static final GUIDE_ENABLED:Z = false

.field private static final HOW_TO_START_DURATION:I = 0x1388

.field static final MSG_APPLY_DEVICE_ORIENTATION:I = 0x2734

.field static final MSG_CAPTURE_COMPLETED:I = 0x271b

.field static final MSG_CAPTURE_STARTED:I = 0x2712

.field static final MSG_CAPTURE_STOPPED:I = 0x2717

.field static final MSG_CAPTURE_TIMEOUT:I = 0x2729

.field static final MSG_DEVICE_ROTATION_CHANGED:I = 0x2713

.field static final MSG_ENGINE_PREPARED:I = 0x2721

.field static final MSG_FRAME_CAPTURED:I = 0x2715

.field static final MSG_FRAME_STATE_CHANGED:I = 0x2716

.field static final MSG_HANDLE_CAPTURING_ERROR:I = 0x2738

.field static final MSG_HIDE_HOW_TO_START:I = 0x2725

.field static final MSG_LASTFRAME_CAPTURED:I = 0x271c

.field static final MSG_ON_CONTROLLER_ORIENTATION_READY:I = 0x2733

.field static final MSG_ON_NATIVE_ENGINE_CHANGED:I = 0x2720

.field private static final MSG_READ_SENSOR_CALIBRATION_DATA:I = 0x2758

.field private static final MSG_REGISTER_SENSOR:I = 0x2756

.field private static final MSG_RELEASE_3D_PREVIEW_RENDERING:I = 0x2742

.field static final MSG_RESET_SAVE_SCREEN:I = 0x2724

.field static final MSG_REVIEW_CREATED:I = 0x271e

.field static final MSG_SETUP_FRAMES:I = 0x2711

.field static final MSG_STITCHING_PROGRESS:I = 0x2722

.field static final MSG_TAKE_PICTURE:I = 0x272e

.field private static final MSG_UNREGISTER_SENSOR:I = 0x2757

.field static final NAME:Ljava/lang/String; = "Panorama+ UI"

.field private static final SENSOR_CALIBRATION_FILE:Ljava/lang/String; = "/sys/class/htc_sensorhub/sensor_hub/AP_calibrator_data_accRL"

.field private static final TAKE_PICTURE_DELAY:I = 0x384


# instance fields
.field private m_AccTimestamp:J

.field private final m_AccelerometerListener:Landroid/hardware/SensorEventListener;

.field private m_AimingToastHandle:Lcom/htc/camera/Handle;

.field private m_ArrowsContainer:Landroid/view/View;

.field private m_BaseView:Landroid/view/View;

.field private m_BottomArrow:Landroid/widget/ImageView;

.field private m_BubbleToastManager:Lcom/htc/camera/u;

.field private m_CalibYAxisLandscape:D

.field private m_CalibYAxisReverseLandscape:D

.field private m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

.field private m_CancelBtn:Lcom/htc/camera/widget/CaptureBarButton;

.field private m_CaptureBar:Lcom/htc/camera/ICaptureBar;

.field private m_CaptureBarHandle:Lcom/htc/camera/Handle;

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CapturedFrameCount:I

.field private m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

.field private m_CurrentAimedFrame:Lcom/htc/camera/panorama/PanoramaFrame;

.field private m_CurrentDeviceOrientation:I

.field private m_CurrentHandle:Lcom/htc/camera/Handle;

.field private m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

.field private m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

.field private m_DisableCaptureHandle:Lcom/htc/camera/Handle;

.field private m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

.field private m_DrawPreviewFilterHandler:Lcom/htc/camera/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashDisabledHandle:Lcom/htc/camera/Handle;

.field private m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

.field private m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

.field private m_FullScreenBaseView:Landroid/view/View;

.field private m_GLFrameRateRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_GyroTimestamp:J

.field private final m_GyroscopeListener:Landroid/hardware/SensorEventListener;

.field private m_HAngle:I

.field private m_HowToStartToastHandle:Lcom/htc/camera/Handle;

.field private m_Is2DFilterStarted:Z

.field private m_IsControllerOrientationReady:Z

.field private m_IsSensorStarted:Z

.field private m_IsUISetup:Z

.field private m_LastTimeDumpAcc:J

.field private m_LastTimeDumpDeviceRotation:J

.field private m_LastTimeDumpGyro:J

.field private m_LastTimeOnDraw:J

.field private m_LastTimeReceivedGyro:J

.field private m_LeftArrow:Landroid/widget/ImageView;

.field private m_NativeEngine:J

.field private m_NativeUIRenderer:J

.field private m_NaviBitmap:Landroid/graphics/Bitmap;

.field private m_NaviCanvas:Landroid/graphics/Canvas;

.field private m_NaviCanvasHeight:I

.field private m_NaviCanvasWidth:I

.field private m_NaviCapturedColor:I

.field private m_NaviHoverColor:I

.field private m_NaviLineColor:I

.field private m_NaviRectHeight:F

.field private m_NaviRectMargin:F

.field private m_NaviRectWidth:F

.field private m_NeedShowHowToStart:Z

.field private m_NextDeviceOrientation:I

.field private m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

.field private m_ObjectTrackerHandle:Lcom/htc/camera/Handle;

.field private m_Paint:Landroid/graphics/Paint;

.field private m_PixelPerElevationDegree:D

.field private m_PixelPerRotationDegree:D

.field private m_PreviewFilterRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

.field private m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

.field private m_RendererHandle:Lcom/htc/camera/Handle;

.field private m_ReviewBitmap:Landroid/graphics/Bitmap;

.field private m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_RightArrow:Landroid/widget/ImageView;

.field private m_RollCenterToastHandle:Lcom/htc/camera/Handle;

.field private m_SensorManager:Landroid/hardware/SensorManager;

.field private m_ShutterBar:Landroid/view/View;

.field private m_ShutterToastHandle:Lcom/htc/camera/Handle;

.field private m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

.field private m_ToastManager:Lcom/htc/camera/ak;

.field private m_TopArrow:Landroid/widget/ImageView;

.field private m_UIRotationHandle:Lcom/htc/camera/Handle;

.field private m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

.field private volatile m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

.field private m_VAngle:I

.field private m_VfBottom:F

.field private m_VfLeft:F

.field private m_VfLineLength:F

.field private m_VfRectHeight:F

.field private m_VfRectWidth:F

.field private m_VfRight:F

.field private m_VfStrokeWidth:I

.field private m_VfTop:F

.field private m_VfVertices:[Landroid/graphics/PointF;

.field private m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

.field private m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sput v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->DEVICE_ORIENTATION_PORTRAIT:I

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    .line 402
    const-string v0, "Panorama+ UI"

    invoke-direct {p0, v0, v4, p1, v4}, Lcom/htc/camera/panorama/IPanoramaPlusController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 117
    iput v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    .line 118
    iput v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NextDeviceOrientation:I

    .line 124
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 160
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeReceivedGyro:J

    .line 174
    iput-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CalibYAxisLandscape:D

    .line 175
    iput-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CalibYAxisReverseLandscape:D

    .line 178
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GLFrameRateRef:Lcom/htc/camera/CloseableHandleReference;

    .line 229
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$1;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewFilterRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    .line 306
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$2;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DrawPreviewFilterHandler:Lcom/htc/camera/base/b;

    .line 318
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$3;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AccelerometerListener:Landroid/hardware/SensorEventListener;

    .line 360
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$4;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 403
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->disableMessageLogs()V

    .line 404
    return-void
.end method

.method private static native ClosePanoramaUIRenderer(J)V
.end method

.method private static native CreatePanoramaUIRenderer(III)J
.end method

.method private static native DrawFrame(JJ)V
.end method

.method private static native SetFrameIndicatorImage(III[B)Z
.end method

.method static synthetic access$000(Lcom/htc/camera/panorama/PanoramaPlusUI;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeUIRenderer:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeUIRenderer:J

    return-wide p1
.end method

.method static synthetic access$100(III)J
    .locals 2

    .prologue
    .line 74
    invoke-static {p0, p1, p2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->CreatePanoramaUIRenderer(III)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/panorama/PanoramaPlusUI;Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->drawPreview(Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/panorama/PanoramaPlusUI;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AccTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AccTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/htc/camera/panorama/PanoramaPlusUI;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/panorama/PanoramaPlusUI;)D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CalibYAxisLandscape:D

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/panorama/PanoramaPlusUI;)D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CalibYAxisReverseLandscape:D

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/panorama/PanoramaPlusUI;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpAcc:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpAcc:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/panorama/PanoramaPlusUI;I[F)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onSensorValuesChanged(I[F)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/camera/panorama/PanoramaPlusUI;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroTimestamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/htc/camera/panorama/PanoramaPlusUI;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeOnDraw:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/panorama/PanoramaPlusUI;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpGyro:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpGyro:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeOnDraw:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/panorama/PanoramaPlusUI;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsUISetup:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/panorama/PanoramaPlusUI;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showReviewScreen(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/panorama/PanoramaPlusUI;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/camera/panorama/PanoramaPlusUI;I)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->unlockRotation()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->lockRotation()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/camera/panorama/PanoramaPlusUI;Z)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->updateCurrentDeviceOrientation(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->notifyDeviceOrientationChanged()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/camera/panorama/PanoramaPlusUI;IZ)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->enter(IZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/widget/CaptureBarButton;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CancelBtn:Lcom/htc/camera/widget/CaptureBarButton;

    return-object v0
.end method

.method static synthetic access$400(J)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->ClosePanoramaUIRenderer(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusController;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/panorama/PanoramaPlusUI;)J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeEngine:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    return-object v0
.end method

.method static synthetic access$900(JJ)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0, p1, p2, p3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->DrawFrame(JJ)V

    return-void
.end method

.method private applyDeviceOrientation(I)V
    .locals 2

    .prologue
    .line 2453
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    if-eq p1, v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "applyDeviceOrientation() - Apply new orientation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    iput p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    .line 2461
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->unlockRotation()V

    .line 2462
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->lockRotation()V

    .line 2465
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->notifyDeviceOrientationChanged()V

    .line 2467
    :cond_0
    return-void
.end method

.method private changeUIStateTo(Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;)V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    if-ne v0, p1, :cond_0

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "changeUIStateTo() - State: "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    goto :goto_0
.end method

.method private drawPreview(Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;)V
    .locals 5

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 1752
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->paintReset()V

    .line 1753
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1754
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1755
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1756
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1758
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfVertices:[Landroid/graphics/PointF;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1760
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1761
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfVertices:[Landroid/graphics/PointF;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfVertices:[Landroid/graphics/PointF;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1762
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfVertices:[Landroid/graphics/PointF;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfVertices:[Landroid/graphics/PointF;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1763
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfVertices:[Landroid/graphics/PointF;

    add-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfVertices:[Landroid/graphics/PointF;

    add-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1765
    iget-object v2, p1, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1758
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1770
    :cond_0
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    if-eqz v0, :cond_1

    .line 1772
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->updateNavigationBitmap()V

    .line 1774
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1775
    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1777
    iget v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    if-nez v1, :cond_2

    .line 1779
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1780
    iget v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1803
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->paintReset()V

    .line 1804
    iget-object v1, p1, Lcom/htc/camera/ui/DrawCameraPreviewOverlayEventArgs;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1806
    :cond_1
    return-void

    .line 1784
    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1785
    iget v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectHeight:F

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1790
    :cond_3
    iget v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    if-nez v1, :cond_4

    .line 1792
    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1793
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 1797
    :cond_4
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1798
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectHeight:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1
.end method

.method private enter(IZ)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 501
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Already entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "enter("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 513
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->linkToComponents()V

    .line 516
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBarHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    invoke-virtual {v0, v4}, Lcom/htc/camera/ICaptureBar;->setCaptureBarVisibility(Z)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBarHandle:Lcom/htc/camera/Handle;

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1, v6}, Lcom/htc/camera/ui/IOpenGLViewfinder;->force3DPreviewRendering(I)Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 527
    :cond_2
    const/16 v0, 0x2742

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    .line 530
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 532
    new-instance v0, Lcom/htc/camera/SessionHandle;

    invoke-direct {v0}, Lcom/htc/camera/SessionHandle;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentHandle:Lcom/htc/camera/Handle;

    .line 533
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    const/16 v2, 0x2712

    iget-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentHandle:Lcom/htc/camera/Handle;

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 543
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-interface {v1}, Lcom/htc/camera/ui/IOpenGLViewfinder;->enableHighFrameRate()Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GLFrameRateRef:Lcom/htc/camera/CloseableHandleReference;

    .line 546
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_3

    .line 548
    invoke-direct {p0, v6}, Lcom/htc/camera/panorama/PanoramaPlusUI;->updateCurrentDeviceOrientation(Z)V

    .line 549
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->notifyDeviceOrientationChanged()V

    .line 552
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-nez v1, :cond_4

    .line 556
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v1}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 559
    :cond_4
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->disableSelfTimer()V

    .line 562
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_5

    .line 563
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->enableCapture(Lcom/htc/camera/Handle;)V

    .line 564
    :cond_5
    const-string v1, "Panorama+ UI"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->disableCapture(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    .line 567
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->lockZoom()V

    .line 570
    iput-boolean v6, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NeedShowHowToStart:Z

    .line 573
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v1, :cond_6

    .line 574
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    invoke-virtual {v1}, Lcom/htc/camera/IObjectTracker;->disableObjectDetection()Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTrackerHandle:Lcom/htc/camera/Handle;

    .line 577
    :cond_6
    const-string v1, "Panorama+ UI"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->disableFastShotToShot(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    .line 580
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->setupUI()V

    goto/16 :goto_0

    .line 537
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 538
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Cannot linke to controller, enter later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleCaptureError(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2537
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCaptureError() - Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2564
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture(ZZ)V

    .line 2565
    return-void

    .line 2544
    :sswitch_0
    const/4 v0, 0x1

    .line 2545
    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 2555
    goto :goto_0

    .line 2557
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showMemoryErrorToast()V

    move v0, v1

    .line 2558
    goto :goto_0

    .line 2541
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x191 -> :sswitch_1
        0x192 -> :sswitch_1
        0x193 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x196 -> :sswitch_0
        0x1a4 -> :sswitch_2
        0x1b8 -> :sswitch_1
    .end sparse-switch
.end method

.method private hideAimingHintToast()V
    .locals 2

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 2339
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "hideAimingHintToast()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AimingToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AimingToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 2343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AimingToastHandle:Lcom/htc/camera/Handle;

    .line 2346
    :cond_0
    return-void
.end method

.method private hideArrows()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2293
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2294
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2296
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_TopArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2297
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_TopArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2299
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2300
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2302
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2303
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2304
    return-void
.end method

.method private hideHintToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2311
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_2

    .line 2313
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "hideHintToast()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ShutterToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ShutterToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 2317
    iput-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ShutterToastHandle:Lcom/htc/camera/Handle;

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AimingToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 2321
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AimingToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 2322
    iput-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AimingToastHandle:Lcom/htc/camera/Handle;

    .line 2324
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RollCenterToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_2

    .line 2326
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RollCenterToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 2327
    iput-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RollCenterToastHandle:Lcom/htc/camera/Handle;

    .line 2330
    :cond_2
    return-void
.end method

.method private hideHowToStartToast()V
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_HowToStartToastHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "hideHowToStartToast()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_HowToStartToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 2359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_HowToStartToastHandle:Lcom/htc/camera/Handle;

    .line 2362
    :cond_0
    return-void
.end method

.method private linkToComponents()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-nez v0, :cond_0

    .line 414
    const-class v0, Lcom/htc/camera/IViewFinder3D;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    .line 415
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No IViewFinder3D interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-nez v0, :cond_1

    .line 420
    const-class v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IOpenGLViewfinder;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    .line 421
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No IOpenGLViewfinder interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-nez v0, :cond_2

    .line 428
    const-class v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    .line 429
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No ICameraPreviewOverlay interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-nez v0, :cond_3

    .line 436
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    .line 437
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-nez v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No IBubbleToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-nez v0, :cond_4

    .line 444
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ToastManager:Lcom/htc/camera/ak;

    .line 445
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-nez v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_5

    .line 452
    const-class v0, Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    .line 453
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_5

    .line 454
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-nez v0, :cond_6

    .line 460
    const-class v0, Lcom/htc/camera/ICaptureBar;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureBar;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    .line 461
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-nez v0, :cond_6

    .line 462
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No ICaptureBar interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-nez v0, :cond_7

    .line 468
    const-class v0, Lcom/htc/camera/IObjectTracker;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IObjectTracker;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    .line 469
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-nez v0, :cond_7

    .line 470
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No IObjectTracker interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-nez v0, :cond_8

    .line 476
    const-class v0, Lcom/htc/camera/IRotateDialogManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRotateDialogManager;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

    .line 477
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-nez v0, :cond_8

    .line 478
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - No IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_8
    return-void
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 965
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    if-eqz v0, :cond_0

    move v3, v6

    .line 974
    :goto_0
    return v3

    .line 967
    :cond_0
    const-class v0, Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusController;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    .line 968
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    if-eqz v0, :cond_1

    .line 970
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    const/16 v2, 0x2711

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 971
    goto :goto_0

    .line 973
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "linkToController() - Cannot find panorama+ controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private lockRotation()V
    .locals 3

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 2483
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - NO UIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    :goto_0
    return-void

    .line 2487
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 2489
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Already locked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2494
    :cond_1
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2496
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Lock rotation: reverselandscape"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v1, "Panorama+"

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 2501
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Lock rotation: landscape"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    const-string v1, "Panorama+"

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private notifyDeviceOrientationChanged()V
    .locals 6

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "notifyDeviceOrientationChanged() - Notify engine: "

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2473
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    const/16 v2, 0x2716

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2474
    return-void
.end method

.method private onCaptureCompleted()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1337
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - No capture handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureCompleted() - Start"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    .line 1347
    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    .line 1348
    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    move-object v0, v1

    .line 1349
    check-cast v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    .line 1352
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->dismiss()V

    .line 1355
    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    .line 1359
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->completeTakingPicture(Lcom/htc/camera/CaptureHandle;)V

    .line 1360
    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1363
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_2

    .line 1365
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->enableCapture(Lcom/htc/camera/Handle;)V

    .line 1366
    :cond_2
    const-string v1, "Panorama+ UI"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->disableCapture(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    .line 1369
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->refreshPreview()V

    .line 1371
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureCompleted() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onCaptureStarted(Lcom/htc/camera/CaptureHandle;)V
    .locals 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStarted()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->resetSaveScreen()V

    .line 1385
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->resetCaptureTimer()V

    .line 1388
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1393
    return-void
.end method

.method private onCaptureStopped(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1400
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusUI$PanoramaPlusUIState:[I

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1409
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStopped() - Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1413
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStopped()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->changeUIStateTo(Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;)V

    .line 1426
    invoke-direct {p0, v2, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showCancelButton(ZZ)V

    .line 1428
    if-eqz p1, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

    if-eqz v0, :cond_2

    .line 1433
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$11;

    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI$11;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    .line 1442
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 1443
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setMax(I)V

    .line 1444
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setTitle(I)V

    .line 1445
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1447
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1448
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DialogManager:Lcom/htc/camera/IRotateDialogManager;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;)Lcom/htc/camera/Handle;

    .line 1452
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->notifyProcessingTakenPictures()V

    .line 1455
    iput-boolean v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NeedShowHowToStart:Z

    goto :goto_0

    .line 1451
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onCaptureStopped() - No IRotateDialogManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1403
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private onControllerOrientationReady()V
    .locals 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onControllerOrientationReady()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->WaitingControllerReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->WaitingDeviceRotationReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->changeUIStateTo(Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;)V

    .line 1468
    :cond_0
    return-void
.end method

.method private onDeviceRotationChanged(DDD)V
    .locals 6

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsSensorStarted:Z

    if-nez v0, :cond_1

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1482
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1483
    iget-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpDeviceRotation:J

    sub-long v2, v0, v2

    const-wide v4, 0xb2d05e00L

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1485
    iput-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpDeviceRotation:J

    .line 1486
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDeviceRotationChanged()- rotation: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", elevation: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ", roll: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1489
    :cond_2
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusUI$PanoramaPlusUIState:[I

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1575
    :pswitch_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_0

    .line 1576
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Ready:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->changeUIStateTo(Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;)V

    goto :goto_0

    .line 1495
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    if-nez v0, :cond_3

    .line 1496
    new-instance v0, Lcom/htc/camera/panorama/DeviceRotation;

    invoke-direct {v0}, Lcom/htc/camera/panorama/DeviceRotation;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    .line 1497
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    double-to-float v1, p1

    iput v1, v0, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    .line 1498
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    double-to-float v1, p3

    iput v1, v0, Lcom/htc/camera/panorama/DeviceRotation;->elevation:F

    .line 1499
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    double-to-float v1, p5

    iput v1, v0, Lcom/htc/camera/panorama/DeviceRotation;->roll:F

    .line 1538
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_7

    .line 1540
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_4

    .line 1542
    const-wide/high16 v0, -0x3ff8000000000000L    # -3.0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_6

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_6

    .line 1544
    const/16 v0, 0x272e

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1545
    const/16 v2, 0x272e

    const-wide/16 v3, 0x384

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 1564
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_5

    .line 1565
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->updateCurrentDeviceOrientation(Z)V

    .line 1568
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->updateCurrentAimedFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->refreshPreview()V

    goto/16 :goto_0

    .line 1548
    :cond_6
    const/16 v0, 0x272e

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1549
    const/16 v0, 0x272e

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    goto :goto_1

    .line 1553
    :cond_7
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1556
    const-wide/high16 v0, -0x3fe8000000000000L    # -6.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_8

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_4

    :cond_8
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    if-nez v0, :cond_4

    .line 1558
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture(ZZ)V

    goto :goto_1

    .line 1489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onEnginePrepared(Lcom/htc/camera/Handle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1234
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    :goto_0
    return-void

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentHandle:Lcom/htc/camera/Handle;

    if-eq v0, p1, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnginePrepared() - Invalid handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1243
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onEnginePrepared() - Activity paused"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onEnginePrepared()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const/16 v0, 0x2756

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendAsyncMessage(I)Z

    .line 1256
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->start2DPreviewFilter()V

    .line 1259
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->startRenderer()V

    .line 1266
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NeedShowHowToStart:Z

    if-eqz v0, :cond_3

    .line 1268
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showHowToStartToast()V

    .line 1269
    const/16 v2, 0x2725

    const-wide/16 v3, 0x1388

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 1270
    iput-boolean v6, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NeedShowHowToStart:Z

    .line 1274
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    if-ne v0, v1, :cond_4

    .line 1276
    invoke-direct {p0, v6}, Lcom/htc/camera/panorama/PanoramaPlusUI;->updateCurrentDeviceOrientation(Z)V

    .line 1277
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->notifyDeviceOrientationChanged()V

    .line 1281
    :cond_4
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->WaitingControllerReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->changeUIStateTo(Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;)V

    goto :goto_0
.end method

.method private onFrameCaptured(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1591
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onFrameCaptured() - Not capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    :goto_0
    return-void

    .line 1596
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    if-nez v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onFrameCaptured() - No frame information"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1601
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 1603
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameCaptured() - Invalid frame index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Is2DFilterStarted:Z

    if-nez v0, :cond_4

    .line 1608
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onFrameCaptured() - Already stopped"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1612
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onFrameCaptured("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1615
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    .line 1616
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v0, v0, p1

    sget-object v1, Lcom/htc/camera/panorama/PanoramaFrameState;->Captured:Lcom/htc/camera/panorama/PanoramaFrameState;

    iput-object v1, v0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 1619
    const/16 v0, 0x2729

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1620
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->resetCaptureTimer()V

    .line 1623
    :cond_5
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    if-ne v0, v4, :cond_7

    .line 1625
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v0, v0, p1

    iput-boolean v4, v0, Lcom/htc/camera/panorama/PanoramaFrame;->isFirstFrame:Z

    .line 1634
    invoke-direct {p0, v4, v4}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showCancelButton(ZZ)V

    .line 1644
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->refreshPreview()V

    goto :goto_0

    .line 1636
    :cond_7
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CapturedFrameCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    goto :goto_1
.end method

.method private onFrameStateChanged(ILcom/htc/camera/panorama/PanoramaFrameState;)V
    .locals 6

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onFrameStateChanged() - Not capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :goto_0
    return-void

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    if-nez v0, :cond_1

    .line 1660
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onFrameStateChanged() - No frame information"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1663
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 1665
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameStateChanged() - Invalid frame index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1669
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onFrameStateChanged(index = "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", state = "

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1672
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 1675
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->refreshPreview()V

    goto :goto_0
.end method

.method private onNativeEngineChanged(J)V
    .locals 3

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onNativeEngineChanged() - Set native engine: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1226
    iput-wide p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeEngine:J

    goto :goto_0
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsUISetup:Z

    if-nez v0, :cond_2

    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onReviewImageCreated() - No need to show review now"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    if-eqz p1, :cond_1

    .line 1715
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1732
    :cond_1
    :goto_0
    return-void

    .line 1720
    :cond_2
    if-nez p1, :cond_3

    .line 1722
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onReviewImageCreated() - Bitmap is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1727
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "onReviewImageCreated()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    .line 1731
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onSensorValuesChanged(I[F)V
    .locals 6

    .prologue
    .line 1683
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1685
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-virtual {v2}, Lcom/htc/camera/panorama/PanoramaPlusController;->getUIEngineLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1687
    :try_start_0
    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    iget-wide v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeEngine:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->checkEngine(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1689
    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->updateSensorValues(I[FJ)V

    .line 1691
    :cond_0
    monitor-exit v2

    .line 1692
    return-void

    .line 1691
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onStitchingProgress(I)V
    .locals 3

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStitchingProgress() - Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_StitchingProgressDialog:Lcom/htc/lib1/cc/app/HtcProgressDialog;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setProgress(I)V

    .line 1702
    :cond_0
    return-void
.end method

.method private paintReset()V
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1950
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    .line 1955
    :goto_0
    return-void

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    goto :goto_0
.end method

.method private readSensorCalibrationData()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 1134
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/htc_sensorhub/sensor_hub/AP_calibrator_data_accRL"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "readSensorCalibrationData() - Sensor calibration file doesn\'t exist"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1146
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1154
    :goto_1
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    .line 1157
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1159
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1160
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    div-double/2addr v1, v6

    iput-wide v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CalibYAxisLandscape:D

    .line 1161
    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CalibYAxisReverseLandscape:D

    .line 1163
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "readSensorCalibrationData() - LY/100:"

    iget-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CalibYAxisLandscape:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, " RY/100:"

    iget-wide v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CalibYAxisReverseLandscape:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1148
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1150
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readSensorCalibrationData() - Fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1154
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/htc/camera/io/FileUtility;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 1148
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private refreshPreview()V
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-interface {v0}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->invalidateOverlay()V

    .line 1741
    :cond_0
    return-void
.end method

.method private resetCaptureTimer()V
    .locals 6

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "resetCaptureTimer() - Reset capture timer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    const/16 v2, 0x2729

    const-wide/32 v3, 0x1d4c0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 2575
    return-void
.end method

.method private resetSaveScreen()V
    .locals 3

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "resetSaveScreen()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2389
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 2390
    const/16 v0, 0x2724

    const-wide/16 v1, 0x61a8

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 2392
    :cond_0
    return-void
.end method

.method private setupFrameInfos(I[[Lcom/htc/camera/panorama/PanoramaFrame;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2011
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v2, "setupFrameInfos() - Total frame count : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2013
    new-array v0, p1, [Lcom/htc/camera/panorama/PanoramaFrame;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    .line 2014
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 2016
    aget-object v3, p2, v2

    .line 2017
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 2018
    iget-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByIndex:[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v5, v3, v0

    iget v5, v5, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    aget-object v6, v3, v0

    aput-object v6, v4, v5

    .line 2017
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2014
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 2022
    :cond_1
    array-length v0, p2

    new-array v0, v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    move v0, v1

    .line 2023
    :goto_2
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2025
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v3, p2, v0

    array-length v3, v3

    new-array v3, v3, [Lcom/htc/camera/panorama/PanoramaFrame;

    aput-object v3, v2, v0

    .line 2026
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v2, v2, v0

    array-length v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    move v2, v1

    .line 2027
    :goto_3
    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2029
    add-int v3, v2, v4

    .line 2030
    iget-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v5, v5, v0

    array-length v5, v5

    if-lt v3, v5, :cond_2

    .line 2031
    iget-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v5, v5, v0

    array-length v5, v5

    sub-int/2addr v3, v5

    .line 2032
    :cond_2
    iget-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v5, v5, v0

    aget-object v6, p2, v0

    aget-object v6, v6, v2

    aput-object v6, v5, v3

    .line 2027
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2023
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2035
    :cond_4
    return-void
.end method

.method private setupUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 2043
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsUISetup:Z

    if-eqz v0, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v2, "setupUI() - Set view visible"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BaseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2049
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FullScreenBaseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2147
    :cond_0
    :goto_0
    return-void

    .line 2056
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e00e5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BaseView:Landroid/view/View;

    .line 2057
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getFullScreenCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e0101

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FullScreenBaseView:Landroid/view/View;

    .line 2060
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FullScreenBaseView:Landroid/view/View;

    const v2, 0x7f0e01c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ArrowsContainer:Landroid/view/View;

    .line 2061
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ArrowsContainer:Landroid/view/View;

    const v2, 0x7f0e01ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LeftArrow:Landroid/widget/ImageView;

    .line 2062
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ArrowsContainer:Landroid/view/View;

    const v2, 0x7f0e01cb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_TopArrow:Landroid/widget/ImageView;

    .line 2063
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ArrowsContainer:Landroid/view/View;

    const v2, 0x7f0e01cc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RightArrow:Landroid/widget/ImageView;

    .line 2064
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ArrowsContainer:Landroid/view/View;

    const v2, 0x7f0e01cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BottomArrow:Landroid/widget/ImageView;

    .line 2067
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FullScreenBaseView:Landroid/view/View;

    const v2, 0x7f0e01ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 2068
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FullScreenBaseView:Landroid/view/View;

    const v2, 0x7f0e01cf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageView:Landroid/widget/ImageView;

    .line 2071
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BaseView:Landroid/view/View;

    const v2, 0x7f0e01d0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ShutterBar:Landroid/view/View;

    .line 2072
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ShutterBar:Landroid/view/View;

    const v2, 0x7f0e01d1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/CaptureBarButton;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CancelBtn:Lcom/htc/camera/widget/CaptureBarButton;

    .line 2073
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CancelBtn:Lcom/htc/camera/widget/CaptureBarButton;

    const v2, 0x7f020102

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setIconResource(I)V

    .line 2074
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CancelBtn:Lcom/htc/camera/widget/CaptureBarButton;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusUI$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$12;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/CaptureBarButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2092
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    .line 2095
    const v0, 0x7f0a0321

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    .line 2096
    const v0, 0x7f0a0322

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectHeight:F

    .line 2097
    const v0, 0x7f0a0323

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectMargin:F

    .line 2098
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvasWidth:I

    .line 2099
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectHeight:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvasHeight:I

    .line 2100
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviHoverColor:I

    .line 2101
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCapturedColor:I

    .line 2102
    const v0, 0x7f0f00cf

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviLineColor:I

    .line 2103
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvasWidth:I

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvasHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviBitmap:Landroid/graphics/Bitmap;

    .line 2104
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvas:Landroid/graphics/Canvas;

    .line 2107
    const v0, 0x7f0a0324

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectWidth:F

    .line 2108
    const v0, 0x7f0a0325

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectHeight:F

    .line 2109
    const v0, 0x7f0a0326

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    .line 2112
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    if-eqz v0, :cond_3

    .line 2114
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Viewfinder:Lcom/htc/camera/ui/IOpenGLViewfinder;

    sget-object v2, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/ui/IOpenGLViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 2115
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 2116
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    .line 2118
    :goto_1
    invoke-static {}, Lcom/htc/camera/rotate/UIRotation;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2120
    int-to-float v3, v2

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectWidth:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLeft:F

    .line 2121
    int-to-float v3, v0

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfTop:F

    .line 2122
    int-to-float v2, v2

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectWidth:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRight:F

    .line 2123
    int-to-float v0, v0

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectHeight:F

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfBottom:F

    .line 2132
    :goto_2
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLeft:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfTop:F

    iget v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLeft:F

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfTop:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLeft:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfTop:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRight:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfTop:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRight:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfTop:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRight:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfTop:F

    iget v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRight:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfBottom:F

    iget v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRight:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfBottom:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRight:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfBottom:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLeft:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfBottom:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLeft:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfBottom:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLeft:F

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfBottom:F

    iget v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLineLength:F

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfVertices:[Landroid/graphics/PointF;

    .line 2142
    const v0, 0x7f0a0327

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfStrokeWidth:I

    .line 2145
    iput-boolean v6, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsUISetup:Z

    goto/16 :goto_0

    .line 2127
    :cond_2
    int-to-float v3, v2

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectWidth:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfTop:F

    .line 2128
    int-to-float v3, v0

    iget v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectHeight:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfLeft:F

    .line 2129
    int-to-float v2, v2

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectWidth:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfBottom:F

    .line 2130
    int-to-float v0, v0

    iget v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRectHeight:F

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_VfRight:F

    goto/16 :goto_2

    :cond_3
    move v0, v1

    move v2, v1

    goto/16 :goto_1
.end method

.method private showAimingHintToast()V
    .locals 2

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "showAimingHintToast()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->showBubbleToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AimingToastHandle:Lcom/htc/camera/Handle;

    .line 2246
    :cond_0
    return-void
.end method

.method private showArrows()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2154
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    .line 2155
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_TopArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    .line 2156
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    .line 2157
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BottomArrow:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    .line 2158
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2159
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_TopArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2160
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2161
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BottomArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 2162
    return-void
.end method

.method private showCancelButton(ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2200
    if-eqz p1, :cond_0

    .line 2203
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CancelBtn:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 2206
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ShutterBar:Landroid/view/View;

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusUI$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$13;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 2220
    :goto_0
    return-void

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CancelBtn:Lcom/htc/camera/widget/CaptureBarButton;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/CaptureBarButton;->setTag(Ljava/lang/Object;)V

    .line 2218
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ShutterBar:Landroid/view/View;

    invoke-virtual {p0, v0, v2, p2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private showHowToStartToast()V
    .locals 3

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_HowToStartToastHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 2257
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "showHowToStartToast()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    const v1, 0x7f080165

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/u;->showBubbleToast(II)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_HowToStartToastHandle:Lcom/htc/camera/Handle;

    .line 2262
    :cond_0
    return-void
.end method

.method private showMemoryErrorToast()V
    .locals 2

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ToastManager:Lcom/htc/camera/ak;

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "showMemoryErrorToast()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ToastManager:Lcom/htc/camera/ak;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 2274
    :cond_0
    return-void
.end method

.method private showReviewScreen(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2169
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "showReviewScreen() - visible="

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2171
    if-eqz p1, :cond_1

    .line 2174
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 2176
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    .line 2177
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v4, v4}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    .line 2193
    :cond_0
    :goto_0
    return-void

    .line 2182
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v3, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    .line 2183
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v3, v4}, Lcom/htc/camera/panorama/PanoramaPlusUI;->showUI(Landroid/view/View;ZZ)V

    .line 2186
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2187
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2190
    iput-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ReviewBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private showShutterHintToast()V
    .locals 2

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    if-eqz v0, :cond_0

    .line 2229
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->hideHintToast()V

    .line 2231
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "showShutterHintToast()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BubbleToastManager:Lcom/htc/camera/u;

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->showBubbleToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ShutterToastHandle:Lcom/htc/camera/Handle;

    .line 2234
    :cond_0
    return-void
.end method

.method private start2DPreviewFilter()V
    .locals 3

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-nez v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "start2DPreviewFilter() - CameraPreviewOverlay is not initialized"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :goto_0
    return-void

    .line 1178
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Is2DFilterStarted:Z

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "start2DPreviewFilter() - 2D filter is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "start2DPreviewFilter() - add 2D filter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    sget-object v1, Lcom/htc/camera/ui/ICameraPreviewOverlay;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DrawPreviewFilterHandler:Lcom/htc/camera/base/b;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Is2DFilterStarted:Z

    goto :goto_0
.end method

.method private startRenderer()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "startRenderer() - ViewFinder is not initialized"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RendererHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "startRenderer() - 3D Renderer is already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "startRenderer() - Add 3D renderer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewFilterRenderer:Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->addPreviewFilterRenderer(Lcom/htc/camera/IViewFinder3D$PreviewFilterRenderer;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RendererHandle:Lcom/htc/camera/Handle;

    .line 1034
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->refreshPreview()V

    goto :goto_0
.end method

.method private startSensor()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 1069
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsSensorStarted:Z

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "startSensor() - Sensor already started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "startSensor() - Register Accelerometer and Gyro listeners"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 1079
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    .line 1081
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AccTimestamp:J

    .line 1082
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AccTimestamp:J

    iput-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroTimestamp:J

    .line 1083
    iput-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpGyro:J

    .line 1084
    iput-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpAcc:J

    .line 1085
    iput-wide v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpDeviceRotation:J

    .line 1088
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 1090
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "startSensor() - Acc: "

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AccelerometerListener:Landroid/hardware/SensorEventListener;

    const-string v3, ", Gyro: "

    iget-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1091
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AccelerometerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1092
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1098
    :goto_1
    iput-boolean v6, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsSensorStarted:Z

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "startSensor() - No sensor manager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stop2DPreviewFilter()V
    .locals 3

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stop2DPreviewFilter() - CameraPreviewOverlay is not initialized"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :goto_0
    return-void

    .line 1202
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Is2DFilterStarted:Z

    if-nez v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stop2DPreviewFilter() - 2D filter is already stopped"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stop2DPreviewFilter() - remove 2D filter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    sget-object v1, Lcom/htc/camera/ui/ICameraPreviewOverlay;->EVENT_DRAW_OVERLAY:Lcom/htc/camera/base/EventKey;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DrawPreviewFilterHandler:Lcom/htc/camera/base/b;

    invoke-interface {v0, v1, v2}, Lcom/htc/camera/ui/ICameraPreviewOverlay;->removeEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 1213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Is2DFilterStarted:Z

    goto :goto_0
.end method

.method private stopCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 691
    invoke-direct {p0, v1, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture(ZZ)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture(ZZ)V

    goto :goto_0
.end method

.method private stopCapture(ZZ)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1289
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusUI$PanoramaPlusUIState:[I

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1326
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture() - Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :goto_0
    return-void

    .line 1296
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const/16 v0, 0x2724

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    .line 1300
    const/16 v0, 0x272e

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    .line 1303
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCaptureTimer()V

    .line 1305
    if-nez p2, :cond_0

    .line 1307
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopRenderer()V

    .line 1308
    const/16 v0, 0x2757

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendAsyncMessage(I)Z

    .line 1309
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stop2DPreviewFilter()V

    .line 1319
    :cond_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Stopping:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->changeUIStateTo(Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;)V

    .line 1321
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    const/16 v2, 0x2714

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 1289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopCaptureTimer()V
    .locals 2

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stopCaptureTimer() - Stop capture timer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const/16 v0, 0x2729

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    .line 2585
    return-void
.end method

.method private stopRenderer()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stopRenderer() - ViewFinder is not initialized"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RendererHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stopRenderer() - 3D Renderer is already destroyed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stopRenderer() - Remove 3D renderer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ViewFinder:Lcom/htc/camera/IViewFinder3D;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RendererHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IViewFinder3D;->removePreviewFilterRenderer(Lcom/htc/camera/Handle;)V

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_RendererHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private stopSensor()V
    .locals 2

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsSensorStarted:Z

    if-nez v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stopSensor() - Snesor already stopped"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "stopSensor() - unregister Accelerometer and Gyro listeners"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_AccelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1118
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_SensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1125
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsSensorStarted:Z

    goto :goto_0
.end method

.method private unlockRotation()V
    .locals 2

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_0

    .line 2514
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - NO UIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    :goto_0
    return-void

    .line 2518
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 2520
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - No locked rotation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2524
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Unlock rotation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 2528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private updateCurrentAimedFrame()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1962
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    if-nez v2, :cond_1

    .line 2003
    :cond_0
    :goto_0
    return v0

    .line 1965
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v5, v2

    move v4, v0

    .line 1966
    :goto_1
    if-ge v4, v5, :cond_0

    .line 1968
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v2, v2, v4

    array-length v6, v2

    move v3, v0

    .line 1969
    :goto_2
    if-ge v3, v6, :cond_6

    .line 1972
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->elevation:F

    iget-object v7, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v7, v7, v4

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/camera/panorama/PanoramaFrame;->elevationBottom:I

    int-to-float v7, v7

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->elevation:F

    iget-object v7, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v7, v7, v4

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/camera/panorama/PanoramaFrame;->elevationTop:I

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_7

    .line 1975
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v2, v2, v4

    aget-object v2, v2, v3

    iget v2, v2, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    iget-object v7, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v7, v7, v4

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    if-le v2, v7, :cond_2

    .line 1977
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    iget-object v7, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v7, v7, v4

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    int-to-float v7, v7

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    iget-object v7, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v7, v7, v4

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_7

    move v2, v1

    .line 1990
    :goto_3
    if-eqz v2, :cond_5

    .line 1992
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentAimedFrame:Lcom/htc/camera/panorama/PanoramaFrame;

    iget-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v5, v5, v4

    aget-object v5, v5, v3

    if-eq v2, v5, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v0, v0, v4

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentAimedFrame:Lcom/htc/camera/panorama/PanoramaFrame;

    move v0, v1

    .line 1997
    goto :goto_0

    .line 1982
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    iget-object v7, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v7, v7, v4

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    int-to-float v7, v7

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    const/high16 v7, 0x43b40000    # 360.0f

    cmpg-float v2, v2, v7

    if-ltz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    iget-object v7, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v7, v7, v4

    aget-object v7, v7, v3

    iget v7, v7, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_7

    :cond_4
    move v2, v1

    .line 1986
    goto :goto_3

    .line 1969
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 1966
    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_7
    move v2, v0

    goto :goto_3
.end method

.method private updateCurrentDeviceOrientation(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2399
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    if-nez v0, :cond_1

    .line 2401
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "updateCurrentDeviceOrientation() - NO UIRotationManager"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIRotationManager:Lcom/htc/camera/IUIRotationManager;

    invoke-virtual {v0}, Lcom/htc/camera/IUIRotationManager;->getAvailableDeviceOrientation()I

    move-result v0

    .line 2407
    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    .line 2409
    iget v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 2427
    sget v1, Lcom/htc/camera/panorama/PanoramaPlusUI;->DEVICE_ORIENTATION_PORTRAIT:I

    if-lt v0, v1, :cond_3

    sget v1, Lcom/htc/camera/panorama/PanoramaPlusUI;->DEVICE_ORIENTATION_PORTRAIT:I

    add-int/lit16 v1, v1, 0xb4

    if-ge v0, v1, :cond_3

    move v3, v8

    .line 2439
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 2440
    invoke-direct {p0, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->applyDeviceOrientation(I)V

    goto :goto_0

    .line 2412
    :pswitch_0
    sget v1, Lcom/htc/camera/panorama/PanoramaPlusUI;->DEVICE_ORIENTATION_PORTRAIT:I

    add-int/lit8 v1, v1, 0x14

    if-le v0, v1, :cond_2

    sget v1, Lcom/htc/camera/panorama/PanoramaPlusUI;->DEVICE_ORIENTATION_PORTRAIT:I

    add-int/lit16 v1, v1, 0xa0

    if-ge v0, v1, :cond_2

    move v3, v8

    .line 2414
    goto :goto_1

    .line 2419
    :pswitch_1
    sget v1, Lcom/htc/camera/panorama/PanoramaPlusUI;->DEVICE_ORIENTATION_PORTRAIT:I

    add-int/lit16 v1, v1, 0x154

    rem-int/lit16 v1, v1, 0x168

    if-ge v0, v1, :cond_2

    sget v1, Lcom/htc/camera/panorama/PanoramaPlusUI;->DEVICE_ORIENTATION_PORTRAIT:I

    add-int/lit16 v1, v1, 0xc8

    if-le v0, v1, :cond_2

    move v3, v4

    .line 2422
    goto :goto_1

    :cond_3
    move v3, v4

    .line 2431
    goto :goto_1

    .line 2443
    :cond_4
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NextDeviceOrientation:I

    if-eq v3, v0, :cond_0

    .line 2445
    const/16 v2, 0x2734

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 2446
    iput v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NextDeviceOrientation:I

    goto :goto_0

    .line 2409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNavigationBitmap()V
    .locals 25

    .prologue
    .line 1814
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1817
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    .line 1818
    const/4 v7, 0x0

    .line 1819
    const v9, 0x47c35000    # 100000.0f

    .line 1820
    const/4 v6, 0x0

    .line 1821
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v14, v5, [Z

    .line 1822
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v5, v10

    .line 1825
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v15, v5

    .line 1826
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectHeight:F

    int-to-float v11, v15

    div-float v16, v5, v11

    .line 1827
    const/4 v5, 0x0

    move v13, v5

    move v5, v6

    :goto_0
    if-ge v13, v15, :cond_a

    .line 1829
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v6, v6, v13

    array-length v6, v6

    .line 1830
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    int-to-float v12, v6

    div-float v12, v11, v12

    .line 1832
    cmpg-float v11, v12, v9

    if-gez v11, :cond_13

    move v11, v12

    .line 1835
    :goto_1
    if-le v6, v5, :cond_0

    move v5, v6

    .line 1838
    :cond_0
    const/4 v9, 0x0

    move/from16 v24, v9

    move v9, v7

    move v7, v10

    move/from16 v10, v24

    :goto_2
    if-ge v10, v6, :cond_9

    .line 1840
    new-instance v17, Landroid/graphics/Rect;

    int-to-float v0, v10

    move/from16 v18, v0

    mul-float v18, v18, v12

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    int-to-float v0, v13

    move/from16 v19, v0

    mul-float v19, v19, v16

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v10, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    add-int/lit8 v21, v13, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    aget-object v18, v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/camera/panorama/PanoramaFrameState;->Captured:Lcom/htc/camera/panorama/PanoramaFrameState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    aget-object v18, v18, v10

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/camera/panorama/PanoramaFrame;->isFirstFrame:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1846
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    .line 1849
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v18, v8

    if-gez v18, :cond_2

    .line 1850
    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    .line 1851
    :cond_2
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v18, v9

    if-lez v18, :cond_3

    .line 1852
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    .line 1855
    :cond_3
    const/16 v18, 0x1

    aput-boolean v18, v14, v13

    .line 1856
    add-int/lit8 v18, v13, 0x1

    const/16 v19, 0x1

    aput-boolean v19, v14, v18

    .line 1859
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->paintReset()V

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCapturedColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1865
    if-nez v10, :cond_6

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1887
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    aget-object v18, v18, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentAimedFrame:Lcom/htc/camera/panorama/PanoramaFrame;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 1890
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->paintReset()V

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviHoverColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1838
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1867
    :cond_6
    add-int/lit8 v18, v6, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_7

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1870
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1873
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FramesByPosition:[[Lcom/htc/camera/panorama/PanoramaFrame;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    aget-object v18, v18, v10

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/camera/panorama/PanoramaFrameState;->ReadyToCapture:Lcom/htc/camera/panorama/PanoramaFrameState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1876
    const/16 v18, 0x1

    aput-boolean v18, v14, v13

    .line 1877
    add-int/lit8 v18, v13, 0x1

    const/16 v19, 0x1

    aput-boolean v19, v14, v18

    goto/16 :goto_3

    .line 1827
    :cond_9
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    move v10, v7

    move v7, v9

    move v9, v11

    goto/16 :goto_0

    .line 1901
    :cond_a
    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v5, v9

    sub-float v6, v10, v5

    .line 1902
    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v5, v9

    add-float/2addr v5, v10

    .line 1904
    cmpl-float v10, v8, v6

    if-lez v10, :cond_b

    move v8, v6

    .line 1906
    :cond_b
    cmpg-float v10, v7, v5

    if-gez v10, :cond_c

    move v7, v5

    .line 1910
    :cond_c
    :goto_4
    cmpl-float v10, v6, v8

    if-lez v10, :cond_d

    sub-float v10, v6, v8

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_d

    .line 1912
    sub-float/2addr v6, v9

    goto :goto_4

    .line 1914
    :cond_d
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 1915
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_e

    .line 1916
    const/4 v6, 0x0

    .line 1919
    :cond_e
    :goto_5
    cmpg-float v8, v5, v7

    if-gez v8, :cond_f

    sub-float v8, v7, v5

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_f

    .line 1921
    add-float/2addr v5, v9

    goto :goto_5

    .line 1923
    :cond_f
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v8, v5

    .line 1924
    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    cmpl-float v5, v8, v5

    if-lez v5, :cond_10

    .line 1925
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviRectWidth:F

    .line 1928
    :cond_10
    const/4 v5, 0x0

    move v11, v5

    :goto_6
    array-length v5, v14

    if-ge v11, v5, :cond_12

    .line 1930
    aget-boolean v5, v14, v11

    if-eqz v5, :cond_11

    .line 1933
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->paintReset()V

    .line 1934
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviLineColor:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1935
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1936
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NaviCanvas:Landroid/graphics/Canvas;

    int-to-float v7, v11

    mul-float v7, v7, v16

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v7, v9

    int-to-float v9, v11

    mul-float v9, v9, v16

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1928
    :cond_11
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto :goto_6

    .line 1941
    :cond_12
    return-void

    :cond_13
    move v11, v9

    goto/16 :goto_1
.end method


# virtual methods
.method public enter(I)V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->enter(IZ)V

    .line 497
    return-void
.end method

.method public exit(I)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 589
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Not enter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;

    const-string v1, "exit("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->isValidHandle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    .line 602
    const/4 v0, 0x1

    .line 603
    :goto_1
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-nez v1, :cond_9

    .line 604
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 610
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GLFrameRateRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GLFrameRateRef:Lcom/htc/camera/CloseableHandleReference;

    .line 613
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture()V

    .line 616
    const/16 v0, 0x2734

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    .line 617
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->unlockRotation()V

    .line 620
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 621
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NativeEngine:J

    .line 622
    iput v6, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentDeviceOrientation:I

    .line 623
    iput v6, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_NextDeviceOrientation:I

    .line 624
    iput-boolean v4, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_IsControllerOrientationReady:Z

    .line 627
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 629
    iput-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CurrentHandle:Lcom/htc/camera/Handle;

    .line 630
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Controller:Lcom/htc/camera/panorama/PanoramaPlusController;

    const/16 v2, 0x2713

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 634
    :cond_3
    const/16 v0, 0x2724

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    .line 636
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_4

    .line 641
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v1, v2}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 642
    iput-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 646
    :cond_4
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->enableSelfTimer()V

    .line 649
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_5

    .line 651
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->enableCapture(Lcom/htc/camera/Handle;)V

    .line 652
    iput-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    .line 656
    :cond_5
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->unlockZoom()V

    .line 659
    const/16 v1, 0x2725

    invoke-virtual {p0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->removeMessages(I)V

    .line 660
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->hideHowToStartToast()V

    .line 663
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBarHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_6

    .line 664
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBarHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/ICaptureBar;->restoreCaptureBarVisibility(Lcom/htc/camera/Handle;)V

    .line 665
    :cond_6
    iput-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CaptureBarHandle:Lcom/htc/camera/Handle;

    .line 668
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v1, :cond_7

    .line 669
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_ObjectTrackerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/IObjectTracker;->enableObjectDetection(Lcom/htc/camera/Handle;)V

    .line 672
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_8

    .line 674
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->restoreFastShotToShot(Lcom/htc/camera/Handle;)V

    .line 675
    iput-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableFastShotToShotHandle:Lcom/htc/camera/Handle;

    .line 679
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_BaseView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FullScreenBaseView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 606
    :cond_9
    const/16 v0, 0x2742

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto/16 :goto_2

    :cond_a
    move v0, v4

    goto/16 :goto_1
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 703
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 717
    :goto_0
    return-void

    .line 706
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->readSensorCalibrationData()V

    goto :goto_0

    .line 710
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->startSensor()V

    goto :goto_0

    .line 714
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopSensor()V

    goto :goto_0

    .line 703
    :pswitch_data_0
    .packed-switch 0x2756
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 725
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 817
    invoke-super {p0, p1}, Lcom/htc/camera/panorama/IPanoramaPlusController;->handleMessage(Landroid/os/Message;)V

    .line 820
    :goto_0
    return-void

    .line 728
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onCaptureCompleted()V

    goto :goto_0

    .line 732
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/CaptureHandle;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onCaptureStarted(Lcom/htc/camera/CaptureHandle;)V

    goto :goto_0

    .line 736
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onCaptureStopped(Z)V

    goto :goto_0

    .line 740
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    .line 741
    aget v1, v0, v1

    float-to-double v1, v1

    aget v3, v0, v3

    float-to-double v3, v3

    const/4 v5, 0x2

    aget v0, v0, v5

    float-to-double v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onDeviceRotationChanged(DDD)V

    goto :goto_0

    .line 745
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onFrameCaptured(I)V

    goto :goto_0

    .line 749
    :sswitch_5
    invoke-direct {p0, v3, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture(ZZ)V

    goto :goto_0

    .line 753
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onReviewImageCreated(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 757
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->handleCaptureError(I)V

    goto :goto_0

    .line 761
    :sswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/panorama/PanoramaFrameState;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onFrameStateChanged(ILcom/htc/camera/panorama/PanoramaFrameState;)V

    goto :goto_0

    .line 765
    :sswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    check-cast v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->setupFrameInfos(I[[Lcom/htc/camera/panorama/PanoramaFrame;)V

    goto :goto_0

    .line 769
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onNativeEngineChanged(J)V

    goto :goto_0

    .line 773
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onEnginePrepared(Lcom/htc/camera/Handle;)V

    goto :goto_0

    .line 777
    :sswitch_c
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onControllerOrientationReady()V

    goto :goto_0

    .line 781
    :sswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->applyDeviceOrientation(I)V

    goto :goto_0

    .line 785
    :sswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->onStitchingProgress(I)V

    goto :goto_0

    .line 789
    :sswitch_f
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->resetSaveScreen()V

    goto/16 :goto_0

    .line 793
    :sswitch_10
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->hideHowToStartToast()V

    goto/16 :goto_0

    .line 797
    :sswitch_11
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopCapture()V

    goto/16 :goto_0

    .line 801
    :sswitch_12
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 802
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->enableCapture(Lcom/htc/camera/Handle;)V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_DisableCaptureHandle:Lcom/htc/camera/Handle;

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "PanoramaPlus UI"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->takePicture(Ljava/lang/String;)Z

    .line 809
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->changeUIStateTo(Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;)V

    goto/16 :goto_0

    .line 813
    :sswitch_13
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CloseableHandleReference;->closeHandle(I)Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_Force3DPreviewRenderingHandleRef:Lcom/htc/camera/CloseableHandleReference;

    goto/16 :goto_0

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_9
        0x2712 -> :sswitch_1
        0x2713 -> :sswitch_3
        0x2715 -> :sswitch_4
        0x2716 -> :sswitch_8
        0x2717 -> :sswitch_2
        0x271b -> :sswitch_0
        0x271c -> :sswitch_5
        0x271e -> :sswitch_6
        0x2720 -> :sswitch_a
        0x2721 -> :sswitch_b
        0x2722 -> :sswitch_e
        0x2724 -> :sswitch_f
        0x2725 -> :sswitch_10
        0x2729 -> :sswitch_11
        0x272e -> :sswitch_12
        0x2733 -> :sswitch_c
        0x2734 -> :sswitch_d
        0x2738 -> :sswitch_7
        0x2742 -> :sswitch_13
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 829
    invoke-super {p0}, Lcom/htc/camera/panorama/IPanoramaPlusController;->initializeOverride()V

    .line 831
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 858
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusUI$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$5;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 873
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->keyDownEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusUI$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$6;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 887
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusUI$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$7;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 902
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusUI$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$8;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 939
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusUI$9;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI$9;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 957
    const-class v0, Lcom/htc/camera/ICameraMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 958
    return-void
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 2

    .prologue
    .line 983
    instance-of v0, p1, Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 985
    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 986
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 988
    :cond_0
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 1007
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/camera/panorama/IPanoramaPlusController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 1008
    return-void

    .line 990
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/ICameraMenuUI;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 992
    check-cast v0, Lcom/htc/camera/ICameraMenuUI;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    .line 993
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusUI;->m_CameraMenuUI:Lcom/htc/camera/ICameraMenuUI;

    iget-object v0, v0, Lcom/htc/camera/ICameraMenuUI;->cameraMenuState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/panorama/PanoramaPlusUI$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/panorama/PanoramaPlusUI$10;-><init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1005
    const-class v0, Lcom/htc/camera/ICameraMenuUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->stopMonitoringComponent(Ljava/lang/Class;)V

    goto :goto_0
.end method
