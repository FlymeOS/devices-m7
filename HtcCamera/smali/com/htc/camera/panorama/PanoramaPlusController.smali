.class final Lcom/htc/camera/panorama/PanoramaPlusController;
.super Lcom/htc/camera/panorama/IPanoramaPlusController;
.source "PanoramaPlusController.java"

# interfaces
.implements Lcom/htc/camera/ad;
.implements Lcom/htc/camera/z;


# instance fields
.field private m_AELockHandle:Lcom/htc/camera/Handle;

.field private m_AFLockHandle:Lcom/htc/camera/Handle;

.field private final m_AutoFocusCanceledEventHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

.field private final m_AutoFocusFinishedEventHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_AwbLockHandle:Lcom/htc/camera/Handle;

.field private m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_CapturedFrameCount:I

.field private m_CreateEngineRetryCount:I

.field private m_CurrentHandle:Lcom/htc/camera/Handle;

.field private m_CurrentOrientation:I

.field private final m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

.field private m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field private m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

.field private m_FileCounter:Lcom/htc/camera/io/FileCounter;

.field private final m_FinalImageReceivedCallback:Lcom/htc/camera/panorama/b;

.field private m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

.field private m_GLEngineLock:Ljava/lang/Object;

.field private volatile m_HasEngine:Z

.field private m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

.field private m_Is3ALocked:Z

.field m_IsFirstFrame:Z

.field private m_IsJpegReceived:Z

.field private m_IsShutterReceived:Z

.field private m_IsStitching:Z

.field private final m_JpegReceivedEventHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/imaging/JpegEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_JpegTimeoutEventHandler:Lcom/htc/camera/event/a;
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

.field private m_LastDumpCheckEngine:J

.field private m_NativeStitchHeap:J

.field private m_NeedCloseEngine:Z

.field private m_PreAFLockHandle:Lcom/htc/camera/Handle;

.field private m_PreCaptureAutoFocusHandle:Lcom/htc/camera/Handle;

.field private final m_PreviewFrameEventHandler:Lcom/htc/camera/event/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/event/a",
            "<",
            "Lcom/htc/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_ReviewImageReceivedCallback:Lcom/htc/camera/panorama/b;

.field private m_SceneController:Lcom/htc/camera/effect/ac;

.field private final m_ShutterEventHandler:Lcom/htc/camera/event/a;
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

.field private final m_StitchingProgressCallBack:Lcom/htc/camera/panorama/c;

.field private m_TmpFilePath:Ljava/lang/String;

.field private m_TotalFrameCount:I

.field private m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

