.class final Lcom/htc/camera/zoe/ZoeController;
.super Lcom/htc/camera/zoe/IZoeController;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/ad;
.implements Lcom/htc/camera/z;


# static fields
.field static final LONG_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

.field static final SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

.field private static final ZOENAMING:Lcom/htc/camera/io/DCFInfo;


# instance fields
.field private m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

.field private m_AudioManager:Lcom/htc/camera/IAudioManager;

.field private m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

.field private m_CAFDisabledHandle:Lcom/htc/camera/Handle;

.field private m_CalledPreStopZoeRecording:Z

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

.field private final m_CaptureSemaphore:Ljava/util/concurrent/Semaphore;

.field private m_CaptureStartTime:J

.field private m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

.field private m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field private m_ExpectedPictureCount:I

.field private m_FileCounter:Lcom/htc/camera/io/FileCounter;

.field private m_HasPendingShowKillProcessToastMsg:Z

.field private m_HasPendingShowPrepareFailToastMsg:Z

.field private m_IsCaptureRotationChanged:Z

.field private m_IsLastImageReceived:Z

.field private m_IsRecording:Z

.field private m_IsShutterSoundPlayed:Z

.field private m_IsStoppingRecording:Z

.field private m_JpegIndex:I

.field private m_JpegReceivingOrder:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

