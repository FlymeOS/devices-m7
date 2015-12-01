.class Lcom/htc/camera/component/CaptureResolutionManager;
.super Lcom/htc/camera/ICaptureResolutionManager;
.source "CaptureResolutionManager.java"


# static fields
.field private static final MMS_RECORDING_DURATION:Lcom/htc/camera/Duration;

.field private static final MMS_RECORDING_DURATION_2X:Lcom/htc/camera/Duration;


# instance fields
.field private final m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/s",
            "<",
            "Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_NeedToSyncPhotoResolution:Z

.field private m_NeedToSyncPhotoResolutionBack:Z

.field private m_NeedToSyncVideoResolution:Z

.field private m_NeedToSyncVideoResolutionBack:Z

.field private m_PhotoResolutionsHandle:Lcom/htc/camera/Handle;

.field private m_PhotoSizeModeChangedListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/DynamicPropertyChangedListener",
            "<",
            "Lcom/htc/camera/PhotoSizeMode;",
            ">;"
        }
    .end annotation
.end field

.field private m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

.field private m_VideoResolutionsHandle:Lcom/htc/camera/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-wide/16 v0, 0x3c

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION:Lcom/htc/camera/Duration;

    .line 83
    const-wide/16 v0, 0x78

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION_2X:Lcom/htc/camera/Duration;

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 104
    const-string v1, "Capture Resolution Manager"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/ICaptureResolutionManager;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 88
    new-instance v0, Lcom/htc/camera/s;

    invoke-direct {v0}, Lcom/htc/camera/s;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;

    .line 107
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v6}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 108
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->maxVideoDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v6}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 109
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->maxVideoFileSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v6}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 110
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v6}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 113
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/htc/camera/aa;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/htc/camera/am;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/CaptureResolutionManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/CaptureResolutionManager;)Lcom/htc/camera/s;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/CaptureResolutionManager;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->onPhotoSizeModeChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Handle;Lcom/htc/camera/aa;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/CaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/Handle;Lcom/htc/camera/aa;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Handle;Lcom/htc/camera/am;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/CaptureResolutionManager;->setVideoResolutionProvider(Lcom/htc/camera/Handle;Lcom/htc/camera/am;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/CaptureResolutionManager;ZZZ)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/CaptureResolutionManager;)Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoSizeModeChangedListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/base/DynamicPropertyChangedListener;)Lcom/htc/camera/base/DynamicPropertyChangedListener;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoSizeModeChangedListener:Lcom/htc/camera/base/DynamicPropertyChangedListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/CaptureResolutionManager;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolutionBack:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/CameraType;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureResolutionManager;->syncBackPhotoResolution(Lcom/htc/camera/CameraType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/camera/component/CaptureResolutionManager;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolutionBack:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/CameraType;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureResolutionManager;->syncBackVideoResolution(Lcom/htc/camera/CameraType;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Resolution;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CaptureResolutionManager;->updateMaxVideoSize(Lcom/htc/camera/Resolution;)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/component/CaptureResolutionManager;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->onSettingsChanged()V

    return-void
.end method

.method private onPhotoSizeModeChanged()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lcom/htc/camera/component/CaptureResolutionManager$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CaptureResolutionManager$6;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;

    .line 251
    if-eqz v0, :cond_2

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->needSaveToSettings:Z

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions()V

    .line 254
    if-eqz v0, :cond_0

    .line 255
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->needSaveToSettings:Z

    goto :goto_0
.end method

.method private onSettingsChanged()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "onSettingsChanged()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolution:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "onSettingsChanged() - Settings is changed, sync photo resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/htc/camera/aa;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ae;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/htc/camera/component/CaptureResolutionManager;->syncResolution(Lcom/htc/camera/ae;Lcom/htc/camera/ae;Lcom/htc/camera/CameraType;)V

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolution:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "onSettingsChanged() - Settings is changed, sync video resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/htc/camera/am;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ae;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/htc/camera/component/CaptureResolutionManager;->syncResolution(Lcom/htc/camera/ae;Lcom/htc/camera/ae;Lcom/htc/camera/CameraType;)V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions()V

    .line 275
    return-void
.end method

.method private setPhotoResolution(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 470
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    .line 471
    :goto_0
    if-nez v2, :cond_0

    .line 472
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v3, "setPhotoResolution() - Change to same resolution"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;

    .line 474
    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->needSaveToSettings:Z

    .line 477
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aa;

    invoke-interface {v0, p1}, Lcom/htc/camera/aa;->getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;

    move-result-object v1

    .line 480
    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aa;

    invoke-interface {v0, p1, p2}, Lcom/htc/camera/aa;->getPreviewSize(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3, p2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 489
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoPreviewSize:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 490
    return v2

    .line 470
    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 474
    goto :goto_1
.end method

.method private setPhotoResolutionProvider(Lcom/htc/camera/Handle;Lcom/htc/camera/aa;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 529
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v3, "setPhotoResolutionProvider() - Handle : "

    invoke-static {v0, v3, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v3, "setPhotoResolutionProvider() - Provider : "

    invoke-static {v0, v3, p2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v3, "setPhotoResolutionProvider() - Flags : "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolutionProvider() - Change to same provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :goto_0
    return-void

    .line 539
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoResolutionsHandle:Lcom/htc/camera/Handle;

    .line 540
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v3, p2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolution:Z

    .line 544
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolutionBack:Z

    .line 545
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolution:Z

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_3

    :goto_3
    invoke-direct {p0, v0, v2, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 543
    goto :goto_1

    :cond_2
    move v0, v2

    .line 544
    goto :goto_2

    :cond_3
    move v1, v2

    .line 545
    goto :goto_3
.end method

.method private setVideoResolution(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Z
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 678
    :goto_0
    if-nez v1, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "setVideoResolution() - Change to same resolution"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    if-eqz v1, :cond_1

    .line 684
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/am;

    invoke-interface {v0, p1}, Lcom/htc/camera/am;->getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;

    move-result-object v2

    .line 685
    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/am;

    invoke-interface {v0, p1, p2}, Lcom/htc/camera/am;->getPreviewSize(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Lcom/htc/camera/imaging/Size;

    move-result-object v0

    .line 693
    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 694
    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoPreviewSize:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 697
    invoke-direct {p0, p2}, Lcom/htc/camera/component/CaptureResolutionManager;->updateVideoBitRate(Lcom/htc/camera/Resolution;)V

    .line 698
    invoke-direct {p0, p2}, Lcom/htc/camera/component/CaptureResolutionManager;->updateMaxVideoSize(Lcom/htc/camera/Resolution;)V

    .line 699
    return v1

    .line 677
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method private setVideoResolutionProvider(Lcom/htc/camera/Handle;Lcom/htc/camera/am;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 584
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v3, "setVideoResolutionProvider() - Handle : "

    invoke-static {v0, v3, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v3, "setVideoResolutionProvider() - Provider : "

    invoke-static {v0, v3, p2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v3, "setVideoResolutionProvider() - Flags : "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, p2}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setVideoResolutionProvider() - Change to same provider"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :goto_0
    return-void

    .line 594
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_VideoResolutionsHandle:Lcom/htc/camera/Handle;

    .line 595
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v3, p2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 598
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolution:Z

    .line 599
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolutionBack:Z

    .line 600
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolution:Z

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_3

    :goto_3
    invoke-direct {p0, v2, v0, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 598
    goto :goto_1

    :cond_2
    move v0, v2

    .line 599
    goto :goto_2

    :cond_3
    move v1, v2

    .line 600
    goto :goto_3
.end method

.method private syncBackPhotoResolution(Lcom/htc/camera/CameraType;)V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "syncBackPhotoResolution("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 708
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/htc/camera/aa;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/component/CaptureResolutionManager;->syncBackResolution(Lcom/htc/camera/ae;Lcom/htc/camera/CameraType;)V

    .line 709
    return-void
.end method

.method private syncBackResolution(Lcom/htc/camera/ae;Lcom/htc/camera/CameraType;)V
    .locals 4

    .prologue
    .line 716
    invoke-interface {p1, p2}, Lcom/htc/camera/ae;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 717
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    invoke-interface {p1, p2, v1, v0}, Lcom/htc/camera/ae;->getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;

    move-result-object v1

    .line 718
    invoke-interface {p1, p2}, Lcom/htc/camera/ae;->getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;

    move-result-object v2

    .line 719
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 721
    :cond_0
    return-void
.end method

.method private syncBackVideoResolution(Lcom/htc/camera/CameraType;)V
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "syncBackVideoResolution("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 729
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/htc/camera/am;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/component/CaptureResolutionManager;->syncBackResolution(Lcom/htc/camera/ae;Lcom/htc/camera/CameraType;)V

    .line 730
    return-void
.end method

.method private syncResolution(Lcom/htc/camera/ae;Lcom/htc/camera/ae;Lcom/htc/camera/CameraType;)V
    .locals 4

    .prologue
    .line 738
    invoke-interface {p1, p3}, Lcom/htc/camera/ae;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 739
    const/4 v1, 0x0

    invoke-interface {p1, p3, v0, v1}, Lcom/htc/camera/ae;->getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 742
    invoke-interface {p2, p3}, Lcom/htc/camera/ae;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v1

    .line 743
    invoke-interface {p2, p3, v1, v0}, Lcom/htc/camera/ae;->getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;

    move-result-object v1

    .line 744
    invoke-interface {p2, p3}, Lcom/htc/camera/ae;->getResolutionSettingsKey(Lcom/htc/camera/CameraType;)Ljava/lang/String;

    move-result-object v2

    .line 745
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 747
    :cond_0
    return-void
.end method

.method private updateMaxVideoSize(Lcom/htc/camera/Resolution;)V
    .locals 17

    .prologue
    .line 754
    const-wide v3, 0x7fffffffffffffffL

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/component/CaptureResolutionManager;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    if-nez v1, :cond_0

    .line 757
    const-class v1, Lcom/htc/camera/IRecordingLimitController;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/IRecordingLimitController;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/camera/component/CaptureResolutionManager;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    .line 758
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/component/CaptureResolutionManager;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    if-nez v1, :cond_8

    .line 759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "updateMaxVideoSize() - No IRecordingLimitController interface"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    .line 768
    :goto_1
    if-eqz v1, :cond_20

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->isFat32()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 770
    const-wide v3, 0xff800000L

    move-wide v7, v3

    .line 774
    :goto_2
    sget-object v9, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getRequestedDurationLimit()Lcom/htc/camera/Duration;

    move-result-object v10

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getVideoMaximumSizeFromRequester()J

    move-result-wide v1

    .line 778
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1f

    const-wide/16 v3, 0x61a8

    cmp-long v3, v1, v3

    if-gez v3, :cond_1f

    .line 779
    const-wide/32 v1, 0xea60

    move-wide v12, v1

    .line 781
    :goto_3
    if-eqz p1, :cond_1c

    .line 783
    sget-object v1, Lcom/htc/camera/component/CaptureResolutionManager$14;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/htc/camera/Resolution;->isMmsVideo()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 822
    const/4 v3, 0x0

    .line 823
    const/4 v11, 0x0

    .line 826
    :try_start_0
    const-string v1, "content://htc-messages/message-capability/mms_size_limit_for_recording"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 828
    if-eqz v1, :cond_e

    .line 830
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 831
    if-eqz v3, :cond_1d

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1d

    .line 832
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 833
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v7

    move-object v2, v9

    .line 848
    :goto_4
    if-eqz v3, :cond_1

    .line 849
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_1
    if-eqz v1, :cond_2

    .line 854
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_5
    move-wide v2, v7

    .line 895
    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-lez v4, :cond_4

    .line 896
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 897
    :cond_4
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    .line 898
    const-wide/16 v2, 0x0

    .line 899
    :cond_5
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_7

    .line 901
    invoke-virtual {v1}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    :cond_6
    move-object v1, v10

    .line 904
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/CaptureResolutionManager;->maxVideoFileSize:Lcom/htc/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/CaptureResolutionManager;->maxVideoDuration:Lcom/htc/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 906
    return-void

    .line 762
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/htc/camera/io/StorageSlot;->getFreeSpace()J

    move-result-wide v5

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/CaptureResolutionManager;->m_RecordingLimitController:Lcom/htc/camera/IRecordingLimitController;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {v2, v1}, Lcom/htc/camera/IRecordingLimitController;->getVideoReservedSize(Lcom/htc/camera/io/StorageSlot;)J

    move-result-wide v1

    sub-long v1, v5, v1

    .line 764
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_9

    move-wide v1, v3

    :cond_9
    move-wide v3, v1

    goto/16 :goto_0

    .line 767
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 787
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getMmsMaximumSizeFromRequester()J

    move-result-wide v1

    .line 788
    const-wide/16 v3, 0x61a8

    cmp-long v3, v1, v3

    if-gez v3, :cond_b

    .line 789
    const-wide/32 v1, 0xea60

    .line 792
    :cond_b
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/CameraApplication;->hasSIE()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 793
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getMMSDuration()I

    move-result v3

    if-lez v3, :cond_1e

    .line 794
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getMMSDuration()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v3

    .line 802
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "maxDuration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v3

    move-wide v15, v1

    move-wide v2, v15

    move-object v1, v14

    .line 805
    goto/16 :goto_6

    .line 797
    :cond_c
    sget-object v3, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/htc/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/htc/camera/DisplayDevice$CustomMMS;

    if-ne v3, v4, :cond_d

    .line 798
    sget-object v3, Lcom/htc/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION:Lcom/htc/camera/Duration;

    goto :goto_7

    .line 799
    :cond_d
    sget-object v3, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/htc/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/htc/camera/DisplayDevice$CustomMMS;

    if-ne v3, v4, :cond_1e

    .line 800
    sget-object v3, Lcom/htc/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION_2X:Lcom/htc/camera/Duration;

    goto :goto_7

    .line 838
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v3, "updateMaxVideoSize() - No content provider for MMS recording size"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    sget-object v9, Lcom/htc/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION:Lcom/htc/camera/Duration;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v11

    move-object v2, v9

    goto/16 :goto_4

    .line 842
    :catch_0
    move-exception v1

    move-object v2, v11

    .line 844
    :goto_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v5, "updateMaxVideoSize() - Cannot get maximum MMS file size from settings"

    invoke-static {v4, v5, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 845
    sget-object v1, Lcom/htc/camera/component/CaptureResolutionManager;->MMS_RECORDING_DURATION:Lcom/htc/camera/Duration;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 848
    if-eqz v2, :cond_f

    .line 849
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_f
    if-eqz v3, :cond_3

    .line 854
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_5

    .line 848
    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v11, :cond_10

    .line 849
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_10
    if-eqz v3, :cond_11

    .line 854
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 848
    :cond_11
    throw v1

    .line 859
    :cond_12
    sget-object v1, Lcom/htc/camera/Resolution;->Video_VGA_Online:Lcom/htc/camera/Resolution;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/htc/camera/Resolution;->Video_720p_Online:Lcom/htc/camera/Resolution;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/htc/camera/Resolution;->Video_1080p_Online:Lcom/htc/camera/Resolution;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 863
    :cond_13
    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromMinutes(J)Lcom/htc/camera/Duration;

    move-result-object v1

    move-wide v2, v7

    goto/16 :goto_6

    .line 867
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_camera_recording_limit"

    invoke-virtual {v1, v2}, Lcom/htc/camera/CameraSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 868
    if-eqz v1, :cond_15

    .line 870
    const-string v2, "250kb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 871
    const-wide/32 v7, 0x3d090

    :cond_15
    :goto_a
    move-object v1, v9

    move-wide v2, v7

    .line 886
    goto/16 :goto_6

    .line 872
    :cond_16
    const-string v2, "1mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 873
    const-wide/32 v7, 0xf4240

    goto :goto_a

    .line 874
    :cond_17
    const-string v2, "2mb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 875
    const-wide/32 v7, 0x1e8480

    goto :goto_a

    .line 876
    :cond_18
    const-string v2, "10s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 877
    const-wide/16 v7, 0xa

    goto :goto_a

    .line 878
    :cond_19
    const-string v2, "30s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 879
    const-wide/16 v7, 0x1e

    goto :goto_a

    .line 880
    :cond_1a
    const-string v2, "1min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 881
    const-wide/16 v7, 0x3c

    goto :goto_a

    .line 882
    :cond_1b
    const-string v2, "3min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 883
    const-wide/16 v7, 0xb4

    goto :goto_a

    .line 892
    :cond_1c
    const-wide/16 v7, 0x0

    .line 893
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v1

    move-wide v2, v7

    goto/16 :goto_6

    .line 848
    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_9

    :catchall_2
    move-exception v2

    move-object v11, v3

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_9

    :catchall_3
    move-exception v1

    move-object v11, v2

    goto/16 :goto_9

    .line 842
    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_8

    :catch_2
    move-exception v2

    move-object v14, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v14

    goto/16 :goto_8

    :cond_1d
    move-object v2, v9

    goto/16 :goto_4

    :cond_1e
    move-object v3, v9

    goto/16 :goto_7

    :cond_1f
    move-wide v12, v1

    goto/16 :goto_3

    :cond_20
    move-wide v7, v3

    goto/16 :goto_2

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateResolutions(ZZZ)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 919
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "updateResolutions() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v0, Lcom/htc/camera/component/CaptureResolutionManager$13;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/CaptureResolutionManager$13;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 1043
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "updateResolutions("

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, ")"

    invoke-static {v0, v1, v2, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 934
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "updateResolutions() - Sync photo resolution : "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "updateResolutions() - Sync video resolution : "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 938
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "updateResolutions() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v4

    .line 948
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aa;

    invoke-interface {v0, v4}, Lcom/htc/camera/aa;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 949
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoResolutionsHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_2

    .line 951
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/htc/camera/aa;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/htc/camera/aa;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 952
    if-nez v0, :cond_2

    .line 953
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "updateResolutions() - No photo resolution list"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v1, v0

    .line 955
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;

    invoke-virtual {v0}, Lcom/htc/camera/s;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;

    .line 956
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 958
    iget-object v5, v0, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->resolution:Lcom/htc/camera/Resolution;

    .line 959
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 960
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 962
    invoke-virtual {v5, v0}, Lcom/htc/camera/Resolution;->contains(Lcom/htc/camera/Resolution;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 963
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 967
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionList:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 970
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aa;

    invoke-interface {v0, v4}, Lcom/htc/camera/aa;->getSupportedPhotoSizeModes(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 971
    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoSizeModes:Lcom/htc/camera/property/Property;

    iget-object v5, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2, v5, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 975
    if-eqz v1, :cond_c

    .line 977
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    move-object v2, v0

    .line 978
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aa;

    invoke-interface {v0, v4, v1, v2}, Lcom/htc/camera/aa;->getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 979
    if-nez v0, :cond_6

    .line 981
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 983
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "updateResolutions() - No photo resolution returned from provider, use maximum resolution"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 992
    :cond_6
    :goto_3
    invoke-direct {p0, v4, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->setPhotoResolution(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Z

    .line 995
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/am;

    invoke-interface {v0, v4}, Lcom/htc/camera/am;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 996
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_VideoResolutionsHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_7

    .line 998
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/htc/camera/am;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/htc/camera/am;->getResolutionList(Lcom/htc/camera/CameraType;)Ljava/util/List;

    move-result-object v0

    .line 999
    if-nez v0, :cond_7

    .line 1000
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "updateResolutions() - No video resolution list"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v1, v0

    .line 1002
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionList:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1005
    if-eqz v1, :cond_f

    .line 1007
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    move-object v2, v0

    .line 1008
    :goto_4
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/am;

    invoke-interface {v0, v4, v1, v2}, Lcom/htc/camera/am;->getResolution(Lcom/htc/camera/CameraType;Ljava/util/List;Lcom/htc/camera/Resolution;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 1009
    if-nez v0, :cond_8

    .line 1011
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 1013
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "updateResolutions() - No video resolution returned from provider, use maximum resolution"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 1022
    :cond_8
    :goto_5
    invoke-direct {p0, v4, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->setVideoResolution(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Z

    .line 1025
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateVideoBitRate(Lcom/htc/camera/Resolution;)V

    .line 1026
    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateMaxVideoSize(Lcom/htc/camera/Resolution;)V

    .line 1029
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/aa;

    invoke-interface {v0, v4}, Lcom/htc/camera/aa;->getContactPhotoResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 1030
    if-nez v0, :cond_9

    .line 1031
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/htc/camera/aa;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/htc/camera/aa;->getContactPhotoResolution(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Resolution;

    move-result-object v0

    .line 1032
    :cond_9
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->contactPhotoResolution:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1035
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 1036
    if-eqz p3, :cond_10

    iget-object v0, v1, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1038
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "updateResolutions() - Re-start preview to apply new resolutions"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v1, v3}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    :cond_a
    move-object v2, v3

    .line 977
    goto/16 :goto_2

    .line 987
    :cond_b
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "updateResolutions() - Empty photo resolution list"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    move-object v0, v3

    .line 991
    goto/16 :goto_3

    :cond_d
    move-object v2, v3

    .line 1007
    goto :goto_4

    .line 1017
    :cond_e
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "updateResolutions() - Empty video resolution list"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object v0, v3

    .line 1021
    goto :goto_5

    .line 1042
    :cond_10
    invoke-virtual {v1}, Lcom/htc/camera/CameraThread;->invalidateCameraParameters()V

    goto/16 :goto_0
.end method

.method private updateVideoBitRate(Lcom/htc/camera/Resolution;)V
    .locals 5

    .prologue
    const v0, 0x2dc6c0

    const v2, 0x1f400

    const v1, 0xc3500

    .line 1052
    if-eqz p1, :cond_1

    .line 1053
    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    .line 1056
    :goto_0
    const/16 v4, 0x780

    if-lt v3, v4, :cond_2

    .line 1057
    const v0, 0x1312d00

    .line 1101
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoBitRate:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1102
    return-void

    .line 1055
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1058
    :cond_2
    const/16 v4, 0x500

    if-lt v3, v4, :cond_3

    .line 1059
    const v0, 0xb71b00

    goto :goto_1

    .line 1060
    :cond_3
    const/16 v4, 0x3c0

    if-lt v3, v4, :cond_4

    .line 1061
    const v0, 0x4c4b40

    goto :goto_1

    .line 1062
    :cond_4
    const/16 v4, 0x320

    if-ge v3, v4, :cond_0

    .line 1064
    const/16 v4, 0x2d0

    if-ge v3, v4, :cond_0

    .line 1066
    const/16 v0, 0x280

    if-lt v3, v0, :cond_5

    .line 1067
    const v0, 0x186a00

    goto :goto_1

    .line 1068
    :cond_5
    const/16 v0, 0x1e0

    if-lt v3, v0, :cond_6

    .line 1069
    const v0, 0xf4240

    goto :goto_1

    .line 1070
    :cond_6
    const/16 v0, 0x160

    if-lt v3, v0, :cond_7

    move v0, v1

    .line 1071
    goto :goto_1

    .line 1072
    :cond_7
    const/16 v0, 0x140

    if-lt v3, v0, :cond_a

    .line 1074
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraStartMode;->MmsVideo:Lcom/htc/camera/CameraStartMode;

    if-ne v0, v3, :cond_9

    .line 1076
    sget-object v0, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/htc/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/htc/camera/DisplayDevice$CustomMMS;

    if-ne v0, v3, :cond_8

    move v0, v2

    .line 1077
    goto :goto_1

    :cond_8
    move v0, v1

    .line 1079
    goto :goto_1

    :cond_9
    move v0, v1

    .line 1082
    goto :goto_1

    .line 1084
    :cond_a
    const/16 v0, 0xb0

    if-lt v3, v0, :cond_d

    .line 1087
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->hasSIE()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1088
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getMMSVideoBitRate()I

    move-result v0

    goto :goto_1

    .line 1090
    :cond_b
    sget-object v0, Lcom/htc/camera/DisplayDevice;->CUSTOM_MMS:Lcom/htc/camera/DisplayDevice$CustomMMS;

    sget-object v1, Lcom/htc/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/htc/camera/DisplayDevice$CustomMMS;

    if-ne v0, v1, :cond_c

    move v0, v2

    .line 1091
    goto :goto_1

    .line 1093
    :cond_c
    const v0, 0x13880

    goto :goto_1

    .line 1098
    :cond_d
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateByteRate() - Unknown video resolution : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const v0, 0x11170

    goto/16 :goto_1

    .line 1098
    :cond_e
    const-string v0, "null"

    goto :goto_2
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/CaptureResolutionManager$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CaptureResolutionManager$1;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 138
    invoke-super {p0}, Lcom/htc/camera/ICaptureResolutionManager;->deinitializeOverride()V

    .line 139
    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/htc/camera/ICaptureResolutionManager;->initializeOverride()V

    .line 151
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 152
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/CaptureResolutionManager$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureResolutionManager$2;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 162
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/CaptureResolutionManager$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/CaptureResolutionManager$3;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 174
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/CaptureResolutionManager$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CaptureResolutionManager$4;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 186
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/CaptureResolutionManager$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CaptureResolutionManager$5;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 227
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions()V

    .line 229
    :cond_0
    return-void
.end method

.method public restorePhotoResolutionProvider(Lcom/htc/camera/Handle;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 284
    if-nez p1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "restorePhotoResolutionProvider() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "restorePhotoResolutionProvider() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/htc/camera/component/CaptureResolutionManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/CaptureResolutionManager$7;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Handle;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "restorePhotoResolutionProvider() - Handle : "

    invoke-static {v0, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "restorePhotoResolutionProvider() - Flags : "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoResolutionsHandle:Lcom/htc/camera/Handle;

    if-ne v0, p1, :cond_0

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_PhotoResolutionsHandle:Lcom/htc/camera/Handle;

    .line 314
    iput-boolean v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolution:Z

    .line 315
    iput-boolean v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolutionBack:Z

    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionProvider:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultPhotoResolutionProvider()Lcom/htc/camera/aa;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v1, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 327
    if-nez p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreVideoResolutionProvider() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreVideoResolutionProvider() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/htc/camera/component/CaptureResolutionManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/component/CaptureResolutionManager$8;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Handle;I)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "restoreVideoResolutionProvider() - Handle : "

    invoke-static {v0, v2, p1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "restoreVideoResolutionProvider() - Flags : "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_VideoResolutionsHandle:Lcom/htc/camera/Handle;

    if-ne v0, p1, :cond_0

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_VideoResolutionsHandle:Lcom/htc/camera/Handle;

    .line 357
    iput-boolean v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolution:Z

    .line 358
    iput-boolean v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolutionBack:Z

    .line 359
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionProvider:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CaptureResolutionManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getDefaultVideoResolutionProvider()Lcom/htc/camera/am;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v1, v1, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setMaxPhotoResolution(Lcom/htc/camera/Resolution;I)Lcom/htc/camera/CloseableHandle;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 369
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->threadAccessCheck()V

    .line 372
    if-nez p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setMaxPhotoResolution() - No resolution specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 380
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/htc/camera/Resolution;->contains(Lcom/htc/camera/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    or-int/lit8 p2, p2, 0x2

    .line 384
    :cond_1
    new-instance v3, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;

    invoke-direct {v3, p0, p1}, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Resolution;)V

    .line 385
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_MaxPhotoResolutionHandles:Lcom/htc/camera/s;

    invoke-virtual {v0, v3}, Lcom/htc/camera/s;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v4, "setMaxPhotoResolution() - Handle: "

    invoke-static {v0, v4, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    .line 391
    iput-boolean v1, v3, Lcom/htc/camera/component/CaptureResolutionManager$MaxResolutionHandle;->needSaveToSettings:Z

    move-object v0, v3

    .line 393
    goto :goto_0

    :cond_2
    move v0, v2

    .line 390
    goto :goto_1
.end method

.method public setPhotoResolution(Lcom/htc/camera/Resolution;)V
    .locals 3

    .prologue
    .line 403
    if-nez p1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolution() - No resolution specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolution() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/htc/camera/component/CaptureResolutionManager$9;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/CaptureResolutionManager$9;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Resolution;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolution() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->photoResolutionList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 433
    if-nez v0, :cond_4

    .line 435
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolution() - No resolution list"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_4
    const/4 v1, 0x0

    .line 439
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 441
    invoke-virtual {v0, p1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 443
    const/4 v0, 0x1

    .line 447
    :goto_1
    if-nez v0, :cond_6

    .line 449
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhotoResolution() - Resolution \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not in resolution list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_6
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/component/CaptureResolutionManager;->setPhotoResolution(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncPhotoResolutionBack:Z

    if-eqz v0, :cond_7

    .line 457
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->syncBackPhotoResolution(Lcom/htc/camera/CameraType;)V

    .line 460
    :cond_7
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 461
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoResolution() - Re-start preview to apply new resolutions"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public setPhotoResolutionProvider(Lcom/htc/camera/aa;I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setPhotoResolutionProvider() - No provider specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    .line 525
    :goto_0
    return-object v0

    .line 507
    :cond_0
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "PhotoResolutionProvider"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoResolutionProvider() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "setPhotoResolutionProvider() - Called from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v1, Lcom/htc/camera/component/CaptureResolutionManager$10;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/htc/camera/component/CaptureResolutionManager$10;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/SessionHandle;Lcom/htc/camera/aa;I)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 524
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/component/CaptureResolutionManager;->setPhotoResolutionProvider(Lcom/htc/camera/Handle;Lcom/htc/camera/aa;I)V

    goto :goto_0
.end method

.method public setVideoResolution(Lcom/htc/camera/Resolution;)V
    .locals 3

    .prologue
    .line 610
    if-nez p1, :cond_1

    .line 612
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setVideoResolution() - No resolution specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setVideoResolution() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    new-instance v0, Lcom/htc/camera/component/CaptureResolutionManager$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/CaptureResolutionManager$12;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/Resolution;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setVideoResolution() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->videoResolutionList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 640
    if-nez v0, :cond_4

    .line 642
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setVideoResolution() - No resolution list"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_4
    const/4 v1, 0x0

    .line 646
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 648
    invoke-virtual {v0, p1}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 650
    const/4 v0, 0x1

    .line 654
    :goto_1
    if-nez v0, :cond_6

    .line 656
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoResolution() - Resolution \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not in resolution list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_6
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/component/CaptureResolutionManager;->setVideoResolution(Lcom/htc/camera/CameraType;Lcom/htc/camera/Resolution;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-boolean v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->m_NeedToSyncVideoResolutionBack:Z

    if-eqz v0, :cond_7

    .line 664
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->syncBackVideoResolution(Lcom/htc/camera/CameraType;)V

    .line 667
    :cond_7
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 668
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "setVideoResolution() - Re-start preview to apply new resolutions"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->restartPreview(Lcom/htc/camera/CameraType;)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public setVideoResolutionProvider(Lcom/htc/camera/am;I)Lcom/htc/camera/Handle;
    .locals 3

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "setVideoResolutionProvider() - No provider specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v0, 0x0

    .line 580
    :goto_0
    return-object v0

    .line 562
    :cond_0
    new-instance v0, Lcom/htc/camera/SessionHandle;

    const-string v1, "VideoResolutionProvider"

    invoke-direct {v0, v1}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "setVideoResolutionProvider() - Create handle : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    invoke-virtual {p0}, Lcom/htc/camera/component/CaptureResolutionManager;->isDependencyThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/htc/camera/component/CaptureResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "setVideoResolutionProvider() - Called from another thread"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v1, Lcom/htc/camera/component/CaptureResolutionManager$11;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/htc/camera/component/CaptureResolutionManager$11;-><init>(Lcom/htc/camera/component/CaptureResolutionManager;Lcom/htc/camera/SessionHandle;Lcom/htc/camera/am;I)V

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/CaptureResolutionManager;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 579
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/htc/camera/component/CaptureResolutionManager;->setVideoResolutionProvider(Lcom/htc/camera/Handle;Lcom/htc/camera/am;I)V

    goto :goto_0
.end method

.method public updateResolutions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 914
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/htc/camera/component/CaptureResolutionManager;->updateResolutions(ZZZ)V

    .line 915
    return-void
.end method