.field private m_UIEngineLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 343
    const-string v0, "Panorama+ Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/panorama/IPanoramaPlusController;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CurrentOrientation:I

    .line 123
    new-instance v0, Lcom/htc/camera/panorama/DeviceRotation;

    invoke-direct {v0}, Lcom/htc/camera/panorama/DeviceRotation;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_GLEngineLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UIEngineLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$1;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreviewFrameEventHandler:Lcom/htc/camera/event/a;

    .line 158
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$2;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusCanceledEventHandler:Lcom/htc/camera/event/a;

    .line 178
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$3;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$3;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusFinishedEventHandler:Lcom/htc/camera/event/a;

    .line 198
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$4;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_JpegReceivedEventHandler:Lcom/htc/camera/event/a;

    .line 206
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$5;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_JpegTimeoutEventHandler:Lcom/htc/camera/event/a;

    .line 215
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$6;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ShutterEventHandler:Lcom/htc/camera/event/a;

    .line 224
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$7;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$7;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ReviewImageReceivedCallback:Lcom/htc/camera/panorama/b;

    .line 232
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$8;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$8;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_FinalImageReceivedCallback:Lcom/htc/camera/panorama/b;

    .line 240
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusController$9;

    invoke-direct {v0, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$9;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_StitchingProgressCallBack:Lcom/htc/camera/panorama/c;

    .line 344
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->disableMessageLogs()V

    .line 346
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "panoplus"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TmpFilePath:Ljava/lang/String;

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/panorama/PanoramaPlusController;[B)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->updatePreviewFrame([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/panorama/PanoramaPlusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->onShutterReceived(Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/panorama/PanoramaPlusController;[B)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->onReviewImageReceived([B)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/panorama/PanoramaPlusController;[B)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->onFinalImageReceived([B)V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/panorama/PanoramaPlusController;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->onStitchingProgressChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->setupParamsBeforeStartingPreview(Lcom/htc/camera/CameraController;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/htc/camera/panorama/PanoramaPlusController;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CreateEngineRetryCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreAFLockHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->onCreatingEngine()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreAFLockHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/camera/panorama/PanoramaPlusController;Z)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->closeEngine()V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AFLockHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/panorama/PanoramaPlusController;)Lcom/htc/camera/IAutoFocusController;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/panorama/PanoramaPlusController;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->handleCommonCapturingError(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/panorama/PanoramaPlusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/panorama/PanoramaPlusController;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->on3ALocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/imaging/JpegEventArgs;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->onJpegReceived(Lcom/htc/camera/imaging/JpegEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/panorama/PanoramaPlusController;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->onJpegTimeout(Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method

.method private aimAtFirstFrame()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 354
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->isFirstFrameAimed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "aimAtFirstFrame() - First frame is aimed"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    const-string v2, "Panorama+"

    invoke-virtual {v0, v2}, Lcom/htc/camera/IImageSettingsController;->lockAutoWhiteBalance(Ljava/lang/String;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AwbLockHandle:Lcom/htc/camera/Handle;

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "aimAtFirstFrame() - Already focus locked"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->on3ALocked()V

    move v0, v1

    .line 383
    :goto_1
    return v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "aimAtFirstFrame() - No IImageSettingsController interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/IAutoFocusController;->autoFocus(Lcom/htc/camera/AutoFocusMode;Ljava/util/List;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreAFLockHandle:Lcom/htc/camera/Handle;

    move v0, v1

    .line 380
    goto :goto_1

    .line 383
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private closeEngine()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1476
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    if-nez v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "closeEngine() - Engine already closed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :goto_0
    return-void

    .line 1483
    :cond_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1489
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeEngine() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pending close engine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iput-boolean v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NeedCloseEngine:Z

    goto :goto_0

    .line 1495
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsStitching:Z

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "closeEngine() - Stitching, pending close engine"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    iput-boolean v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NeedCloseEngine:Z

    goto :goto_0

    .line 1502
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_GLEngineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1504
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UIEngineLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1506
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v4, "closeEngine() - Close engine"

    invoke-static {v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->close()V

    .line 1510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_HasEngine:Z

    .line 1513
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1514
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1515
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->releaseMemory()V

    .line 1517
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2720

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0

    .line 1513
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1514
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private completeCapture(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 421
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 428
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeCapture() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "completeCapture("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NeedCloseEngine:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->closeEngine()V

    .line 437
    iput-boolean v5, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NeedCloseEngine:Z

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AwbLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/IImageSettingsController;->unlockAutoWhiteBalance(Lcom/htc/camera/Handle;)V

    .line 445
    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AELockHandle:Lcom/htc/camera/Handle;

    .line 446
    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AwbLockHandle:Lcom/htc/camera/Handle;

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AFLockHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/IAutoFocusController;->unlockAutoFocus(Lcom/htc/camera/Handle;)V

    .line 451
    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AFLockHandle:Lcom/htc/camera/Handle;

    .line 455
    :cond_2
    iput v5, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TotalFrameCount:I

    .line 456
    iput v5, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CapturedFrameCount:I

    move-object v0, v1

    .line 457
    check-cast v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    .line 458
    iput-boolean v5, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Is3ALocked:Z

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CurrentOrientation:I

    .line 462
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eqz v0, :cond_4

    .line 464
    if-nez p1, :cond_3

    .line 465
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->captureFailedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/CaptureEventArgs;

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    sget-object v4, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    invoke-direct {v2, v3, v4}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    invoke-virtual {v0, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 468
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraThread;->endTakePicture(Lcom/htc/camera/CaptureHandle;)V

    .line 469
    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createEngine()V
    .locals 7

    .prologue
    const/high16 v6, 0x8000000

    const/4 v3, 0x0

    .line 1428
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "createEngine() - Engine already exist"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :goto_0
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "createEngine() - Create engine: heap="

    iget-wide v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NativeStitchHeap:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, " size="

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v1, v2, v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1436
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_GLEngineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1438
    :try_start_0
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UIEngineLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    :try_start_1
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iget-wide v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NativeStitchHeap:J

    const/high16 v6, 0x8000000

    invoke-direct {v0, v4, v5, v6}, Lcom/htc/camera/panorama/PanoramaPlusEngine;-><init>(JI)V

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1449
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_HasEngine:Z

    .line 1450
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1451
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1454
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v0

    .line 1455
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    const/16 v2, 0xe6

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setFrameIndicatorColor(IIII)V

    .line 1458
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0328

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1459
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0329

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1460
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setFrameIndicatorSize(II)V

    .line 1464
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getGyroCutoff()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setGyroParameters(FF)V

    .line 1467
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getNativeEngine()J

    move-result-wide v4

    .line 1468
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2720

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 1443
    :catch_0
    move-exception v0

    .line 1445
    :try_start_4
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v3, "createEngine() - Cannot create engine"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v1

    goto/16 :goto_0

    .line 1451
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1450
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private enter(ILcom/htc/camera/Handle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 540
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "enter() - Already entered"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "enter("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 549
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->preserveMemory()V

    .line 551
    iput-object p2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CurrentHandle:Lcom/htc/camera/Handle;

    .line 554
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 557
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->disablePreCaptureAutoFocus()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreCaptureAutoFocusHandle:Lcom/htc/camera/Handle;

    .line 560
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->linkToComponents()V

    .line 563
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_EffectController:Lcom/htc/camera/effect/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 566
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v6}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 570
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->invalidateCameraParameters()V

    goto :goto_0
.end method

.method private exit(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 582
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "exit() - Not enter"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "exit("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 591
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->closeEngine()V

    .line 594
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->releaseMemory()V

    .line 595
    const/16 v0, 0x271f

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->removeMessages(I)V

    .line 598
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreCaptureAutoFocusHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->enablePreCaptureAutoFocus(Lcom/htc/camera/Handle;)V

    .line 599
    iput-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreCaptureAutoFocusHandle:Lcom/htc/camera/Handle;

    .line 602
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/a;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 604
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 608
    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    goto :goto_0
.end method

.method private getAimedFrame()Lcom/htc/camera/panorama/PanoramaFrame;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 621
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "getAimedFrame() - No frame information"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 692
    :goto_0
    return-object v0

    .line 628
    :cond_1
    iget-boolean v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsFirstFrame:Z

    if-eqz v2, :cond_2

    .line 630
    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsFirstFrame:Z

    .line 632
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    goto :goto_0

    .line 636
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->elevation:F

    float-to-int v6, v2

    .line 637
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    float-to-int v7, v2

    .line 639
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v3, "getAimedFrame() - rotation="

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ", elevation="

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v3, v4, v5, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    const/4 v3, -0x1

    .line 644
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v5, v3

    move v3, v0

    :goto_1
    if-ltz v2, :cond_5

    .line 647
    iget-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v4, v4, v2

    array-length v4, v4

    if-nez v4, :cond_3

    .line 649
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAimedFrame() - No frame information at level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 650
    goto :goto_0

    .line 654
    :cond_3
    iget-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v4, v4, v2

    aget-object v4, v4, v0

    iget v4, v4, Lcom/htc/camera/panorama/PanoramaFrame;->centerElevation:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 655
    if-ltz v5, :cond_4

    if-ge v4, v3, :cond_5

    .line 644
    :cond_4
    add-int/lit8 v3, v2, -0x1

    move v5, v2

    move v2, v3

    move v3, v4

    goto :goto_1

    .line 664
    :cond_5
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v3, "getAimedFrame() - frameLevel="

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 667
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v2, v2, v5

    .line 668
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_a

    .line 670
    aget-object v3, v2, v0

    iget v3, v3, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    .line 671
    aget-object v4, v2, v0

    iget v4, v4, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    .line 673
    if-le v4, v3, :cond_6

    .line 675
    if-lt v7, v3, :cond_9

    if-ge v7, v4, :cond_9

    .line 677
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v3, "getAimedFrame() - frameIndex="

    aget-object v4, v2, v0

    iget v4, v4, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    aget-object v0, v2, v0

    goto/16 :goto_0

    .line 683
    :cond_6
    if-ltz v7, :cond_7

    if-lt v7, v4, :cond_8

    :cond_7
    const/16 v4, 0x168

    if-ge v7, v4, :cond_9

    if-lt v7, v3, :cond_9

    .line 686
    :cond_8
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v3, "getAimedFrame() - frameIndex="

    aget-object v4, v2, v0

    iget v4, v4, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 687
    aget-object v0, v2, v0

    goto/16 :goto_0

    .line 668
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move-object v0, v1

    .line 692
    goto/16 :goto_0
.end method

.method private getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Closed:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    goto :goto_0
.end method

.method private handleCommonCapturingError(I)V
    .locals 6

    .prologue
    .line 1564
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2738

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1565
    return-void
.end method

.method private linkToComponents()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-nez v0, :cond_0

    .line 496
    const-class v0, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    .line 497
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-nez v0, :cond_1

    .line 504
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    .line 505
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-nez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IAutoFocusController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-nez v0, :cond_2

    .line 512
    const-class v0, Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/IBurstCamera;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    .line 513
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-nez v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IBurstCamera interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-nez v0, :cond_3

    .line 520
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 521
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-nez v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find ISceneController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-nez v0, :cond_4

    .line 528
    const-class v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 529
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-nez v0, :cond_4

    .line 530
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "linkToComponents() - Cannot find IEffectController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_4
    return-void
.end method

.method private on3ALocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1057
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1062
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on3ALocked() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :goto_0
    return-void

    .line 1066
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Is3ALocked:Z

    .line 1069
    iput-boolean v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsJpegReceived:Z

    .line 1070
    iput-boolean v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsShutterReceived:Z

    .line 1071
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->takeOneShot()Z

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "on3ALocked()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private onCreatingEngine()V
    .locals 6

    .prologue
    .line 1844
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->preserveMemory()V

    .line 1845
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NativeStitchHeap:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1847
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->createEngine()V

    .line 1848
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->prepareEngine()V

    .line 1864
    :goto_0
    return-void

    .line 1852
    :cond_0
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CreateEngineRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 1854
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onCreatingEngine() - No reserved heap, retry later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    const/16 v2, 0x271f

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 1857
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CreateEngineRetryCount:I

    if-nez v0, :cond_1

    .line 1858
    const/16 v0, 0x1a4

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->handleCommonCapturingError(I)V

    .line 1859
    :cond_1
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CreateEngineRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CreateEngineRetryCount:I

    goto :goto_0

    .line 1862
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onCreatingEngine() - No reserved heap, stop retry"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onFinalImageReceived([B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1083
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onFinalImageReceived() - Not capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v3, "onFinalImageReceived("

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byte["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v4, ")"

    invoke-static {v2, v3, v0, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1092
    iput-boolean v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsStitching:Z

    .line 1095
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 1096
    :goto_2
    if-eqz v0, :cond_3

    .line 1098
    new-instance v1, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;

    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    iget-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;-><init>(Lcom/htc/camera/CameraThread;[BLcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileCounter;)V

    .line 1099
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    iput-object v2, v1, Lcom/htc/camera/panorama/PanoramaPlusController$SavePanoramaImageTask;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1100
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/camera/CameraThread;->saveImage(Lcom/htc/camera/io/SaveImageTask;)V

    .line 1106
    :goto_3
    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->completeCapture(Z)V

    goto :goto_0

    .line 1089
    :cond_1
    const-string v0, "null"

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1095
    goto :goto_2

    .line 1103
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "onFinalImageReceived() - No JPEG raw data"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onJpegReceived(Lcom/htc/camera/imaging/JpegEventArgs;)V
    .locals 3

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsJpegReceived:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegReceived() - JPEG is already received, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :goto_0
    return-void

    .line 879
    :cond_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 884
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegReceived() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 888
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsJpegReceived:Z

    .line 890
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegReceived() - JPEG received"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->reset()V

    .line 894
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->startPreview()V

    .line 897
    if-nez p1, :cond_2

    .line 899
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegReceived() - Jpeg event is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 904
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    array-length v0, v0

    if-nez v0, :cond_4

    .line 906
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegReceived() - Jpeg raw data is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 910
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iget-object v1, p1, Lcom/htc/camera/imaging/JpegEventArgs;->jpegRawData:[B

    invoke-virtual {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setMetadata([B)V

    goto :goto_0

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private onJpegTimeout(Lcom/htc/camera/OneValueEventArgs;)V
    .locals 2
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
    .line 1019
    iget-object v0, p1, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onJpegTimeout() - JPEG callback timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/16 v0, 0x192

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->handleCommonCapturingError(I)V

    .line 1025
    :cond_0
    return-void
.end method

.method private onReviewImageReceived([B)V
    .locals 6

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-nez v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onFinalImageReceived() - Not capturing"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    :goto_0
    return-void

    .line 1121
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "onReviewImageReceived("

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byte["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1126
    :try_start_0
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    sget-object v1, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v1, v1, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1127
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1129
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x271e

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v0

    .line 1133
    const/16 v1, 0x195

    invoke-direct {p0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->handleCommonCapturingError(I)V

    .line 1134
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "onReviewImageReceived() - Fail to convert bitmap"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1121
    :cond_1
    const-string v0, "null"

    goto :goto_1
.end method

.method private onShutterReceived(Lcom/htc/camera/OneValueEventArgs;)V
    .locals 2
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
    .line 1030
    iget-object v0, p1, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsShutterReceived:Z

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onShutterReceived() - Shutter is already received, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsShutterReceived:Z

    .line 1041
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "onShutterReceived() - Shutter received"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onStitchingProgressChanged(I)V
    .locals 6

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2722

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1049
    return-void
.end method

.method private prepareEngine()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1523
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1529
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareEngine() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    :goto_0
    return-void

    .line 1533
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "prepareEngine() - Prepare engine"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getPreviewSizeParameter()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1537
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getPreviewFormat()I

    move-result v1

    .line 1540
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getHorizontalViewAngle()F

    move-result v4

    .line 1541
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getVerticalViewAngle()F

    move-result v5

    .line 1542
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "View angle: "

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, ", "

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v0, v2, v6, v7, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1543
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setPreviewFormat(IIIFF)V

    .line 1544
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->prepare()V

    .line 1546
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2721

    iget-object v5, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CurrentHandle:Lcom/htc/camera/Handle;

    move-object v0, p0

    move v3, v9

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1548
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TmpFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setCacheDirectory(Ljava/lang/String;)V

    .line 1553
    :try_start_0
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->startEngine()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1555
    :catch_0
    move-exception v0

    .line 1557
    const/16 v1, 0x190

    invoke-direct {p0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->handleCommonCapturingError(I)V

    .line 1558
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to take picture"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private preserveMemory()V
    .locals 4

    .prologue
    .line 1829
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NativeStitchHeap:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1830
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->lockSharedLargeNativeBuffer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NativeStitchHeap:J

    .line 1831
    :cond_0
    return-void
.end method

.method private releaseMemory()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 1835
    iget-wide v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NativeStitchHeap:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 1837
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NativeStitchHeap:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->unlockSharedLargeNativeBuffer(J)V

    .line 1838
    iput-wide v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_NativeStitchHeap:J

    .line 1840
    :cond_0
    return-void
.end method

.method private setupFrameInfos()V
    .locals 14

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "setupFrameInfos()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getFrameLevelInfos()[Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;

    move-result-object v6

    .line 1147
    if-eqz v6, :cond_0

    array-length v0, v6

    if-nez v0, :cond_1

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "setupFrameInfos() - No frame level information"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :goto_0
    return-void

    .line 1154
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TotalFrameCount:I

    .line 1155
    array-length v0, v6

    new-array v0, v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    .line 1156
    const/high16 v0, 0x43340000    # 180.0f

    array-length v1, v6

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1157
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 1160
    int-to-float v2, v1

    mul-float/2addr v2, v7

    float-to-int v2, v2

    rsub-int/lit8 v8, v2, 0x5a

    .line 1161
    add-int/lit8 v2, v1, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    rsub-int/lit8 v9, v2, 0x5a

    .line 1164
    aget-object v10, v6, v1

    .line 1165
    if-eqz v10, :cond_7

    .line 1169
    iget v2, v10, Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;->frameCount:I

    if-lez v2, :cond_6

    .line 1172
    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, v10, Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;->frameCount:I

    int-to-float v3, v3

    div-float v11, v2, v3

    .line 1173
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    float-to-int v2, v2

    neg-int v4, v2

    .line 1174
    float-to-int v2, v11

    add-int/2addr v2, v4

    int-to-float v3, v2

    .line 1177
    iget v2, v10, Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;->frameCount:I

    new-array v12, v2, [Lcom/htc/camera/panorama/PanoramaFrame;

    .line 1179
    const/4 v2, 0x0

    :goto_2
    array-length v5, v12

    if-ge v2, v5, :cond_5

    .line 1181
    iget v5, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TotalFrameCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TotalFrameCount:I

    .line 1182
    new-instance v5, Lcom/htc/camera/panorama/PanoramaFrame;

    invoke-direct {v5}, Lcom/htc/camera/panorama/PanoramaFrame;-><init>()V

    aput-object v5, v12, v2

    .line 1183
    aget-object v13, v12, v2

    add-int/lit8 v5, v0, 0x1

    iput v0, v13, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    .line 1184
    aget-object v13, v12, v2

    if-lez v2, :cond_2

    float-to-int v0, v3

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    :goto_3
    iput v0, v13, Lcom/htc/camera/panorama/PanoramaFrame;->centerRotation:I

    .line 1185
    aget-object v0, v12, v2

    iget v13, v10, Lcom/htc/camera/panorama/PanoramaPlusEngine$FrameLevelInfo;->elevationAngle:I

    iput v13, v0, Lcom/htc/camera/panorama/PanoramaFrame;->centerElevation:I

    .line 1186
    aget-object v0, v12, v2

    if-lez v2, :cond_3

    :goto_4
    iput v4, v0, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    .line 1187
    aget-object v0, v12, v2

    float-to-int v4, v3

    iput v4, v0, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    .line 1188
    aget-object v0, v12, v2

    iput v8, v0, Lcom/htc/camera/panorama/PanoramaFrame;->elevationTop:I

    .line 1189
    aget-object v0, v12, v2

    iput v9, v0, Lcom/htc/camera/panorama/PanoramaFrame;->elevationBottom:I

    .line 1190
    aget-object v0, v12, v2

    float-to-int v4, v7

    iput v4, v0, Lcom/htc/camera/panorama/PanoramaFrame;->elevationHeight:I

    .line 1191
    aget-object v0, v12, v2

    float-to-int v4, v11

    iput v4, v0, Lcom/htc/camera/panorama/PanoramaFrame;->rotationWidth:I

    .line 1193
    float-to-int v4, v3

    .line 1194
    array-length v0, v12

    add-int/lit8 v0, v0, -0x2

    if-ge v2, v0, :cond_4

    .line 1195
    add-float/2addr v3, v11

    .line 1179
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v5

    goto :goto_2

    .line 1184
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 1186
    :cond_3
    add-int/lit16 v4, v4, 0x168

    goto :goto_4

    .line 1197
    :cond_4
    const/4 v0, 0x0

    aget-object v0, v12, v0

    iget v0, v0, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    int-to-float v3, v0

    goto :goto_5

    .line 1199
    :cond_5
    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aput-object v12, v2, v1

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1203
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupFrameInfos() - No frame level information for level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const/4 v0, 0x0

    check-cast v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    goto/16 :goto_0

    .line 1210
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupFrameInfos() - No frame level information for level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const/4 v0, 0x0

    check-cast v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    goto/16 :goto_0

    .line 1217
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "setupFrameInfos() - Setup neighbor frame information"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-ltz v1, :cond_18

    .line 1220
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v4, v0, v1

    .line 1221
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_7
    if-ltz v3, :cond_17

    .line 1224
    aget-object v5, v4, v3

    .line 1225
    if-lez v3, :cond_b

    add-int/lit8 v0, v3, -0x1

    :goto_8
    aget-object v0, v4, v0

    .line 1226
    iget-object v2, v5, Lcom/htc/camera/panorama/PanoramaFrame;->neighborFrames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    iget-object v0, v0, Lcom/htc/camera/panorama/PanoramaFrame;->neighborFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_16

    .line 1232
    iget v6, v5, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    .line 1233
    iget v7, v5, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    .line 1235
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    add-int/lit8 v2, v1, 0x1

    aget-object v8, v0, v2

    array-length v9, v8

    const/4 v0, 0x0

    move v2, v0

    :goto_9
    if-ge v2, v9, :cond_16

    aget-object v10, v8, v2

    .line 1237
    iget v11, v10, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    .line 1238
    iget v12, v10, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    .line 1239
    const/4 v0, 0x0

    .line 1241
    if-le v6, v7, :cond_e

    .line 1243
    if-le v11, v12, :cond_c

    .line 1244
    const/4 v0, 0x1

    .line 1267
    :cond_9
    :goto_a
    if-eqz v0, :cond_a

    .line 1269
    iget-object v0, v5, Lcom/htc/camera/panorama/PanoramaFrame;->neighborFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    iget-object v0, v10, Lcom/htc/camera/panorama/PanoramaFrame;->neighborFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 1225
    :cond_b
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1245
    :cond_c
    if-lt v11, v7, :cond_d

    if-le v12, v6, :cond_9

    .line 1246
    :cond_d
    const/4 v0, 0x1

    goto :goto_a

    .line 1248
    :cond_e
    if-le v12, v11, :cond_13

    .line 1250
    if-le v11, v6, :cond_f

    if-lt v11, v7, :cond_12

    :cond_f
    if-le v12, v6, :cond_10

    if-lt v12, v7, :cond_12

    :cond_10
    if-gt v11, v6, :cond_11

    if-ge v12, v7, :cond_12

    :cond_11
    if-lt v11, v6, :cond_9

    if-gt v12, v7, :cond_9

    .line 1255
    :cond_12
    const/4 v0, 0x1

    goto :goto_a

    .line 1258
    :cond_13
    if-le v11, v12, :cond_9

    .line 1260
    if-le v11, v6, :cond_14

    if-lt v11, v7, :cond_15

    :cond_14
    if-le v12, v6, :cond_9

    if-ge v12, v7, :cond_9

    .line 1263
    :cond_15
    const/4 v0, 0x1

    goto :goto_a

    .line 1221
    :cond_16
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_7

    .line 1218
    :cond_17
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_6

    .line 1276
    :cond_18
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 1278
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v2, v1, v0

    .line 1279
    const/4 v1, 0x0

    :goto_c
    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 1281
    aget-object v3, v2, v1

    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1276
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1289
    :cond_1a
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v0, v0

    new-array v5, v0, [[Lcom/htc/camera/panorama/PanoramaFrame;

    .line 1290
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_1c

    .line 1292
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    aget-object v2, v0, v1

    .line 1293
    array-length v0, v2

    new-array v3, v0, [Lcom/htc/camera/panorama/PanoramaFrame;

    .line 1294
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_1b

    .line 1296
    aget-object v4, v2, v0

    .line 1297
    new-instance v6, Lcom/htc/camera/panorama/PanoramaFrame;

    invoke-direct {v6}, Lcom/htc/camera/panorama/PanoramaFrame;-><init>()V

    .line 1298
    iget v7, v4, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    iput v7, v6, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    .line 1299
    iget v7, v4, Lcom/htc/camera/panorama/PanoramaFrame;->centerRotation:I

    iput v7, v6, Lcom/htc/camera/panorama/PanoramaFrame;->centerRotation:I

    .line 1300
    iget v7, v4, Lcom/htc/camera/panorama/PanoramaFrame;->centerElevation:I

    iput v7, v6, Lcom/htc/camera/panorama/PanoramaFrame;->centerElevation:I

    .line 1301
    iget v7, v4, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    iput v7, v6, Lcom/htc/camera/panorama/PanoramaFrame;->rotationLeft:I

    .line 1302
    iget v7, v4, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    iput v7, v6, Lcom/htc/camera/panorama/PanoramaFrame;->rotationRight:I

    .line 1303
    iget v7, v4, Lcom/htc/camera/panorama/PanoramaFrame;->elevationTop:I

    iput v7, v6, Lcom/htc/camera/panorama/PanoramaFrame;->elevationTop:I

    .line 1304
    iget v7, v4, Lcom/htc/camera/panorama/PanoramaFrame;->elevationBottom:I

    iput v7, v6, Lcom/htc/camera/panorama/PanoramaFrame;->elevationBottom:I

    .line 1305
    iget v7, v4, Lcom/htc/camera/panorama/PanoramaFrame;->elevationHeight:I

    iput v7, v6, Lcom/htc/camera/panorama/PanoramaFrame;->elevationHeight:I

    .line 1306
    iget v4, v4, Lcom/htc/camera/panorama/PanoramaFrame;->rotationWidth:I

    iput v4, v6, Lcom/htc/camera/panorama/PanoramaFrame;->rotationWidth:I

    .line 1307
    aput-object v6, v3, v0

    .line 1294
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1309
    :cond_1b
    aput-object v3, v5, v1

    .line 1290
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 1311
    :cond_1c
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2711

    iget v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TotalFrameCount:I

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private setupParamsBeforeStartingPreview(Lcom/htc/camera/CameraController;)V
    .locals 3

    .prologue
    const/16 v2, 0x500

    .line 840
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-eq v0, v1, :cond_1

    .line 842
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupParamsBeforeStartingPreview() - Current camera mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "setupParamsBeforeStartingPreview()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    sget-object v0, Lcom/htc/camera/Resolution;->PHOTO_16_9_2048x1152:Lcom/htc/camera/Resolution;

    .line 850
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/htc/camera/CameraController;->setPictureSizeParameter(II)V

    .line 853
    sget v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    if-le v0, v2, :cond_2

    .line 854
    const/16 v0, 0x2d0

    invoke-virtual {p1, v2, v0}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 862
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "panorama360"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    goto :goto_0

    .line 856
    :cond_2
    sget v0, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_WIDTH_WIDE:I

    sget v1, Lcom/htc/camera/DisplayDevice;->MAIN_CAMERA_PREVIEW_HEIGHT_WIDE:I

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setPreviewSizeParameter(II)V

    goto :goto_1
.end method

.method private startEngine()V
    .locals 3

    .prologue
    .line 1386
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1391
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startEngine() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :goto_0
    return-void

    .line 1396
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->start()V

    goto :goto_0

    .line 1386
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private stopCapture(Z)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1320
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1327
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCapture() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1330
    :pswitch_1
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CapturedFrameCount:I

    if-nez v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapture() - No captured frame to stitch"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "stopCapture("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, ")"

    invoke-static {v0, v1, v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1339
    iput-boolean p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsStitching:Z

    .line 1345
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/camera/panorama/PanoramaPlusController;->stopEngine(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v3

    .line 1354
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreviewFrameEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 1357
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v0, :cond_2

    .line 1359
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusCanceledEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 1360
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusFinishedEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 1364
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_4

    .line 1366
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsJpegReceived:Z

    if-nez v0, :cond_3

    .line 1367
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    invoke-virtual {v0}, Lcom/htc/camera/burst/IBurstCamera;->reset()V

    .line 1369
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->jpegReceivedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_JpegReceivedEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 1370
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->jpegTimeoutEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_JpegTimeoutEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->removeHandler(Lcom/htc/camera/event/a;)Z

    .line 1374
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2717

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1376
    if-eqz p1, :cond_5

    if-eqz v6, :cond_0

    .line 1377
    :cond_5
    invoke-direct {p0, v3}, Lcom/htc/camera/panorama/PanoramaPlusController;->completeCapture(Z)V

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v0

    .line 1349
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "stopCapture() - Fail to stop engine"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1350
    const/4 v0, 0x1

    move v6, v0

    goto :goto_1

    .line 1320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private stopEngine(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1405
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1412
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopEngine() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :goto_0
    return-void

    .line 1417
    :pswitch_1
    if-eqz p1, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_StitchingProgressCallBack:Lcom/htc/camera/panorama/c;

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ReviewImageReceivedCallback:Lcom/htc/camera/panorama/b;

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_FinalImageReceivedCallback:Lcom/htc/camera/panorama/b;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->stop(ZLcom/htc/camera/panorama/c;Lcom/htc/camera/panorama/b;Lcom/htc/camera/panorama/b;)V

    goto :goto_0

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0, p1, v2, v2, v2}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->stop(ZLcom/htc/camera/panorama/c;Lcom/htc/camera/panorama/b;Lcom/htc/camera/panorama/b;)V

    goto :goto_0

    .line 1405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateDeviceRotation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1652
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    if-nez v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "updateDeviceRotation() - No engine to update device rotation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    :goto_0
    return-void

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    invoke-virtual {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getCurrentRotation(Lcom/htc/camera/panorama/DeviceRotation;)V

    .line 1662
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2713

    const/4 v0, 0x3

    new-array v5, v0, [F

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v0, v0, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    aput v0, v5, v3

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v4, v4, Lcom/htc/camera/panorama/DeviceRotation;->elevation:F

    aput v4, v5, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v4, v4, Lcom/htc/camera/panorama/DeviceRotation;->roll:F

    aput v4, v5, v0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method private updatePreviewFrame([B)V
    .locals 7

    .prologue
    .line 1671
    if-nez p1, :cond_1

    .line 1673
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "updatePreviewFrame() - No frame data"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1686
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewFrame() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1681
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->aimAtFirstFrame()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_IsFirstFrame:Z

    goto :goto_0

    .line 1691
    :pswitch_2
    iget-boolean v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Is3ALocked:Z

    if-nez v0, :cond_2

    .line 1693
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "updatePreviewFrame() - 3A not locked yet"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1700
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->updatePreviewFrame([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getAimedFrame()Lcom/htc/camera/panorama/PanoramaFrame;

    move-result-object v6

    .line 1704
    if-nez v6, :cond_3

    .line 1706
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewFrame() - Cannot get captured frame for current rotation : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->rotation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", elevation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DeviceRotation:Lcom/htc/camera/panorama/DeviceRotation;

    iget v2, v2, Lcom/htc/camera/panorama/DeviceRotation;->elevation:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1746
    :catch_0
    move-exception v0

    .line 1748
    const/16 v1, 0x193

    invoke-direct {p0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->handleCommonCapturingError(I)V

    .line 1749
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "updatePreviewFrame() - Fail to update preview frame"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1711
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1712
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->playShutterSound()V

    .line 1714
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "updatePreviewFrame() - Frame "

    iget v2, v6, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " captured"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1717
    iget-object v0, v6, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaFrameState;->ReadyToCapture:Lcom/htc/camera/panorama/PanoramaFrameState;

    if-eq v0, v1, :cond_5

    .line 1719
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewFrame() - Frame state is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    const/16 v0, 0x196

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->handleCommonCapturingError(I)V

    goto/16 :goto_0

    .line 1723
    :cond_5
    sget-object v0, Lcom/htc/camera/panorama/PanoramaFrameState;->Captured:Lcom/htc/camera/panorama/PanoramaFrameState;

    iput-object v0, v6, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 1724
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CapturedFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CapturedFrameCount:I

    .line 1727
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2715

    iget v3, v6, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1730
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CapturedFrameCount:I

    iget v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TotalFrameCount:I

    if-ge v0, v1, :cond_7

    .line 1733
    iget-object v0, v6, Lcom/htc/camera/panorama/PanoramaFrame;->neighborFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaFrame;

    .line 1735
    iget-object v1, v0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    sget-object v2, Lcom/htc/camera/panorama/PanoramaFrameState;->Unavailable:Lcom/htc/camera/panorama/PanoramaFrameState;

    if-ne v1, v2, :cond_6

    .line 1737
    sget-object v1, Lcom/htc/camera/panorama/PanoramaFrameState;->ReadyToCapture:Lcom/htc/camera/panorama/PanoramaFrameState;

    iput-object v1, v0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 1738
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2716

    iget v3, v0, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    goto :goto_1

    .line 1743
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v1, 0x271c

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public checkEngine(J)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 400
    iget-boolean v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_HasEngine:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getNativeEngine()J

    move-result-wide v3

    cmp-long v1, p1, v3

    if-nez v1, :cond_0

    .line 411
    :goto_0
    return v0

    .line 405
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 406
    iget-wide v5, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_LastDumpCheckEngine:J

    sub-long v5, v3, v5

    const-wide v7, 0x12a05f200L

    cmp-long v1, v5, v7

    if-lez v1, :cond_1

    .line 408
    iput-wide v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_LastDumpCheckEngine:J

    .line 409
    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v4, v1, [Ljava/lang/Object;

    const-string v1, "checkEngine() - Has engine: "

    aput-object v1, v4, v2

    iget-boolean v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_HasEngine:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, ", input native: "

    aput-object v1, v4, v0

    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, ", engine native: "

    aput-object v1, v4, v0

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->getNativeEngine()J

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v2

    .line 411
    goto :goto_0

    .line 409
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->releaseMemory()V

    .line 485
    invoke-super {p0}, Lcom/htc/camera/panorama/IPanoramaPlusController;->deinitializeOverride()V

    .line 486
    return-void
.end method

.method public estimateRemainingPhotoCount(Lcom/htc/camera/io/StorageSlot;J)J
    .locals 5

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-wide/16 v0, -0x1

    .line 271
    :goto_0
    return-wide v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "estimateRemainingPhotoCount() - Free="

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    const-wide/32 v0, 0x30a32c0

    .line 263
    const-wide/32 v2, 0x2625a0

    .line 266
    sub-long v0, p2, v0

    .line 267
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 268
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 271
    :cond_1
    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public estimateRemainingRecordingSeconds(Lcom/htc/camera/io/StorageSlot;J)J
    .locals 2

    .prologue
    .line 280
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGLEngineLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_GLEngineLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getUIEngineLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UIEngineLock:Ljava/lang/Object;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 726
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 759
    invoke-super {p0, p1}, Lcom/htc/camera/panorama/IPanoramaPlusController;->handleMessage(Landroid/os/Message;)V

    .line 762
    :goto_0
    return-void

    .line 729
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/Handle;

    check-cast v0, Lcom/htc/camera/Handle;

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->enter(ILcom/htc/camera/Handle;)V

    goto :goto_0

    .line 733
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->exit(I)V

    goto :goto_0

    .line 737
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusUI;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    goto :goto_0

    .line 741
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lt v1, v0, :cond_0

    .line 742
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->stopCapture(Z)V

    goto :goto_0

    .line 741
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 746
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/htc/camera/panorama/PanoramaPlusController;->updateDeviceOrientation(I)V

    goto :goto_0

    .line 755
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->onCreatingEngine()V

    goto :goto_0

    .line 726
    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_1
        0x2714 -> :sswitch_3
        0x2716 -> :sswitch_4
        0x271f -> :sswitch_5
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 771
    invoke-super {p0}, Lcom/htc/camera/panorama/IPanoramaPlusController;->initializeOverride()V

    .line 774
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 777
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusController$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$10;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 792
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->previewStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusController$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$11;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 807
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->previewStoppingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/panorama/PanoramaPlusController$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$12;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 820
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraClosingEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/panorama/PanoramaPlusController$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/panorama/PanoramaPlusController$13;-><init>(Lcom/htc/camera/panorama/PanoramaPlusController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 832
    return-void
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1574
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 1642
    :goto_0
    return v0

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - find file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    new-instance v4, Lcom/htc/camera/Reference;

    invoke-direct {v4}, Lcom/htc/camera/Reference;-><init>()V

    .line 1580
    new-instance v5, Lcom/htc/camera/Reference;

    invoke-direct {v5}, Lcom/htc/camera/Reference;-><init>()V

    .line 1581
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

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

    if-nez v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Cannot find available file counters"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot find available file counters"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1592
    :cond_1
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v4, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_DirectoryCounter:Lcom/htc/camera/io/FileCounter;

    .line 1593
    new-instance v1, Lcom/htc/camera/io/FileCounter;

    iget-object v0, v5, Lcom/htc/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/htc/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    .line 1596
    sget-object v0, Lcom/htc/camera/io/DCFInfo;->DEFAULT:Lcom/htc/camera/io/DCFInfo;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_FileCounter:Lcom/htc/camera/io/FileCounter;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/htc/camera/io/DCFUtility;->getFileName(Lcom/htc/camera/io/DCFInfo;Lcom/htc/camera/io/FileCounter;Lcom/htc/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v1, v0}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setImageNamePrefix(Ljava/lang/String;)V

    .line 1599
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - temp file location: path="

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_TmpFilePath:Ljava/lang/String;

    const-string v4, ", name="

    invoke-static {v1, v2, v3, v4, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1614
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->setupFrameInfos()V

    .line 1616
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 1619
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2712

    move-object v0, p0

    move v3, v6

    move v4, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1622
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Frames:[[Lcom/htc/camera/panorama/PanoramaFrame;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    aget-object v0, v0, v6

    .line 1623
    sget-object v1, Lcom/htc/camera/panorama/PanoramaFrameState;->ReadyToCapture:Lcom/htc/camera/panorama/PanoramaFrameState;

    iput-object v1, v0, Lcom/htc/camera/panorama/PanoramaFrame;->state:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 1624
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v2, 0x2716

    iget v3, v0, Lcom/htc/camera/panorama/PanoramaFrame;->index:I

    sget-object v5, Lcom/htc/camera/panorama/PanoramaFrameState;->ReadyToCapture:Lcom/htc/camera/panorama/PanoramaFrameState;

    move-object v0, p0

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1627
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusCanceledEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1628
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_AutoFocusFinishedEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1631
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    if-eqz v0, :cond_2

    .line 1633
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->jpegReceivedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_JpegReceivedEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1634
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->jpegTimeoutEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_JpegTimeoutEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1635
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_BurstCamera:Lcom/htc/camera/burst/IBurstCamera;

    iget-object v0, v0, Lcom/htc/camera/burst/IBurstCamera;->shutterReceivedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_ShutterEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1639
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/htc/camera/event/Event;

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_PreviewFrameEventHandler:Lcom/htc/camera/event/a;

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 1642
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public updateDeviceOrientation(I)V
    .locals 3

    .prologue
    .line 1758
    iget v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CurrentOrientation:I

    if-ne p1, v0, :cond_0

    .line 1780
    :goto_0
    return-void

    .line 1762
    :cond_0
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1769
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeviceOrientation() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1774
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0, p1}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->setOrientation(I)V

    .line 1775
    iput p1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_CurrentOrientation:I

    .line 1778
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    const-string v1, "updateDeviceOrientation() - Engine orientation ready"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/16 v1, 0x2733

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusController;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z

    goto :goto_0

    .line 1762
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSensorValues(I[FJ)V
    .locals 4

    .prologue
    .line 1788
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusController$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusEngine$State:[I

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1796
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSensorValues() - Current engine state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->getEngineState()Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    :goto_0
    return-void

    .line 1803
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    .line 1812
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSensorValues() - Unknown sensor type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1816
    :catch_0
    move-exception v0

    .line 1818
    const/16 v1, 0x194

    invoke-direct {p0, v1}, Lcom/htc/camera/panorama/PanoramaPlusController;->handleCommonCapturingError(I)V

    .line 1819
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSensorValues() - Fail to update sensor values for sensor type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1806
    :pswitch_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0, p2, p3, p4}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->updateAccelerometerValues([FJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1824
    :goto_1
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusController;->updateDeviceRotation()V

    goto :goto_0

    .line 1809
    :pswitch_4
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusController;->m_Engine:Lcom/htc/camera/panorama/PanoramaPlusEngine;

    invoke-virtual {v0, p2, p3, p4}, Lcom/htc/camera/panorama/PanoramaPlusEngine;->updateGyroscopeValues([FJ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1788
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1803
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