.field private m_LatestFocusAreas:[Landroid/graphics/RectF;

.field private m_MediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

.field private m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

.field private m_OccupiedAudioResourceProcessType:Lcom/htc/camera/IAudioManager$ProcessType;

.field private m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

.field private m_PhotoResolution:Lcom/htc/camera/Resolution;

.field private m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;

.field private m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

.field private m_Recorder:Landroid/media/MediaRecorder;

.field private m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

.field private m_RecordingSafetySpace:J

.field private final m_RecordingTimer:Lcom/htc/camera/StopWatch;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_SceneController:Lcom/htc/camera/effect/ac;

.field private m_ShutterSoundHandle:Lcom/htc/camera/Handle;

.field private m_SingleShotJpegRawData:[B

.field private m_T0JpegIndex:I

.field private m_T0JpegRawData:[B

.field private m_ThumbDisableHandle:Lcom/htc/camera/Handle;

.field private m_ThumbImageManager:Lcom/htc/camera/aj;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;

.field private m_UI:Lcom/htc/camera/zoe/ZoeUI;

.field private m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

.field private m_VideoResolution:Lcom/htc/camera/Resolution;

.field private m_VideoResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private final m_VideoSnapshotCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_VideoSnapshotCallbackTimerHandle:Lcom/htc/camera/Handle;

.field private m_VideoSnapshotFocusHandle:Lcom/htc/camera/Handle;

.field private m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

.field private m_location:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 128
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    .line 129
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/zoe/ZoeController;->LONG_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    .line 155
    new-instance v0, Lcom/htc/camera/io/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "ZOE_"

    const-string v3, "zoe_counter_file"

    const-string v4, "zoe_counter_filefolder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    .line 163
    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->registerDCFInfo(Lcom/htc/camera/io/DCFInfo;)V

    .line 164
    return-void
.end method

.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 322
    const-string v0, "Zoe Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/htc/camera/zoe/IZoeController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 174
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 175
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureSemaphore:Ljava/util/concurrent/Semaphore;

    .line 177
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Unavailable:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    .line 192
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->SingleShotFirst:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegReceivingOrder:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    .line 196
    sget-object v0, Lcom/htc/camera/CloseableHandleReference;->EMPTY:Lcom/htc/camera/CloseableHandleReference;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 206
    new-instance v0, Lcom/htc/camera/StopWatch;

    invoke-direct {v0}, Lcom/htc/camera/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    .line 225
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/zoe/ZoeController$1;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->finishVideoSnapshot()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->loadShutterSound()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeController$CaptureMode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/burst/IBurstCamera;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/zoe/ZoeController;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->changeExpectedPictureCount(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->setupParamsBeforeStartingPreview(Lcom/htc/camera/CameraController;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/camera/zoe/ZoeController;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsCaptureRotationChanged:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/camera/zoe/ZoeController;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsCaptureRotationChanged:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/zoe/ZoeController;Z)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->prepareMediaRecorder(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/zoe/ZoeController;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/camera/zoe/ZoeController;)Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/zoe/ZoeController;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->exitZoeMode(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeUI;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/io/FileCounter;)Lcom/htc/camera/io/FileCounter;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotFocusHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotFocusHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotTakePicture()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/camera/zoe/ZoeController;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->onZoeCameraStopped()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/camera/zoe/ZoeController;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsShutterSoundPlayed:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/htc/camera/zoe/ZoeController;Z)Z
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsShutterSoundPlayed:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/io/FileCounter;)Lcom/htc/camera/io/FileCounter;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/StopWatch;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;ILcom/htc/camera/Duration;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/camera/zoe/ZoeController;I[B)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/zoe/ZoeController;->onJpegDataReceived(I[B)V

    return-void
.end method

.method static synthetic access$4700(Lcom/htc/camera/zoe/ZoeController;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->onJpegDataTimeout(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/camera/zoe/ZoeController;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopCapturing()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/zoe/ZoeController;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/camera/zoe/ZoeController;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/zoe/ZoeController$CaptureState;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    return-object v0
.end method

.method private cancelTakingPicture()V
    .locals 3

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeController;->cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 339
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "cancelTakingPicture() - Fail to cancel taking picture"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private changeExpectedPictureCount(I)V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "changeExpectedPictureCount("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    iput p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_ExpectedPictureCount:I

    .line 399
    return-void
.end method

.method private checkRecordingLimitation()V
    .locals 8

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "checkRecordingLimitation() - No IRecordingLimitController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingSafetySpace:J

    add-long/2addr v0, v2

    .line 415
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/camera/IRecordingLimitController;->getRemainingRecordingDuration(JI)Lcom/htc/camera/Duration;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    .line 419
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 421
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "checkRecordingLimitation() - Space limit reached, stop capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopCapturing()V

    goto :goto_0

    .line 428
    :cond_1
    const-wide/16 v3, 0xa

    cmp-long v3, v0, v3

    if-gtz v3, :cond_2

    .line 429
    const-wide/16 v0, 0x64

    move-wide v6, v0

    .line 434
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "checkRecordingLimitation() - Remaining recording duration is "

    const-string v3, ", check limitation "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "ms later"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    const/16 v0, 0x2724

    invoke-virtual {p0, p0, v0, v6, v7}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0

    .line 430
    :cond_2
    const-wide/16 v3, 0xf

    cmp-long v3, v0, v3

    if-gtz v3, :cond_3

    .line 431
    const-wide/16 v0, 0x1f4

    move-wide v6, v0

    goto :goto_1

    .line 433
    :cond_3
    const-wide/16 v3, 0x5

    div-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    move-wide v6, v0

    goto :goto_1
.end method

.method private completeCapture()V
    .locals 7

    .prologue
    const/16 v2, 0x2714

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 444
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_0

    .line 446
    sget-object v1, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 452
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeCapture() - Cannot complete capture, camera state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v2, v2, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    return-void

    .line 456
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture() - Not capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture() - Complete capture after recording stop"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture() - Save last photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->isLastMedia:Z

    .line 474
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 475
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    .line 479
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_a

    .line 485
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v4, "completeCapture() - Change capture mode to Zoe"

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "capture-mode-values"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 487
    const-string v1, "zoe"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 490
    :goto_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 497
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CAFDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CAFDisabledHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/IAutoFocusController;->enableContinuousAutoFocus(Lcom/htc/camera/Handle;)V

    .line 500
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_CAFDisabledHandle:Lcom/htc/camera/Handle;

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 507
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    if-eqz v0, :cond_6

    .line 509
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeCapture() - Restore flash mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 511
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 515
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 519
    const/16 v0, 0x2724

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 522
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 523
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;

    .line 524
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 525
    invoke-direct {p0, v3}, Lcom/htc/camera/zoe/ZoeController;->prepareMediaRecorder(Z)Z

    .line 528
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    if-eqz v0, :cond_b

    .line 529
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 534
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbDisableHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_8

    .line 536
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbImageManager:Lcom/htc/camera/aj;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbDisableHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/aj;->enableAutoUpdate(Lcom/htc/camera/Handle;)V

    .line 537
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbDisableHandle:Lcom/htc/camera/Handle;

    .line 541
    :cond_8
    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 542
    invoke-virtual {p0, v2}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 545
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    .line 546
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 547
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Ready:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    .line 548
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 549
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 550
    iput-boolean v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsShutterSoundPlayed:Z

    .line 551
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->stop()V

    .line 552
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_SingleShotJpegRawData:[B

    .line 553
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegRawData:[B

    .line 554
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    .line 557
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture() - Release capture semaphore"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 489
    :cond_9
    const-string v1, "capture-mode"

    const-string v4, "zoe"

    invoke-virtual {v0, v1, v4}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 493
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture() - No camera controller to set capture mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 531
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "completeCapture() - No UI to notify"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private enterZoeMode(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x2716

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 593
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "enterZoeMode("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v0, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "enterZoeMode() - Zoe mode is already entered"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 672
    :goto_0
    return v0

    .line 601
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v3, :cond_1

    .line 603
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterZoeMode() - Current camera mode is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    invoke-virtual {p0, v0, v6}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move v0, v2

    .line 605
    goto :goto_0

    .line 607
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-eq v0, v3, :cond_2

    .line 609
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterZoeMode() - Current camera type is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    invoke-virtual {p0, v0, v6}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move v0, v2

    .line 611
    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->stopNotesRecording()V

    .line 618
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-nez v0, :cond_3

    .line 619
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-nez v0, :cond_4

    .line 621
    const-class v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 622
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-nez v0, :cond_5

    .line 623
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 626
    :cond_5
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/zoe/ZoeController$2;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 636
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_7

    .line 638
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "enterZoeMode() - Clear effect and scene"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-eqz v0, :cond_6

    .line 643
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_EffectController:Lcom/htc/camera/effect/aa;

    const-string v3, "none"

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 644
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v7, v2}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;Z)V

    .line 648
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_7

    .line 649
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v3, "auto"

    invoke-virtual {v0, v3, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 653
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 661
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 662
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    .line 668
    :goto_1
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Ready:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    .line 669
    iput-boolean v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CalledPreStopZoeRecording:Z

    move v0, v1

    .line 672
    goto/16 :goto_0

    .line 664
    :cond_8
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->invalidateCameraParameters()V

    goto :goto_1
.end method

.method private exitZoeMode(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 760
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "exitZoeMode("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 763
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "exitZoeMode() - Zoe mode is not entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Ready:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    if-eq v0, v1, :cond_2

    .line 769
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitZoeMode() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V

    .line 773
    iput-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 774
    iput-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;

    .line 777
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Unavailable:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    .line 778
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsCaptureRotationChanged:Z

    .line 779
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 783
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_3

    .line 785
    const-string v1, "capture-mode-values"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 786
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 789
    :goto_1
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 794
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_5

    .line 796
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolutionProviderHandle:Lcom/htc/camera/Handle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/ICaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 797
    iput-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolutionProviderHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 788
    :cond_4
    const-string v1, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 802
    :cond_5
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    goto/16 :goto_0
.end method

.method private finishVideoSnapshot()V
    .locals 3

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "finishVideoSnapshot() - Finish video snapshot"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    sget-object v1, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 840
    :goto_0
    return-void

    .line 819
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotCallbackTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotCallbackTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotCallbackTimerHandle:Lcom/htc/camera/Handle;

    .line 826
    :cond_0
    sget-object v1, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 834
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 830
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 826
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPhotoResolution(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Resolution;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 848
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PhotoResolution:Lcom/htc/camera/Resolution;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PhotoResolution:Lcom/htc/camera/Resolution;

    .line 874
    :goto_0
    return-object v0

    .line 852
    :cond_0
    if-nez p1, :cond_1

    .line 854
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object p1

    .line 855
    if-nez p1, :cond_1

    .line 857
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "getPhotoResolution() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/4 v0, 0x0

    goto :goto_0

    .line 863
    :cond_1
    const-string v0, "zoe-picture-size-values"

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->getSizeListCameraParameter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 866
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 867
    new-instance v0, Lcom/htc/camera/Resolution;

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    const-string v5, "ZOE_PHOTO"

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PhotoResolution:Lcom/htc/camera/Resolution;

    .line 868
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PhotoResolution:Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "getPhotoResolution() - Use default resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    sget-object v0, Lcom/htc/camera/Resolution;->PHOTO_16_9_2688x1520:Lcom/htc/camera/Resolution;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PhotoResolution:Lcom/htc/camera/Resolution;

    .line 874
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PhotoResolution:Lcom/htc/camera/Resolution;

    goto :goto_0
.end method

.method private getTotalZoePhotoFileSize(Lcom/htc/camera/CameraController;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 882
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->getPhotoResolution(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Resolution;

    move-result-object v2

    .line 883
    if-nez v2, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-wide v0

    .line 885
    :cond_1
    sget-object v3, Lcom/htc/camera/PictureQuality;->Super:Lcom/htc/camera/PictureQuality;

    invoke-virtual {v2, v3}, Lcom/htc/camera/Resolution;->getEncodedPictureSize(Lcom/htc/camera/PictureQuality;)J

    move-result-wide v2

    .line 886
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 888
    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    const-wide/16 v4, 0x5

    mul-long/2addr v0, v4

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method private getVideoBitRate(Lcom/htc/camera/CameraController;)J
    .locals 4

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->getVideoResolution(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 897
    if-nez v0, :cond_0

    .line 898
    const-wide/16 v0, 0x0

    .line 905
    :goto_0
    return-wide v0

    .line 899
    :cond_0
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    .line 901
    const/16 v1, 0x780

    if-lt v0, v1, :cond_1

    .line 902
    const-wide/32 v0, 0x1312d00

    .line 905
    :goto_1
    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    goto :goto_0

    .line 904
    :cond_1
    const-wide/32 v0, 0xb71b00

    goto :goto_1
.end method

.method private getVideoResolution(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Resolution;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 914
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolution:Lcom/htc/camera/Resolution;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolution:Lcom/htc/camera/Resolution;

    .line 965
    :goto_0
    return-object v0

    .line 918
    :cond_0
    if-nez p1, :cond_1

    .line 920
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object p1

    .line 921
    if-nez p1, :cond_1

    .line 923
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "getVideoResolution() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const/4 v0, 0x0

    goto :goto_0

    .line 929
    :cond_1
    const-string v0, "zoe-preview-size-values"

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->getSizeListCameraParameter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 932
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 934
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v4, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 935
    sget-object v0, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    iget v5, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    move v1, v3

    .line 936
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 938
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 939
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v4, :cond_2

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    if-eq v0, v5, :cond_3

    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x440

    if-eq v0, v6, :cond_3

    :cond_2
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v6, 0x2d0

    if-ne v0, v6, :cond_6

    .line 941
    :cond_3
    new-instance v0, Lcom/htc/camera/Resolution;

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    const-string v5, "ZOE_VIDEO"

    sget-object v6, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolution:Lcom/htc/camera/Resolution;

    .line 945
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolution:Lcom/htc/camera/Resolution;

    if-nez v0, :cond_5

    .line 947
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "getVideoResolution() - No suitable video resolution, use largest resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 949
    new-instance v0, Lcom/htc/camera/Resolution;

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    const-string v5, "ZOE_VIDEO"

    sget-object v6, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolution:Lcom/htc/camera/Resolution;

    .line 965
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolution:Lcom/htc/camera/Resolution;

    goto :goto_0

    .line 936
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 954
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "getVideoResolution() - Use default resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$ScreenResolution:[I

    sget-object v1, Lcom/htc/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/htc/camera/ScreenResolution;

    invoke-virtual {v1}, Lcom/htc/camera/ScreenResolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 961
    sget-object v0, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolution:Lcom/htc/camera/Resolution;

    goto :goto_2

    .line 958
    :pswitch_0
    sget-object v0, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoResolution:Lcom/htc/camera/Resolution;

    goto :goto_2

    .line 955
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private loadShutterSound()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 1335
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isKDDI()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070018

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    .line 1339
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "loadShutterSound() - Cannot load shutter sound"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :cond_0
    return-void

    .line 1338
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    const v1, 0x7f070017

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private onJpegDataReceived(I[B)V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 1349
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "onJpegDataReceived("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1352
    const/16 v0, 0x271c

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 1355
    if-eqz p2, :cond_4

    array-length v0, p2

    if-lez v0, :cond_4

    move v0, v1

    .line 1356
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v12

    .line 1357
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    if-eqz v2, :cond_2

    .line 1359
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ExpectedPictureCount:I

    if-lt p1, v2, :cond_1

    .line 1360
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    iput-boolean v1, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->isLastMedia:Z

    .line 1361
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    invoke-virtual {v12, v2}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1362
    iput-object v11, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    .line 1366
    :cond_2
    iget v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ExpectedPictureCount:I

    if-lt p1, v2, :cond_5

    .line 1368
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - Unexpected JPEG call-back, drop picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v9

    .line 1355
    goto :goto_0

    .line 1374
    :cond_5
    iget v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    if-ltz v2, :cond_7

    .line 1375
    iget v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    if-ne v2, p1, :cond_6

    move v2, v1

    :goto_2
    move v8, v2

    .line 1386
    :goto_3
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v3, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v2, v3, :cond_9

    move v3, v1

    .line 1388
    :goto_4
    if-eqz v3, :cond_a

    .line 1390
    sget-object v2, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$JpegReceivingOrder:[I

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegReceivingOrder:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    invoke-virtual {v4}, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1399
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown JPEG receiving order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v2, v9

    .line 1375
    goto :goto_2

    .line 1376
    :cond_7
    const/4 v2, 0x5

    if-ge p1, v2, :cond_8

    move v8, v9

    .line 1377
    goto :goto_3

    .line 1380
    :cond_8
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "onJpegDataReceived() - No T0 index specified, set this photo as T0 picture"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iput p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    move v8, v1

    goto :goto_3

    :cond_9
    move v3, v9

    .line 1386
    goto :goto_4

    :pswitch_0
    move v10, v1

    .line 1407
    :goto_5
    sget-object v2, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$JpegReceivingOrder:[I

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegReceivingOrder:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    invoke-virtual {v4}, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    .line 1416
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown JPEG receiving order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v10, v8

    .line 1397
    goto :goto_5

    .line 1403
    :cond_a
    iget v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ExpectedPictureCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_b

    move v2, v1

    :goto_6
    move v10, v2

    goto :goto_5

    :cond_b
    move v2, v9

    goto :goto_6

    .line 1410
    :pswitch_2
    if-nez p1, :cond_18

    move v2, v1

    .line 1418
    :goto_7
    if-eqz v2, :cond_c

    .line 1419
    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController;->m_SingleShotJpegRawData:[B

    .line 1423
    :cond_c
    if-eqz v0, :cond_20

    .line 1425
    if-ltz p1, :cond_1f

    .line 1427
    if-nez v3, :cond_1c

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    if-eqz v0, :cond_1c

    .line 1430
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    if-nez v0, :cond_d

    .line 1432
    invoke-static {p2}, Lcom/htc/camera/imaging/ImageUtility;->getPixelSize([B)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    .line 1433
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    if-eqz v0, :cond_1a

    .line 1436
    invoke-static {p2}, Lcom/htc/camera/imaging/ImageUtility;->getJpegImageOrientation([B)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1449
    :goto_8
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - Picture size is "

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " x "

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    iget v4, v4, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_19

    .line 1453
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const-string v1, "ZPTW"

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    invoke-static {v0, v1, v2}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;I)V

    .line 1454
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const-string v1, "ZPTH"

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v1, v2}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1469
    :cond_d
    :goto_9
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegDataReceived() - ZOEcombine - setHtcParameter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1b

    .line 1473
    if-gtz p1, :cond_e

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegReceivingOrder:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->Sequential:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    if-ne v0, v1, :cond_10

    .line 1475
    :cond_e
    if-eqz v8, :cond_f

    iget v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_SingleShotJpegRawData:[B

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegReceivingOrder:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->SingleShotFirst:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    if-ne v0, v1, :cond_f

    .line 1476
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const-string v1, "ZJPG"

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_SingleShotJpegRawData:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_SingleShotJpegRawData:[B

    array-length v4, v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;[BIIZ)V

    .line 1477
    :cond_f
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const-string v1, "ZJPG"

    const/4 v3, 0x0

    array-length v4, p2

    const/4 v5, 0x1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;[BIIZ)V

    .line 1479
    :cond_10
    if-eqz v8, :cond_11

    .line 1481
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const-string v1, "ZCVR"

    invoke-static {v0, v1, p1}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;I)V

    .line 1482
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const-string v1, "ZSHT"

    invoke-static {v0, v1, p1}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1495
    :cond_11
    :goto_a
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegDataReceived() - ZOEcombine - setHtcData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    if-eqz v8, :cond_12

    .line 1519
    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegRawData:[B

    .line 1520
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v0, v1, :cond_12

    .line 1522
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - Save cover photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    add-int/lit8 v7, p1, 0x0

    move-object v1, p0

    move-object v2, v12

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[BLcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;IZ)V

    .line 1524
    sget-object v1, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    iput-object v1, v0, Lcom/htc/camera/io/SaveImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 1525
    iput-boolean v9, v0, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 1526
    invoke-virtual {v12, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1556
    :cond_12
    :goto_b
    iput-boolean v10, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsLastImageReceived:Z

    .line 1559
    if-eqz v10, :cond_13

    .line 1560
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - This is the last image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    :cond_13
    if-nez v10, :cond_14

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Canceling:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Stopping:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    if-ne v0, v1, :cond_15

    .line 1564
    :cond_14
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopPhotoCapture()V

    .line 1567
    :cond_15
    if-eqz v10, :cond_3

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v0, v1, :cond_3

    .line 1570
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    .line 1571
    :goto_c
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/htc/camera/zoe/ZoeController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0x2714

    invoke-virtual {p0, v1}, Lcom/htc/camera/zoe/ZoeController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1573
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "onJpegDataReceived() - Last picture, stop recording"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->preStopRecording()V

    .line 1579
    :cond_16
    if-eqz v0, :cond_17

    .line 1581
    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->deleteFile(Lcom/htc/camera/io/Path;)Z

    .line 1582
    sget-object v1, Lcom/htc/camera/io/FileFormat;->Jpeg:Lcom/htc/camera/io/FileFormat;

    iget-object v1, v1, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/io/Path;->changeExtension(Ljava/lang/String;)Lcom/htc/camera/io/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->deleteFile(Lcom/htc/camera/io/Path;)Z

    .line 1586
    :cond_17
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->completeCapture()V

    goto/16 :goto_1

    :cond_18
    move v2, v9

    .line 1410
    goto/16 :goto_7

    :pswitch_3
    move v2, v8

    .line 1414
    goto/16 :goto_7

    .line 1441
    :sswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    .line 1442
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    iput v2, v1, Lcom/htc/camera/imaging/Size;->height:I

    .line 1443
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_ActualPictureSize:Lcom/htc/camera/imaging/Size;

    iput v0, v1, Lcom/htc/camera/imaging/Size;->width:I

    goto/16 :goto_8

    .line 1456
    :catch_0
    move-exception v0

    .line 1458
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "onJpegDataReceived() - setHtcParameter HTC_METADATA_ZOE_PHOTO_WIDTH"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1462
    :cond_19
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - No recorder to write picture size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1465
    :cond_1a
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - Fail to get picture size"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1487
    :cond_1b
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "m_Recorder is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_a

    .line 1490
    :catch_1
    move-exception v0

    .line 1492
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "onJpegDataReceived() - setHtcParameter in wrong state"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1530
    :cond_1c
    if-eqz v3, :cond_1e

    .line 1532
    if-eqz v2, :cond_1d

    .line 1534
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - Save single-shot photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    new-instance v0, Lcom/htc/camera/io/SaveImageTask;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-direct {v0, v12, v1, p2}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 1536
    invoke-virtual {v12, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto/16 :goto_b

    .line 1539
    :cond_1d
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - Single shot, drop this picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1543
    :cond_1e
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - No video file path, save as normal image"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    new-instance v0, Lcom/htc/camera/io/SaveImageTask;

    invoke-direct {v0, v12, p2}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;[B)V

    .line 1545
    invoke-virtual {v12, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    goto/16 :goto_b

    .line 1549
    :cond_1f
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegDataReceived() - Drop this frame"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1553
    :cond_20
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "onJpegDataReceived() - No JPEG data"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v1

    .line 1554
    goto/16 :goto_b

    :cond_21
    move-object v0, v11

    .line 1570
    goto/16 :goto_c

    .line 1390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1407
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1436
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private onJpegDataTimeout(I)V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 1595
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegDataTimeout("

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

    .line 1598
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 1599
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    if-eqz v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->isLastMedia:Z

    .line 1602
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    .line 1607
    :cond_0
    iget v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegIndex:I

    if-ge v0, v3, :cond_1

    .line 1608
    iput v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegIndex:I

    .line 1609
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->completeCapture()V

    .line 1610
    return-void
.end method

.method private onRecordingStopped(JZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1633
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "onRecordingStopped("

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1636
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z

    if-nez v0, :cond_1

    .line 1638
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onRecordingStopped() - Recording is not started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v2, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v0, v2, :cond_3

    .line 1656
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    .line 1657
    iput-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    .line 1661
    :goto_2
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V

    .line 1664
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 1685
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v3, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v2, v3, :cond_2

    .line 1687
    new-instance v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V

    .line 1688
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iput-object v3, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1689
    iput-object v0, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->filePath:Lcom/htc/camera/io/Path;

    .line 1690
    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    iput-object v0, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 1691
    iput-wide p1, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->duration:J

    .line 1692
    iget-wide v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureStartTime:J

    iput-wide v3, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->takenDateTime:J

    .line 1693
    sget-object v0, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    iput-object v0, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->fileFormat:Lcom/htc/camera/io/FileFormat;

    .line 1694
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    iput-object v0, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->storageSlot:Lcom/htc/camera/io/StorageSlot;

    .line 1695
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_location:Landroid/location/Location;

    iput-object v0, v2, Lcom/htc/camera/zoe/ZoeController$SaveZoeVideoTask;->gpsLocation:Landroid/location/Location;

    .line 1696
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    if-eqz v0, :cond_4

    .line 1697
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    invoke-interface {v0, v2}, Lcom/htc/camera/io/IMediaFileWriter;->saveMedia(Lcom/htc/camera/io/SaveMediaTask;)Lcom/htc/camera/CloseableHandle;

    .line 1703
    :cond_2
    :goto_3
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_CalledPreStopZoeRecording:Z

    .line 1704
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z

    .line 1705
    iput-boolean v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsStoppingRecording:Z

    .line 1708
    if-eqz p3, :cond_0

    .line 1709
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->completeCapture()V

    goto :goto_0

    .line 1647
    :catch_0
    move-exception v0

    .line 1649
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "stopRecording() - Fail to reconnect camera"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1660
    goto :goto_2

    .line 1699
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording() - No IMediaFileWriter interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onZoeCameraStopped()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1726
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onZoeCameraStopped()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "onZoeCameraStopped() - Save last photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    iput-boolean v2, v0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;->isLastMedia:Z

    .line 1733
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PrevSaveImageTask:Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Stopping:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Canceling:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x2714

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1741
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->preStopRecording()V

    .line 1742
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->stopRecording(Z)V

    .line 1744
    :cond_2
    iput-boolean v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsLastImageReceived:Z

    .line 1747
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->completeCapture()V

    .line 1748
    return-void
.end method

.method private pauseRecording()V
    .locals 4

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2499
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "pauseRecording()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->b(Landroid/media/MediaRecorder;)V

    .line 2504
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2514
    :goto_0
    return-void

    .line 2506
    :catch_0
    move-exception v0

    .line 2508
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseRecording() - video recording paused fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2513
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "pauseRecording() - video recording is not in Started state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private preStopRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2522
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 2524
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "preStopRecording() - No recorder"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    :cond_0
    :goto_0
    return-void

    .line 2528
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CalledPreStopZoeRecording:Z

    if-eq v0, v3, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "preStopRecording()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2534
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopPhotoCapture()V

    .line 2538
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "preStopRecording() - MediaRecorder.preStopZoeRecording() - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;)V

    .line 2540
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "preStopRecording() - MediaRecorder.preStopZoeRecording() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2548
    :goto_1
    iput-boolean v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CalledPreStopZoeRecording:Z

    goto :goto_0

    .line 2542
    :catch_0
    move-exception v0

    .line 2544
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "preStopRecording() - Fail to stop recorder"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private prepareMediaRecorder(Z)Z
    .locals 14

    .prologue
    const/16 v2, 0x271a

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1755
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, ") - Start"

    invoke-static {v0, v1, v7, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1758
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v7, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v7}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1761
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1763
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder() - Zoe mode is not entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :cond_0
    :goto_0
    return v4

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1768
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder() - Media recorder is already prepared"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 1769
    goto :goto_0

    .line 1773
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v7

    .line 1774
    iget-object v0, v7, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/htc/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1776
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareMediaRecorder() - Storage slot \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1779
    :cond_3
    iget-object v0, v7, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/io/StorageState;->OK:Lcom/htc/camera/io/StorageState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1781
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareMediaRecorder() - Storage state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1786
    :cond_4
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v8

    .line 1787
    if-nez v8, :cond_5

    .line 1789
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder() - No camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1794
    :cond_5
    invoke-direct {p0, v8}, Lcom/htc/camera/zoe/ZoeController;->getVideoResolution(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Resolution;

    move-result-object v9

    .line 1795
    if-nez v9, :cond_6

    .line 1797
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder() - No video resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1802
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->checkOwnAudioResourceProcess()Lcom/htc/camera/IAudioManager$ProcessType;

    move-result-object v0

    .line 1803
    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->None:Lcom/htc/camera/IAudioManager$ProcessType;

    if-eq v0, v1, :cond_7

    .line 1805
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v1}, Lcom/htc/camera/IAudioManager;->forceReleaseAudioResource()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1807
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder() - Kill process which occupies audio resource"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    if-eqz v0, :cond_a

    .line 1809
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1834
    :cond_7
    :goto_1
    new-instance v3, Lcom/htc/camera/MediaRecorderParameters;

    invoke-direct {v3}, Lcom/htc/camera/MediaRecorderParameters;-><init>()V

    .line 1835
    invoke-virtual {v8}, Lcom/htc/camera/CameraController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setCamera(Landroid/hardware/Camera;)V

    .line 1839
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_8

    .line 1840
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V

    .line 1841
    :cond_8
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    .line 1844
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_9

    .line 1846
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=ON"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 1851
    :cond_9
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    .line 1852
    iget v1, v0, Lcom/htc/camera/CameraType;->orientation:I

    .line 1853
    iget-object v0, v7, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    add-int/2addr v0, v1

    .line 1854
    rem-int/lit16 v0, v0, 0x168

    .line 1855
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "prepareMediaRecorder() - Orientation = "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1856
    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOrientationHint(I)V

    .line 1859
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 1860
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1863
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1865
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "prepareMediaRecorder() - Preview resource is unavailable"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V

    .line 1867
    monitor-exit v1

    goto/16 :goto_0

    .line 1869
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2023
    :catch_0
    move-exception v0

    move v6, v4

    .line 2025
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "prepareMediaRecorder() - Fail to prepare media recorder, finish Camera directly"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2026
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V

    .line 2027
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2032
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    .line 2036
    :try_start_4
    invoke-virtual {v8}, Lcom/htc/camera/CameraController;->reconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2038
    :catch_1
    move-exception v0

    .line 2040
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "prepareMediaRecorder() - Fail to reconnect camera"

    :goto_3
    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1811
    :cond_a
    iput-boolean v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_HasPendingShowKillProcessToastMsg:Z

    goto/16 :goto_1

    .line 1815
    :cond_b
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v7, "prepareMediaRecorder() - Fail to kill occupied process"

    invoke-static {v1, v7}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    if-eqz v1, :cond_d

    .line 1818
    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

    if-ne v0, v1, :cond_c

    .line 1819
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 1821
    :cond_c
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 1825
    :cond_d
    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_OccupiedAudioResourceProcessType:Lcom/htc/camera/IAudioManager$ProcessType;

    .line 1826
    iput-boolean v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_HasPendingShowPrepareFailToastMsg:Z

    goto/16 :goto_0

    .line 1869
    :cond_e
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1872
    :try_start_6
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v5

    .line 1873
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectRecordWithAudio()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/htc/camera/CameraSettings;->PROPERTY_RECORD_WITH_AUDIO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v5, v0}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_f
    move v2, v6

    .line 1874
    :goto_4
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectStereoAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v5, Lcom/htc/camera/CameraSettings;->isStereoRecordingEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_10
    move v1, v6

    .line 1876
    :goto_5
    if-eqz v2, :cond_11

    .line 1878
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1880
    if-eqz v1, :cond_15

    .line 1882
    const/4 v10, 0x1

    iget-object v0, v7, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v7, v10, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 1883
    invoke-virtual {v7}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 1884
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v10, "prepareMediaRecorder() - Enable stereo recording"

    invoke-static {v0, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    :goto_6
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSource(I)V

    .line 1901
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSource(I)V

    .line 1903
    sget v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->ZOE_STORY:I

    const/high16 v10, -0x80000000

    if-ne v0, v10, :cond_17

    .line 1905
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "OutputFormat.ZOE_STORY not support"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 2032
    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v4, :cond_12

    if-eqz v8, :cond_12

    .line 2036
    :try_start_7
    invoke-virtual {v8}, Lcom/htc/camera/CameraController;->reconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 2032
    :cond_12
    :goto_8
    throw v0

    :cond_13
    move v2, v4

    .line 1873
    goto :goto_4

    :cond_14
    move v1, v4

    .line 1874
    goto :goto_5

    .line 1888
    :cond_15
    const/4 v10, 0x0

    :try_start_8
    iget-object v0, v7, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v7, v10, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 1889
    invoke-virtual {v7}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 1890
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v10, "prepareMediaRecorder() - Disable stereo recording"

    invoke-static {v0, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1895
    :cond_16
    const/4 v10, 0x0

    iget-object v0, v7, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v7, v10, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 1896
    invoke-virtual {v7}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 1897
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v10, "prepareMediaRecorder() - Disable stereo recording"

    invoke-static {v0, v10}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1910
    :cond_17
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v10, "OutputFormat.ZOE_STORY supported !!!!!!!!"

    invoke-static {v0, v10}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    sget v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->ZOE_STORY:I

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFormat(I)V

    .line 1915
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;

    if-nez v0, :cond_1c

    .line 1917
    :cond_18
    new-instance v10, Lcom/htc/camera/Reference;

    invoke-direct {v10}, Lcom/htc/camera/Reference;-><init>()V

    .line 1918
    new-instance v11, Lcom/htc/camera/Reference;

    invoke-direct {v11}, Lcom/htc/camera/Reference;-><init>()V

    .line 1919
    iget-object v0, v7, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    sget-object v12, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    invoke-static {v5, v0, v12, v10, v11}, Lcom/htc/camera/io/DCFUtility;->findNextZoeCounters(Lcom/htc/camera/Settings;Lcom/htc/camera/io/StorageSlot;Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/Reference;Lcom/htc/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1926
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder() - Cannot find available video file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->releaseMediaRecorder()V

    goto/16 :goto_0

    .line 1930
    :cond_19
    new-instance v5, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v10, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v5, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 1931
    new-instance v5, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v11, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v5, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;

    .line 1935
    :goto_9
    iget-object v0, v7, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-static {v0}, Lcom/htc/camera/io/DCFUtility;->getDcimPath(Lcom/htc/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v0

    .line 1936
    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedDirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 1937
    iget-object v7, p0, Lcom/htc/camera/zoe/ZoeController;->m_PreparedFileCounter:Lcom/htc/camera/io/FileCounter;

    .line 1938
    new-instance v10, Lcom/htc/camera/io/DCFPath;

    sget-object v11, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    invoke-static {v11, v5}, Lcom/htc/camera/io/DCFUtility;->getDirectoryName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/htc/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    const/4 v13, 0x0

    invoke-static {v12, v7, v13}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/camera/io/FileFormat;->Mpeg4:Lcom/htc/camera/io/FileFormat;

    iget-object v12, v12, Lcom/htc/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11, v5, v7}, Lcom/htc/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    iput-object v10, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    .line 1943
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareMediaRecorder() - File path = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    invoke-virtual {v0}, Lcom/htc/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFile(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1949
    :try_start_9
    invoke-virtual {v9}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    const/16 v5, 0x780

    if-lt v0, v5, :cond_1d

    .line 1950
    const v0, 0x989680

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoEncodingBitRate(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1962
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v5, "prepareMediaRecorder() - Maximum video file size : 4286578688"

    invoke-static {v0, v5}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    const-wide v10, 0xff800000L

    invoke-virtual {v3, v10, v11}, Lcom/htc/camera/MediaRecorderParameters;->setMaxFileSize(J)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1971
    :goto_b
    const/16 v0, 0x1e

    :try_start_b
    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoFrameRate(I)V

    .line 1975
    invoke-virtual {v9}, Lcom/htc/camera/Resolution;->isFullHDVideo()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1976
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v9}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v5

    const/16 v7, 0x440

    invoke-direct {v0, v5, v7}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSize(Lcom/htc/camera/imaging/Size;)V

    .line 1982
    :goto_c
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoEncoder(I)V

    .line 1985
    if-eqz v2, :cond_1a

    .line 1987
    const v0, 0x1f400

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncodingBitRate(I)V

    .line 1988
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1989
    const v0, 0xbb80

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    .line 1992
    :goto_d
    if-eqz v1, :cond_20

    .line 1993
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioChannels(I)V

    .line 1996
    :goto_e
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncoder(I)V

    .line 1999
    :cond_1a
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->doSetMediaRecorderParameters(Landroid/media/MediaRecorder;)V

    .line 2002
    invoke-virtual {v8}, Lcom/htc/camera/CameraController;->unlock()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2008
    :try_start_c
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2032
    if-eqz v8, :cond_1b

    .line 2036
    :try_start_d
    invoke-virtual {v8}, Lcom/htc/camera/CameraController;->reconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 2046
    :cond_1b
    :goto_f
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2048
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder() - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 2049
    goto/16 :goto_0

    .line 1934
    :cond_1c
    :try_start_e
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v5, "prepareMediaRecorder() - Use prepared directory and file counters"

    invoke-static {v0, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_9

    .line 1952
    :cond_1d
    const v0, 0xb71b00

    :try_start_f
    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoEncodingBitRate(I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_a

    .line 1954
    :catch_2
    move-exception v0

    .line 1956
    :try_start_10
    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v7, "prepareMediaRecorder() - Cannot set video bit rate"

    invoke-static {v5, v7, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1965
    :catch_3
    move-exception v0

    .line 1967
    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v7, "prepareMediaRecorder() - Cannot set maximum video file size"

    invoke-static {v5, v7, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1979
    :cond_1e
    new-instance v0, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v9}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v7

    invoke-direct {v0, v5, v7}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSize(Lcom/htc/camera/imaging/Size;)V

    goto :goto_c

    .line 1991
    :cond_1f
    const v0, 0xac44

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    goto :goto_d

    .line 1995
    :cond_20
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioChannels(I)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_e

    .line 2010
    :catch_4
    move-exception v0

    .line 2013
    :try_start_11
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraThread;->checkStorageState(Z)V

    .line 2014
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/StorageState;->Full:Lcom/htc/camera/io/StorageState;

    if-ne v1, v2, :cond_21

    .line 2016
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "prepareMediaRecorder() -  Storage full"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2032
    if-eqz v8, :cond_0

    .line 2036
    :try_start_12
    invoke-virtual {v8}, Lcom/htc/camera/CameraController;->reconnect()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    .line 2038
    :catch_5
    move-exception v0

    .line 2040
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "prepareMediaRecorder() - Fail to reconnect camera"

    goto/16 :goto_3

    .line 2019
    :cond_21
    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 2023
    :catch_6
    move-exception v0

    goto/16 :goto_2

    .line 2038
    :catch_7
    move-exception v1

    .line 2040
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "prepareMediaRecorder() - Fail to reconnect camera"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 2038
    :catch_8
    move-exception v0

    .line 2040
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "prepareMediaRecorder() - Fail to reconnect camera"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 2032
    :catchall_2
    move-exception v0

    move v4, v6

    goto/16 :goto_7
.end method

.method private releaseMediaRecorder()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2057
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    .line 2059
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaRecorder()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2084
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2092
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=OFF"

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2095
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v4}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2099
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->enableVibration()V

    .line 2102
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    if-eqz v0, :cond_3

    .line 2105
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaRecorder() - Delete \'"

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    const-string v4, "\'"

    invoke-static {v0, v1, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2106
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->deleteFile(Lcom/htc/camera/io/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2107
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseMediaRecorder() - Fail to delete file \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2114
    if-nez v0, :cond_5

    move-object v1, v2

    .line 2116
    :goto_3
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 2117
    :try_start_4
    iget-object v0, v0, Lcom/htc/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    invoke-virtual {v6}, Lcom/htc/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2126
    :goto_4
    if-eqz v1, :cond_2

    .line 2127
    :goto_5
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 2129
    :cond_2
    iput-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    .line 2133
    :cond_3
    iput-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    .line 2135
    :cond_4
    return-void

    .line 2066
    :catch_0
    move-exception v0

    .line 2068
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "releaseMediaRecorder() - Fail to reset listeners"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2076
    :catch_1
    move-exception v0

    .line 2078
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "releaseMediaRecorder() - Fail to reset media recorder"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2086
    :catch_2
    move-exception v0

    .line 2088
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "releaseMediaRecorder() - Fail to release media recorder"

    invoke-static {v1, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 2114
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/htc/camera/io/StorageSlot;->videoContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_3

    .line 2119
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "releaseMediaRecorder() - No storage slot, cannot delete from media store"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 2121
    :catch_3
    move-exception v0

    .line 2123
    :goto_6
    :try_start_7
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseMediaRecorder() - Fail to delete \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' from media store"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2126
    if-eqz v1, :cond_2

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_7

    .line 2127
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 2126
    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    .line 2121
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_6
.end method

.method private resumeRecording()V
    .locals 4

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2563
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "resumeRecording()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-static {v0}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->c(Landroid/media/MediaRecorder;)V

    .line 2568
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2578
    :goto_0
    return-void

    .line 2570
    :catch_0
    move-exception v0

    .line 2572
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeRecording() - video recording resume failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2577
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "resumeRecording() - video recording is not in Paused state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V
    .locals 13

    .prologue
    const/16 v12, 0x2713

    const/4 v9, 0x5

    const/16 v11, 0x2712

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 2142
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v0, p1, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Change mode to "

    invoke-static {v0, v1, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2145
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 2146
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    invoke-virtual {p1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2270
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    const/16 v2, 0x2724

    move-object v0, p0

    move v3, v10

    move v4, v10

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2272
    :cond_0
    return-void

    .line 2149
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_2

    .line 2151
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_SingleShotJpegRawData:[B

    if-eqz v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Save single-shot JPEG"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    new-instance v0, Lcom/htc/camera/io/SaveImageTask;

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_SingleShotJpegRawData:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/io/SaveImageTask;-><init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[B)V

    .line 2156
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 2159
    iput-boolean v8, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsLastImageReceived:Z

    .line 2160
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopCapturing()V

    goto :goto_0

    .line 2164
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Single-shot JPEG is not received yet"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    invoke-virtual {p0, v11}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 2166
    invoke-virtual {p0, v12}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 2167
    const/16 v0, 0x2714

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    goto :goto_0

    .line 2171
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Take single shot later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2177
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_5

    .line 2178
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0, v8}, Lcom/htc/camera/IAudioManager;->setNotificationStreamMute(Z)V

    .line 2183
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegRawData:[B

    if-eqz v0, :cond_3

    .line 2185
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Save cover photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegRawData:[B

    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    iget v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    add-int/lit8 v7, v1, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[BLcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;IZ)V

    .line 2187
    sget-object v1, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    iput-object v1, v0, Lcom/htc/camera/io/SaveImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 2188
    iput-boolean v10, v0, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 2189
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 2190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegRawData:[B

    .line 2194
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v11}, Lcom/htc/camera/zoe/ZoeController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2196
    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v2}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2197
    invoke-virtual {p0, p0, v11, v0, v1}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 2199
    :cond_4
    invoke-virtual {p0, v12}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 2200
    const/16 v0, 0x2714

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 2204
    iget v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    if-ltz v0, :cond_6

    .line 2205
    iget v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    .line 2211
    :goto_2
    sget-object v1, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x5

    mul-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->changeExpectedPictureCount(I)V

    goto/16 :goto_0

    .line 2180
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2208
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Unknown T0 JPEG index"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 2209
    goto :goto_2

    .line 2217
    :pswitch_2
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z

    if-eqz v0, :cond_a

    .line 2219
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsStoppingRecording:Z

    if-nez v0, :cond_9

    .line 2230
    invoke-virtual {p0, v11}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 2233
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegRawData:[B

    if-eqz v0, :cond_7

    .line 2235
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Save cover photo"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegRawData:[B

    iget-object v5, p0, Lcom/htc/camera/zoe/ZoeController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    iget v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    add-int/lit8 v7, v1, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/camera/zoe/ZoeController$SaveZoeImageTask;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;[BLcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;IZ)V

    .line 2237
    sget-object v1, Lcom/htc/camera/zoe/ZoeController;->ZOENAMING:Lcom/htc/camera/io/DCFInfo;

    iput-object v1, v0, Lcom/htc/camera/io/SaveImageTask;->dcfInfo:Lcom/htc/camera/io/DCFInfo;

    .line 2238
    iput-boolean v10, v0, Lcom/htc/camera/io/SaveImageTask;->isLastMedia:Z

    .line 2239
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 2240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegRawData:[B

    .line 2245
    :cond_7
    iget v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    if-ltz v0, :cond_8

    .line 2246
    iget v9, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    .line 2252
    :goto_3
    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->LONG_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, v9

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->changeExpectedPictureCount(I)V

    goto/16 :goto_0

    .line 2249
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Unknown T0 JPEG index"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2255
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Recorder is stopping"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2258
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Recorder is stopped"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2264
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureMode() - Stop photo capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopPhotoCapture()V

    .line 2266
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isRecordingMode:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2146
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupAutoFocusCallbacks()V
    .locals 2

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-nez v0, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setupAutoFocusCallbacks() - No IAutoFocusController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    :goto_0
    return-void

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/zoe/ZoeController$18;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeController$18;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 2303
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/zoe/ZoeController$19;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeController$19;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 2319
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/zoe/ZoeController$20;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeController$20;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    goto :goto_0
.end method

.method private setupParamsBeforeStartingPreview(Lcom/htc/camera/CameraController;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2339
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setupParamsBeforeStartingPreview()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v1, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupParamsBeforeStartingPreview() - Current camera mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    :goto_0
    return-void

    .line 2350
    :cond_0
    const-string v0, "capture-mode-values"

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2351
    const-string v0, "zoe"

    invoke-virtual {p1, v0}, Lcom/htc/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 2356
    :goto_1
    const-string v0, "cam-mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 2358
    const-string v0, "video-mode"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    invoke-virtual {p1, v2}, Lcom/htc/camera/CameraController;->setVideoStabilization(Z)V

    .line 2360
    invoke-virtual {p1, v2}, Lcom/htc/camera/CameraController;->setRecordingHint(Z)V

    .line 2366
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->getPhotoResolution(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 2367
    if-eqz v0, :cond_2

    .line 2369
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "setupParamsBeforeStartingPreview() - Picture size is "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2370
    const-string v1, "zoe-picture-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/htc/camera/CameraController;->setPictureSizeParameter(II)V

    .line 2377
    :goto_2
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->getVideoResolution(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 2378
    if-eqz v0, :cond_5

    .line 2380
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "setupParamsBeforeStartingPreview() - Video size is "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2381
    const-string v1, "video-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    const-string v1, "zoe-preview-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->isFullHDVideo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2385
    sget-object v0, Lcom/htc/camera/HardwarePlatform;->CURRENT:Lcom/htc/camera/HardwarePlatform;

    sget-object v1, Lcom/htc/camera/HardwarePlatform;->Nvidia:Lcom/htc/camera/HardwarePlatform;

    if-ne v0, v1, :cond_3

    .line 2386
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    goto/16 :goto_0

    .line 2353
    :cond_1
    const-string v0, "capture-mode"

    const-string v1, "zoe"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2374
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setupParamsBeforeStartingPreview() - No photo resolution to set"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2388
    :cond_3
    const/16 v0, 0x780

    const/16 v1, 0x440

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    goto/16 :goto_0

    .line 2391
    :cond_4
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    goto/16 :goto_0

    .line 2394
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setupParamsBeforeStartingPreview() - No video resolution to set"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setupZoeCamera()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2403
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v1, :cond_0

    .line 2486
    :goto_0
    return v0

    .line 2407
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 2408
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v2

    .line 2409
    if-nez v2, :cond_1

    .line 2411
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "setupZoeCamera() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    const/4 v0, 0x0

    goto :goto_0

    .line 2414
    :cond_1
    const-string v3, "take"

    const-string v4, "zoe-support-mode"

    invoke-virtual {v2, v4}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2415
    new-instance v2, Lcom/htc/camera/zoe/ClassicZoeCamera;

    invoke-direct {v2, v1}, Lcom/htc/camera/zoe/ClassicZoeCamera;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    .line 2419
    :goto_1
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "setupZoeCamera() - Use \'"

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v4}, Lcom/htc/camera/burst/IBurstCamera;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2422
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v2, v2, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/zoe/ZoeController$21;

    invoke-direct {v3, p0}, Lcom/htc/camera/zoe/ZoeController$21;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 2431
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v2, v2, Lcom/htc/camera/burst/IBurstCamera;->shutterReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/zoe/ZoeController$22;

    invoke-direct {v3, p0}, Lcom/htc/camera/zoe/ZoeController$22;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 2467
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v2, v2, Lcom/htc/camera/burst/IBurstCamera;->jpegReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/zoe/ZoeController$23;

    invoke-direct {v3, p0}, Lcom/htc/camera/zoe/ZoeController$23;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 2475
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v2, v2, Lcom/htc/camera/burst/IBurstCamera;->jpegTimeoutEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/zoe/ZoeController$24;

    invoke-direct {v3, p0}, Lcom/htc/camera/zoe/ZoeController$24;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 2483
    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v1, v2}, Lcom/htc/camera/component/CameraThreadComponentManager;->addComponent(Lcom/htc/camera/component/Component;)V

    goto :goto_0

    .line 2417
    :cond_2
    new-instance v2, Lcom/htc/camera/zoe/a;

    invoke-direct {v2, v1}, Lcom/htc/camera/zoe/a;-><init>(Lcom/htc/camera/CameraThread;)V

    iput-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    goto :goto_1
.end method

.method private stopCapturing()V
    .locals 3

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 2588
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapturing() - Not capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    :goto_0
    return-void

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Capturing:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    if-eq v0, v1, :cond_1

    .line 2593
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapturing() - Capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2597
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapturing()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2652
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapturing() - Capture mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    :cond_2
    :goto_1
    const/16 v0, 0x2724

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    goto :goto_0

    .line 2603
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsLastImageReceived:Z

    if-eqz v0, :cond_3

    .line 2604
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->cancelTakingPicture()V

    goto :goto_1

    .line 2606
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapturing() - Single shot image is not received yet"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2611
    :pswitch_1
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ShortZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    .line 2614
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 2615
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapturing() - No JPEG callback received, send delayed timeout message"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    const/16 v0, 0x271c

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_1

    .line 2623
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapturing() - Change capture state to Stopping"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Stopping:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    .line 2625
    const/16 v0, 0x2714

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->removeMessages(I)V

    .line 2628
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsLastImageReceived:Z

    if-eqz v0, :cond_4

    .line 2630
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapturing() - Last image is received, stop directly"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->cancelTakingPicture()V

    goto :goto_1

    .line 2634
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->preStopRecording()V

    goto :goto_1

    .line 2639
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapturing() - Change capture state to Stopping"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Stopping:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    .line 2642
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->finishVideoSnapshot()V

    .line 2643
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->preStopRecording()V

    .line 2644
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsLastImageReceived:Z

    if-eqz v0, :cond_2

    .line 2646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->stopRecording(Z)V

    .line 2647
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->completeCapture()V

    goto :goto_1

    .line 2600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private stopPhotoCapture()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x5

    const/4 v0, 0x1

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 2708
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v1, v1, Lcom/htc/camera/burst/IBurstCamera;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2781
    :goto_0
    return-void

    .line 2713
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v2, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v2, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v1, v2, :cond_3

    .line 2716
    :cond_1
    sget-object v1, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$JpegReceivingOrder:[I

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegReceivingOrder:Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;

    invoke-virtual {v2}, Lcom/htc/camera/zoe/ZoeController$JpegReceivingOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2731
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown JPEG receiving order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v1, v0

    .line 2735
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v2, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_5

    .line 2737
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - No enough JPEG"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2722
    :pswitch_1
    iget v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    if-ltz v0, :cond_2

    .line 2723
    iget v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_1

    .line 2726
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - Unknown T0 index"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    const/4 v0, 0x6

    move v1, v0

    .line 2729
    goto :goto_1

    .line 2745
    :cond_3
    iget v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    if-ltz v1, :cond_6

    .line 2746
    iget v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    .line 2754
    :goto_2
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v2}, Lcom/htc/camera/StopWatch;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v2}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v2

    .line 2755
    :goto_3
    sget-object v4, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v4}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 2756
    sget-object v2, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v2}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v2

    .line 2759
    :cond_4
    if-lez v1, :cond_8

    .line 2760
    int-to-long v4, v1

    mul-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    add-int/2addr v2, v1

    .line 2763
    :goto_4
    sget-object v3, Lcom/htc/camera/zoe/ZoeController;->LONG_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v3}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    if-lez v1, :cond_9

    :goto_5
    int-to-long v0, v0

    add-long/2addr v0, v3

    mul-long/2addr v0, v8

    long-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2767
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPhotoCapture() - Expected picture count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 2769
    if-eqz v0, :cond_a

    .line 2771
    const-string v2, "zoe-expected-picture-count"

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 2772
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 2776
    :goto_6
    invoke-direct {p0, v1}, Lcom/htc/camera/zoe/ZoeController;->changeExpectedPictureCount(I)V

    .line 2779
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopPhotoCapture() - Stop burst-shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->stopBurstShots()V

    goto/16 :goto_0

    .line 2749
    :cond_6
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "stopPhotoCapture() - Unknown T0 index"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    const/4 v1, 0x5

    goto :goto_2

    .line 2754
    :cond_7
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 2762
    :cond_8
    mul-long/2addr v2, v8

    long-to-double v2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    goto :goto_4

    .line 2763
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 2775
    :cond_a
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "stopPhotoCapture() - No camera controller"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private stopRecording(Z)V
    .locals 5

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2791
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 2793
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "stopRecording() - No recorder"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    :cond_0
    :goto_0
    return-void

    .line 2798
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopPhotoCapture()V

    .line 2801
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CalledPreStopZoeRecording:Z

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2806
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsStoppingRecording:Z

    .line 2810
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingTimer:Lcom/htc/camera/StopWatch;

    invoke-virtual {v0}, Lcom/htc/camera/StopWatch;->getElapsedMilliSeconds()J

    move-result-wide v1

    .line 2814
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    const/16 v3, 0x2718

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 2827
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "stopRecording() - MediaRecorder.stop() - Start"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 2829
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "stopRecording() - MediaRecorder.stop() - End"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2839
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    :goto_1
    invoke-virtual {v0, v3, v4}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2841
    invoke-direct {p0, v1, v2, p1}, Lcom/htc/camera/zoe/ZoeController;->onRecordingStopped(JZ)V

    goto :goto_0

    .line 2832
    :catch_0
    move-exception v0

    .line 2834
    :try_start_1
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v4, "stopRecording() - Fail to stop recording"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2839
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method

.method private takeSingleShot()V
    .locals 3

    .prologue
    .line 3055
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3061
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeSingleShot() - Current capture mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    :goto_0
    return-void

    .line 3058
    :pswitch_0
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    goto :goto_0

    .line 3055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private videoSnapshot()V
    .locals 3

    .prologue
    .line 3072
    sget-object v1, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3079
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSnapshot() - Current Zoe recording state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    :goto_0
    return-void

    .line 3082
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3084
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSnapshot() - Current Zoe video snapshot state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3089
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3092
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_2

    .line 3094
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 3095
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotFocusHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 3097
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotFocusHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 3102
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "videoSnapshot() - No IAutoFocusController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotTakePicture()V

    goto :goto_0

    .line 3072
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private videoSnapshotTakePicture()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3112
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    .line 3113
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "Zoe Snapshot JPEG call-back"

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotCallbackTimeoutCallback:Lcom/htc/camera/debug/b;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotCallbackTimerHandle:Lcom/htc/camera/Handle;

    .line 3118
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3121
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "videoSnapshot() - Take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3123
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    .line 3124
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/CameraController;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    .line 3127
    :try_start_0
    new-instance v4, Lcom/htc/camera/zoe/ZoeController$29;

    invoke-direct {v4, p0, v2}, Lcom/htc/camera/zoe/ZoeController$29;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V

    const/4 v5, 0x0

    new-instance v6, Lcom/htc/camera/zoe/ZoeController$30;

    invoke-direct {v6, p0, v2, v0, v1}, Lcom/htc/camera/zoe/ZoeController$30;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;J)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3177
    :goto_1
    return-void

    .line 3115
    :cond_0
    iput-object v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoSnapshotCallbackTimerHandle:Lcom/htc/camera/Handle;

    goto :goto_0

    .line 3170
    :catch_0
    move-exception v0

    .line 3172
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "videoSnapshotTakePicture() - Cannot take picture"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3175
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->finishVideoSnapshot()V

    goto :goto_1
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 346
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "cancelTakingPicture() - Zoe mode is not entered"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 389
    :goto_0
    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "cancelTakingPicture()"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureState:[I

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    invoke-virtual {v3}, Lcom/htc/camera/zoe/ZoeController$CaptureState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 361
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTakingPicture() - Capture state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", no need to cancel capture"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 362
    goto :goto_0

    .line 366
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTakingPicture() - Invalid capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTakingPicture() - Expected capture handle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 370
    goto :goto_0

    .line 374
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopPhotoCapture()V

    .line 377
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsStoppingRecording:Z

    if-nez v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "cancelTakingPicture() - Stop recording directly"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->preStopRecording()V

    .line 381
    invoke-direct {p0, v2}, Lcom/htc/camera/zoe/ZoeController;->stopRecording(Z)V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "cancelTakingPicture() - Change capture state to Canceling"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Canceling:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    move v0, v2

    .line 389
    goto/16 :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    .line 571
    invoke-super {p0}, Lcom/htc/camera/zoe/IZoeController;->deinitializeOverride()V

    .line 572
    return-void
.end method

.method public enter(I)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/16 v2, 0x2718

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    const/4 v4, 0x1

    .line 589
    :goto_0
    return v4

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->enterZoeMode(I)Z

    move-result v4

    goto :goto_0
.end method

.method public estimateRemainingPhotoCount(Lcom/htc/camera/io/StorageSlot;J)J
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    .line 682
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v4

    .line 709
    :goto_0
    return-wide v0

    .line 686
    :cond_0
    invoke-direct {p0, v8}, Lcom/htc/camera/zoe/ZoeController;->getTotalZoePhotoFileSize(Lcom/htc/camera/CameraController;)J

    move-result-wide v6

    .line 687
    cmp-long v0, v6, v2

    if-gtz v0, :cond_1

    move-wide v0, v4

    .line 688
    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    if-nez v0, :cond_2

    .line 693
    const-class v0, Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRecordingLimitController;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    if-eqz v0, :cond_3

    .line 695
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual {v0, p1}, Lcom/htc/camera/IRecordingLimitController;->getVideoReservedSize(Lcom/htc/camera/io/StorageSlot;)J

    move-result-wide v0

    .line 703
    :goto_1
    invoke-direct {p0, v8}, Lcom/htc/camera/zoe/ZoeController;->getVideoBitRate(Lcom/htc/camera/CameraController;)J

    move-result-wide v8

    .line 704
    cmp-long v2, v8, v2

    if-nez v2, :cond_4

    move-wide v0, v4

    .line 705
    goto :goto_0

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "estimateRemainingPhotoCount() - No IRecordingLimitController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 699
    goto :goto_1

    .line 706
    :cond_4
    sget-object v2, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v2}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v2

    mul-long/2addr v2, v8

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    .line 709
    sub-long v0, p2, v0

    add-long/2addr v2, v6

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public estimateRemainingRecordingSeconds(Lcom/htc/camera/io/StorageSlot;J)J
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    .line 719
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-wide v0, v1

    .line 739
    :goto_0
    return-wide v0

    .line 723
    :cond_0
    invoke-direct {p0, v7}, Lcom/htc/camera/zoe/ZoeController;->getTotalZoePhotoFileSize(Lcom/htc/camera/CameraController;)J

    move-result-wide v5

    .line 724
    cmp-long v0, v5, v3

    if-gtz v0, :cond_1

    move-wide v0, v1

    .line 725
    goto :goto_0

    .line 728
    :cond_1
    sub-long v5, p2, v5

    .line 729
    cmp-long v0, v5, v3

    if-gtz v0, :cond_2

    move-wide v0, v3

    .line 730
    goto :goto_0

    .line 733
    :cond_2
    invoke-direct {p0, v7}, Lcom/htc/camera/zoe/ZoeController;->getVideoBitRate(Lcom/htc/camera/CameraController;)J

    move-result-wide v7

    .line 734
    cmp-long v0, v7, v3

    if-nez v0, :cond_3

    move-wide v0, v1

    .line 735
    goto :goto_0

    .line 736
    :cond_3
    const-wide/16 v0, 0x8

    div-long v0, v7, v0

    .line 739
    div-long v0, v5, v0

    goto :goto_0
.end method

.method public exit(I)V
    .locals 6

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/16 v2, 0x2719

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/camera/zoe/ZoeController;->exitZoeMode(I)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x271a

    const/4 v4, 0x0

    .line 974
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1092
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/camera/zoe/IZoeController;->handleMessage(Landroid/os/Message;)V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 977
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->checkRecordingLimitation()V

    goto :goto_0

    .line 982
    :pswitch_2
    const/16 v0, 0x2718

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Enter zoe mode later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->enterZoeMode(I)Z

    goto :goto_0

    .line 993
    :pswitch_3
    const/16 v0, 0x2719

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - Exit zoe mode later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->exitZoeMode(I)V

    goto :goto_0

    .line 1003
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/zoe/ZoeUI;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    .line 1004
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_HasPendingShowKillProcessToastMsg:Z

    if-eqz v0, :cond_3

    .line 1006
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 1007
    sget-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->None:Lcom/htc/camera/IAudioManager$ProcessType;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_OccupiedAudioResourceProcessType:Lcom/htc/camera/IAudioManager$ProcessType;

    .line 1008
    iput-boolean v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_HasPendingShowKillProcessToastMsg:Z

    .line 1011
    :cond_3
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_HasPendingShowPrepareFailToastMsg:Z

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_OccupiedAudioResourceProcessType:Lcom/htc/camera/IAudioManager$ProcessType;

    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

    if-ne v0, v1, :cond_5

    .line 1014
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v3, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1017
    :cond_4
    :goto_1
    sget-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->None:Lcom/htc/camera/IAudioManager$ProcessType;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_OccupiedAudioResourceProcessType:Lcom/htc/camera/IAudioManager$ProcessType;

    .line 1018
    iput-boolean v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_HasPendingShowPrepareFailToastMsg:Z

    goto :goto_0

    .line 1015
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_OccupiedAudioResourceProcessType:Lcom/htc/camera/IAudioManager$ProcessType;

    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Other_HightPriority_Process:Lcom/htc/camera/IAudioManager$ProcessType;

    if-ne v0, v1, :cond_4

    .line 1016
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 1024
    :pswitch_5
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    goto :goto_0

    .line 1028
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->takeSingleShot()V

    goto :goto_0

    .line 1032
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopCapturing()V

    goto :goto_0

    .line 1037
    :pswitch_8
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 1039
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$31;->$SwitchMap$com$htc$camera$zoe$ZoeController$CaptureMode:[I

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1046
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - Capture mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1043
    :pswitch_9
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->LongZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    goto/16 :goto_0

    .line 1055
    :pswitch_a
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->LongZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_6

    .line 1058
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    goto/16 :goto_0

    .line 1060
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - Capture mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1066
    :pswitch_b
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->preStopRecording()V

    .line 1067
    iget-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsLastImageReceived:Z

    if-eqz v0, :cond_0

    .line 1069
    invoke-direct {p0, v4}, Lcom/htc/camera/zoe/ZoeController;->stopRecording(Z)V

    .line 1070
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->completeCapture()V

    goto/16 :goto_0

    .line 1075
    :pswitch_c
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - JPEG callback timeout(5000ms). Cancel capturing."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->cancelTakingPicture()V

    goto/16 :goto_0

    .line 1080
    :pswitch_d
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->pauseRecording()V

    goto/16 :goto_0

    .line 1084
    :pswitch_e
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->resumeRecording()V

    goto/16 :goto_0

    .line 1088
    :pswitch_f
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->videoSnapshot()V

    goto/16 :goto_0

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_4
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 1039
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 1104
    invoke-super {p0}, Lcom/htc/camera/zoe/IZoeController;->initializeOverride()V

    .line 1107
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 1110
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 1111
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraClosingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeController$3;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1121
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->captureCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeController$4;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1129
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$5;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeController$5;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1137
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeController$6;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1172
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeController$7;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1184
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->previewStartedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeController$8;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1196
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->previewStoppedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeController$9;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1205
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$10;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/zoe/ZoeController$10;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1223
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->storageState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$11;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/zoe/ZoeController$11;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1238
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/zoe/ZoeController$12;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1249
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/zoe/ZoeController$13;

    invoke-direct {v2, p0, v0}, Lcom/htc/camera/zoe/ZoeController$13;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1271
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/zoe/ZoeController$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeController$14;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1282
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/zoe/ZoeController$15;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeController$15;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1306
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/zoe/ZoeController$16;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeController$16;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1315
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/zoe/ZoeController$17;

    invoke-direct {v1, p0}, Lcom/htc/camera/zoe/ZoeController$17;-><init>(Lcom/htc/camera/zoe/ZoeController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 1325
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->startMonitoringComponent(Ljava/lang/Class;)V

    .line 1326
    return-void

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V
    .locals 1

    .prologue
    .line 1618
    invoke-super {p0, p1}, Lcom/htc/camera/zoe/IZoeController;->onMonitoredComponentAdded(Lcom/htc/camera/component/Component;)V

    .line 1620
    instance-of v0, p1, Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_0

    .line 1622
    check-cast p1, Lcom/htc/camera/IAutoFocusController;

    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    .line 1623
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->setupAutoFocusCallbacks()V

    .line 1624
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->stopMonitoringComponent(Ljava/lang/Class;)V

    .line 1626
    :cond_0
    return-void
.end method

.method final stopCapturingAndWait()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2661
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2663
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->stopCapturing()V

    .line 2697
    :goto_0
    return v0

    .line 2668
    :cond_0
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2669
    new-instance v3, Lcom/htc/camera/zoe/ZoeController$25;

    invoke-direct {v3, p0, v2}, Lcom/htc/camera/zoe/ZoeController$25;-><init>(Lcom/htc/camera/zoe/ZoeController;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v3}, Lcom/htc/camera/zoe/ZoeController;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2680
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "stopCapturingAndWait() - Fail to perform cross-thread operation"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2681
    goto :goto_0

    .line 2685
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v4, "stopCapturingAndWait() - Waiting for state checking [Start]"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2687
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "stopCapturingAndWait() - Waiting for state checking [End]"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "stopCapturingAndWait() - Waiting for stopping [Start]"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2689
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2690
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2691
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "stopCapturingAndWait() - Waiting for stopping [End]"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2694
    :catch_0
    move-exception v0

    .line 2696
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v3, "stopCapturingAndWait() - Fail to wait for stopping"

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 2697
    goto :goto_0
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 2851
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3047
    :goto_0
    return v4

    .line 2855
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 2857
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$26;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/zoe/ZoeController$26;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->invokeAsync(Ljava/lang/Runnable;)Z

    move v4, v6

    .line 2867
    goto :goto_0

    .line 2871
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureMode:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    if-ne v0, v1, :cond_2

    .line 2872
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->setupZoeCamera()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2874
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Fail to setup Zoe camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$27;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/zoe/ZoeController$27;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->invokeAsync(Ljava/lang/Runnable;)Z

    move v4, v6

    .line 2885
    goto :goto_0

    .line 2889
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    invoke-interface {v0}, Lcom/htc/camera/IAudioManager;->checkOwnAudioResourceProcess()Lcom/htc/camera/IAudioManager$ProcessType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

    if-ne v0, v1, :cond_4

    .line 2891
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$28;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/zoe/ZoeController$28;-><init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CaptureHandle;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2902
    const/16 v2, 0x271a

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v4, v6

    .line 2903
    goto :goto_0

    .line 2907
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    if-nez v0, :cond_5

    .line 2908
    const-class v0, Lcom/htc/camera/io/IMediaFileWriter;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/IMediaFileWriter;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    .line 2909
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbImageManager:Lcom/htc/camera/aj;

    if-nez v0, :cond_6

    .line 2910
    const-class v0, Lcom/htc/camera/aj;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aj;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbImageManager:Lcom/htc/camera/aj;

    .line 2911
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-nez v0, :cond_7

    .line 2912
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 2915
    :cond_7
    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->SHORT_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v7, 0x5

    mul-long/2addr v0, v7

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->changeExpectedPictureCount(I)V

    .line 2918
    iput v4, p0, Lcom/htc/camera/zoe/ZoeController;->m_JpegIndex:I

    .line 2919
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_T0JpegIndex:I

    .line 2922
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Disable flash"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v7

    .line 2924
    iget-object v0, v7, Lcom/htc/camera/CameraThread;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_OriginalFlashMode:Lcom/htc/camera/FlashMode;

    .line 2925
    sget-object v0, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    invoke-virtual {v7, v0}, Lcom/htc/camera/CameraThread;->setFlashMode(Lcom/htc/camera/FlashMode;)V

    .line 2928
    invoke-virtual {v7}, Lcom/htc/camera/CameraThread;->disableVibration()V

    .line 2931
    invoke-virtual {v7}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2933
    invoke-direct {p0}, Lcom/htc/camera/zoe/ZoeController;->loadShutterSound()V

    .line 2934
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    if-eqz v0, :cond_8

    .line 2936
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_e

    .line 2938
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AudioManager:Lcom/htc/camera/IAudioManager;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1, v4, v4}, Lcom/htc/camera/IAudioManager;->playInMemorySound(Lcom/htc/camera/Handle;IZ)Lcom/htc/camera/Handle;

    .line 2939
    iput-boolean v6, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsShutterSoundPlayed:Z

    .line 2947
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ZoeCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->startBurstShots()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2948
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureState;->Capturing:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureState:Lcom/htc/camera/zoe/ZoeController$CaptureState;

    .line 2953
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_UI:Lcom/htc/camera/zoe/ZoeUI;

    const/16 v2, 0x2712

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    sget-object v0, Lcom/htc/camera/zoe/ZoeController;->LONG_ZOE_CAPTURE_DURATION:Lcom/htc/camera/Duration;

    aput-object v0, v5, v6

    move-object v0, p0

    move v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 2956
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2959
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->lockFocusInVideo:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2960
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {v0}, Lcom/htc/camera/IAutoFocusController;->disableContinuousAutoFocus()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CAFDisabledHandle:Lcom/htc/camera/Handle;

    .line 2963
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    iget-object v0, v0, Lcom/htc/camera/io/DCFPath;->directoryNumber:Lcom/htc/camera/io/FileCounter;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 2964
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_VideoFilePath:Lcom/htc/camera/io/DCFPath;

    iget-object v0, v0, Lcom/htc/camera/io/DCFPath;->fileNumber:Lcom/htc/camera/io/FileCounter;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 2967
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 2968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z

    .line 2969
    iget-object v0, p1, Lcom/htc/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureStartTime:J

    .line 2970
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const-string v1, "HMTT"

    iget-wide v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureStartTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture() - setHtcParameter CamD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    iget v2, v2, Lcom/htc/camera/CameraType;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    const-string v1, "CamD"

    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    iget v2, v2, Lcom/htc/camera/CameraType;->id:I

    invoke-static {v0, v1, v2}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;Ljava/lang/String;I)V

    .line 2975
    invoke-virtual {p0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/location/ILocationManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/location/ILocationManager;

    .line 2976
    if-eqz v0, :cond_10

    .line 2978
    iget-object v0, v0, Lcom/htc/camera/location/ILocationManager;->location:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_location:Landroid/location/Location;

    .line 2979
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_location:Landroid/location/Location;

    if-eqz v0, :cond_a

    .line 2981
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    .line 2982
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    .line 2983
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latitude, longitude :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    iget-object v2, p0, Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;

    invoke-static {v2, v0, v1}, Lcom/htc/lib3/media/HtcMediaRecorderUtils;->a(Landroid/media/MediaRecorder;FF)V

    .line 2990
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2991
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3013
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    invoke-virtual {v0}, Lcom/htc/camera/CloseableHandleReference;->closeHandle()Lcom/htc/camera/CloseableHandleReference;

    .line 3014
    new-instance v0, Lcom/htc/camera/CloseableHandleReference;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaFileWriter:Lcom/htc/camera/io/IMediaFileWriter;

    invoke-interface {v1}, Lcom/htc/camera/io/IMediaFileWriter;->suspendUpdatingMediaStore()Lcom/htc/camera/CloseableHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/camera/CloseableHandleReference;-><init>(Lcom/htc/camera/CloseableHandle;)V

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_MediaStoreUpdateSuspendHandleRef:Lcom/htc/camera/CloseableHandleReference;

    .line 3017
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbImageManager:Lcom/htc/camera/aj;

    if-eqz v0, :cond_b

    .line 3018
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbImageManager:Lcom/htc/camera/aj;

    invoke-interface {v0}, Lcom/htc/camera/aj;->disableAutoUpdate()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_ThumbDisableHandle:Lcom/htc/camera/Handle;

    .line 3021
    :cond_b
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 3024
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    if-nez v0, :cond_c

    .line 3025
    const-class v0, Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IRecordingLimitController;

    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    .line 3026
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    if-eqz v0, :cond_11

    .line 3028
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    iget-object v0, v7, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1, v0}, Lcom/htc/camera/IRecordingLimitController;->getVideoReservedSize(Lcom/htc/camera/io/StorageSlot;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_RecordingSafetySpace:J

    .line 3029
    const/16 v0, 0x2724

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/zoe/ZoeController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 3037
    :goto_4
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Acquire capture semaphore"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_CaptureSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3039
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Fail to acquire capture semaphore"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_d
    :goto_5
    move v4, v6

    .line 3047
    goto/16 :goto_0

    .line 2942
    :cond_e
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Shutter sound is not loaded"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2950
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to take picture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2987
    :cond_10
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->m_location:Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 2999
    :catch_0
    move-exception v0

    .line 3001
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Fail to start recording"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3002
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->reconnect()V

    .line 3005
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->recordingState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3006
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->videoSnapshotState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3009
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/zoe/ZoeController;->setCaptureMode(Lcom/htc/camera/zoe/ZoeController$CaptureMode;)V

    goto/16 :goto_3

    .line 3032
    :cond_11
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - No IRecordingLimitController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3041
    :catch_1
    move-exception v0

    .line 3043
    iget-object v1, p0, Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Fail to acquire capture semaphore"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
