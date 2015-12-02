.class final Lcom/htc/camera/component/RecordingLimitController;
.super Lcom/htc/camera/IRecordingLimitController;
.source "RecordingLimitController.java"


# instance fields
.field private final m_FullStorageSlots:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/htc/camera/io/StorageSlot;",
            ">;"
        }
    .end annotation
.end field

.field private m_LastVideoContentUri:Landroid/net/Uri;

.field private m_LastVideoStorageSlot:Lcom/htc/camera/io/StorageSlot;

.field private m_RecordingLimitStateCheckInterval:J

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_SafetySpace:J


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 6

    .prologue
    .line 61
    const-string v1, "Recording Limit Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/IRecordingLimitController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;

    .line 62
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/RecordingLimitController;Lcom/htc/camera/MediaRecorderInfoEventArgs;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/component/RecordingLimitController;->onMediaRecorderInfoCallback(Lcom/htc/camera/MediaRecorderInfoEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/RecordingLimitController;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/component/RecordingLimitController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoContentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/component/RecordingLimitController;)Lcom/htc/camera/io/StorageSlot;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/htc/camera/io/StorageSlot;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/component/RecordingLimitController;Lcom/htc/camera/io/StorageSlot;)Lcom/htc/camera/io/StorageSlot;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/RecordingLimitController;->m_LastVideoStorageSlot:Lcom/htc/camera/io/StorageSlot;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/RecordingLimitController;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/RecordingLimitController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/RecordingLimitController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/RecordingLimitController;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/component/RecordingLimitController;->onStartingRecording()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/component/RecordingLimitController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/RecordingLimitController;)J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    return-wide v0
.end method

.method private onMediaRecorderInfoCallback(Lcom/htc/camera/MediaRecorderInfoEventArgs;)V
    .locals 6

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRecorderInfoCallback("

    iget v2, p1, Lcom/htc/camera/MediaRecorderInfoEventArgs;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", "

    iget v4, p1, Lcom/htc/camera/MediaRecorderInfoEventArgs;->extra:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaRecorderInfoCallback() - Current recording state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget v0, p1, Lcom/htc/camera/MediaRecorderInfoEventArgs;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingLimitState;->None:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingLimitState;->DurationLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingLimitState;->None:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/htc/camera/property/Property;

    const-wide v1, 0xff800000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingLimitState;->FileSystemLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingLimitState;->FileSizeLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onStartingRecording()V
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    .line 351
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/component/RecordingLimitController;->getRemainingRecordingDuration(JI)Lcom/htc/camera/Duration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/RecordingLimitController;->updateRecordingLimitStateCheckInterval(Lcom/htc/camera/Duration;)V

    .line 354
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/RecordingLimitController;->getVideoReservedSize(Lcom/htc/camera/io/StorageSlot;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_SafetySpace:J

    .line 355
    return-void
.end method

.method private updateRecordingLimitState()V
    .locals 5

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v1, "updateRecordingLimitState()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    .line 369
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/component/RecordingLimitController;->getRemainingRecordingDuration(JI)Lcom/htc/camera/Duration;

    move-result-object v0

    .line 370
    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v1, "updateRecordingLimitState() - remainingDuration is null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v2, "updateRecordingLimitState() - Remaining seconds : "

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 378
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v1, "updateRecordingLimitState() - Storage space limit reached"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingLimitState;->StorageSpaceLimitReached:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController;->recordingLimitState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/RecordingLimitController;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/RecordingLimitState;->None:Lcom/htc/camera/RecordingLimitState;

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    invoke-direct {p0, v0}, Lcom/htc/camera/component/RecordingLimitController;->updateRecordingLimitStateCheckInterval(Lcom/htc/camera/Duration;)V

    goto :goto_0
.end method

.method private updateRecordingLimitStateCheckInterval(Lcom/htc/camera/Duration;)V
    .locals 4

    .prologue
    .line 396
    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    .line 401
    :goto_0
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 402
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    .line 407
    :goto_1
    return-void

    .line 399
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 403
    :cond_1
    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 404
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    goto :goto_1

    .line 406
    :cond_2
    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    goto :goto_1
.end method


# virtual methods
.method public getRemainingRecordingDuration(Lcom/htc/camera/io/StorageSlot;JI)Lcom/htc/camera/Duration;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->threadAccessCheck()V

    .line 75
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v1, "getRemainingRecordingDuration() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v2, v3}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v1, "getRemainingRecordingDuration() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v2, v3}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    if-nez p1, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->storageSlot:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/io/StorageSlot;

    move-object p1, v0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-static {v2, v3}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/camera/io/StorageSlot;->getFreeSpace()J

    move-result-wide v0

    .line 101
    and-int/lit8 v4, p4, 0x1

    if-nez v4, :cond_a

    .line 103
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v5, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v4, v5}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 104
    iget-wide v4, p0, Lcom/htc/camera/component/RecordingLimitController;->m_SafetySpace:J

    sub-long/2addr v0, v4

    move-wide v4, v0

    .line 111
    :goto_1
    cmp-long v0, v4, v2

    if-lez v0, :cond_9

    .line 113
    const-wide/16 v0, -0x1

    .line 114
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/camera/CameraThread;->getComponentManager()Lcom/htc/camera/component/CameraThreadComponentManager;

    move-result-object v6

    const-class v7, Lcom/htc/camera/ad;

    invoke-virtual {v6, v7}, Lcom/htc/camera/component/CameraThreadComponentManager;->getComponents(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ad;

    .line 116
    const/4 v1, 0x0

    invoke-interface {v0, v1, v4, v5}, Lcom/htc/camera/ad;->estimateRemainingRecordingSeconds(Lcom/htc/camera/io/StorageSlot;J)J

    move-result-wide v0

    .line 117
    cmp-long v7, v0, v2

    if-ltz v7, :cond_4

    .line 120
    :cond_5
    cmp-long v6, v0, v2

    if-gez v6, :cond_6

    .line 122
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoBitRate:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 123
    add-int/lit16 v0, v0, 0x4e20

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    div-long v0, v4, v0

    .line 130
    :cond_6
    :goto_2
    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    .line 131
    iget-object v4, p0, Lcom/htc/camera/component/RecordingLimitController;->m_FullStorageSlots:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_7
    invoke-static {v0, v1}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto/16 :goto_0

    .line 106
    :cond_8
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/RecordingLimitController;->getVideoReservedSize(Lcom/htc/camera/io/StorageSlot;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long/2addr v0, v4

    move-wide v4, v0

    goto :goto_1

    :cond_9
    move-wide v0, v2

    .line 127
    goto :goto_2

    .line 136
    :catch_0
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v4, "getRemainingRecordingDuration() - Error"

    invoke-static {v1, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-static {v2, v3}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move-wide v4, v0

    goto :goto_1
.end method

.method public getVideoReservedSize(Lcom/htc/camera/io/StorageSlot;)J
    .locals 4

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/htc/camera/io/StorageSlot;->getFreeSpace()J

    move-result-wide v0

    .line 154
    :goto_0
    long-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/32 v2, 0x500000

    add-long/2addr v0, v2

    const-wide/32 v2, 0x1400000

    add-long/2addr v0, v2

    .line 155
    return-wide v0

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v3, "getVideoReservedSize() - storageSlot is nul"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 181
    invoke-super {p0, p1}, Lcom/htc/camera/IRecordingLimitController;->handleMessage(Landroid/os/Message;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/htc/camera/component/RecordingLimitController;->updateRecordingLimitState()V

    .line 171
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->TAG:Ljava/lang/String;

    const-string v1, "Check limit state after "

    iget-wide v2, p0, Lcom/htc/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, " ms"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    const/16 v0, 0x2711

    iget-wide v1, p0, Lcom/htc/camera/component/RecordingLimitController;->m_RecordingLimitStateCheckInterval:J

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/component/RecordingLimitController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 193
    invoke-super {p0}, Lcom/htc/camera/IRecordingLimitController;->initializeOverride()V

    .line 196
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/component/RecordingLimitController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 199
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 200
    invoke-virtual {p0}, Lcom/htc/camera/component/RecordingLimitController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 201
    iget-object v2, v1, Lcom/htc/camera/CameraThread;->mediaRecorderInfoCallbackEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/RecordingLimitController$1;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/RecordingLimitController$1;-><init>(Lcom/htc/camera/component/RecordingLimitController;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 209
    iget-object v2, v1, Lcom/htc/camera/CameraThread;->mediaDeletedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/RecordingLimitController$2;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/RecordingLimitController$2;-><init>(Lcom/htc/camera/component/RecordingLimitController;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 227
    sget-object v2, Lcom/htc/camera/CameraThread;->EVENT_MEDIA_SAVED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/RecordingLimitController$3;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/RecordingLimitController$3;-><init>(Lcom/htc/camera/component/RecordingLimitController;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraThread;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 236
    new-instance v2, Lcom/htc/camera/component/RecordingLimitController$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/RecordingLimitController$4;-><init>(Lcom/htc/camera/component/RecordingLimitController;)V

    .line 252
    new-instance v3, Lcom/htc/camera/component/RecordingLimitController$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/RecordingLimitController$5;-><init>(Lcom/htc/camera/component/RecordingLimitController;)V

    .line 268
    new-instance v4, Lcom/htc/camera/component/RecordingLimitController$6;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/htc/camera/component/RecordingLimitController$6;-><init>(Lcom/htc/camera/component/RecordingLimitController;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/b;Lcom/htc/camera/event/a;)V

    invoke-virtual {v0, v4}, Lcom/htc/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 280
    iget-object v0, v1, Lcom/htc/camera/CameraThread;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/RecordingLimitController$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/RecordingLimitController$7;-><init>(Lcom/htc/camera/component/RecordingLimitController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 304
    return-void
.end method
