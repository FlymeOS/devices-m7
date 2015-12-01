.class final Lcom/htc/camera/component/UIRotationManager;
.super Lcom/htc/camera/IUIRotationManager;
.source "UIRotationManager.java"


# instance fields
.field private m_ActualRotation:Lcom/htc/camera/rotate/UIRotation;

.field private m_IsFirstOrientationChange:Z

.field private m_IsOrientationListenerChanged:Z

.field private m_IsShakePreventionEntered:Z

.field private m_LastDeviceOrientation:I

.field private m_LastRotationChangeTime:J

.field private final m_LockHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/component/co;",
            ">;"
        }
    .end annotation
.end field

.field private m_OrientationDropCounter:I

.field private final m_OrientationListener:Landroid/view/OrientationEventListener;

.field private m_ShakePreventionCounter:I

.field private m_SharedBackgroundWorker:Lcom/htc/camera/ag;

.field private final m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

.field private final m_StopOrientationListenerRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 103
    const-string v0, "UI Rotation Manager"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/IUIRotationManager;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 59
    new-instance v0, Lcom/htc/camera/component/UIRotationManager$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/UIRotationManager$1;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    iput-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/htc/camera/component/UIRotationManager$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/UIRotationManager$2;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    iput-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    .line 88
    iput-boolean v2, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsOrientationListenerChanged:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    .line 106
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 107
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v3}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 110
    new-instance v0, Lcom/htc/camera/component/UIRotationManager$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/component/UIRotationManager$3;-><init>(Lcom/htc/camera/component/UIRotationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    .line 120
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->disableFakeUIRotation()V

    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->disableUIRotationChangeNotification()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/UIRotationManager;)Landroid/view/OrientationEventListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_OrientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/UIRotationManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/UIRotationManager;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsOrientationListenerChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/camera/component/UIRotationManager;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsOrientationListenerChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/UIRotationManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/UIRotationManager;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/component/UIRotationManager;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/rotate/UIRotation;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/rotate/UIRotation;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager;->m_ActualRotation:Lcom/htc/camera/rotate/UIRotation;

    return-object p1
.end method

.method static synthetic access$702(Lcom/htc/camera/component/UIRotationManager;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/camera/component/UIRotationManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/component/UIRotationManager;->stopOrientationListener()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/component/UIRotationManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/component/UIRotationManager;->startOrientationListener()V

    return-void
.end method

.method private enterShakePrevention()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 129
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "enterShakePrevention() - Orientation listener is not started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-boolean v5, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    .line 142
    const/16 v2, 0x2711

    const-wide/16 v3, 0x12c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/UIRotationManager;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0
.end method

.method private exitShakePrevention()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "exitShakePrevention()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-boolean v2, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    .line 170
    iput v2, p0, Lcom/htc/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 173
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/UIRotationManager;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_ActualRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->m_ActualRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 178
    invoke-direct {p0, v0}, Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private onOrientationChanged(I)V
    .locals 3

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsOrientationListenerChanged:Z

    .line 483
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    if-lez v0, :cond_1

    .line 485
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->deviceOrientation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 491
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "onOrientationChanged() - Unknown orientation"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_2
    iput p1, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 499
    iget-boolean v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 500
    :goto_1
    invoke-static {v0, p1}, Lcom/htc/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/htc/camera/rotate/UIRotation;I)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v1

    .line 503
    iget-boolean v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 504
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->setCaptureRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 507
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    .line 510
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0, v1}, Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    goto :goto_1
.end method

.method private onRotationChanged(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;Z)V

    .line 523
    return-void

    .line 522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRotationChanged(Lcom/htc/camera/rotate/UIRotation;Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_ActualRotation:Lcom/htc/camera/rotate/UIRotation;

    if-ne v0, p1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iput-object p1, p0, Lcom/htc/camera/component/UIRotationManager;->m_ActualRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 533
    iget-wide v4, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x258

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    const/4 v0, 0x1

    .line 534
    :goto_1
    iput-wide v2, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastRotationChangeTime:J

    .line 535
    if-eqz v0, :cond_4

    .line 537
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-ge v0, v8, :cond_2

    .line 538
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 539
    :cond_2
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    if-lt v0, v8, :cond_6

    .line 541
    invoke-direct {p0}, Lcom/htc/camera/component/UIRotationManager;->enterShakePrevention()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 533
    goto :goto_1

    .line 545
    :cond_4
    iget-boolean v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsShakePreventionEntered:Z

    if-eqz v0, :cond_5

    .line 547
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "onRotationChanged() - Shake prevention"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_5
    iput v1, p0, Lcom/htc/camera/component/UIRotationManager;->m_ShakePreventionCounter:I

    .line 554
    :cond_6
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v9}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 556
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Lcom/htc/camera/property/Property;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 557
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 561
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 564
    if-eqz p2, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraThread;->setCaptureRotation(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method private startOrientationListener()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 574
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "startOrientationListener()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    .line 583
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 585
    :cond_0
    iput-boolean v3, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsFirstOrientationChange:Z

    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_OrientationDropCounter:I

    .line 588
    :cond_1
    return-void

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_StartOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private stopOrientationListener()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "stopOrientationListener()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    if-eqz v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isOrientationListenerStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/htc/camera/component/UIRotationManager;->exitShakePrevention()V

    .line 608
    :cond_1
    return-void

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_StopOrientationListenerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public getAvailableDeviceOrientation()I
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 188
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGSensorOrientation()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 661
    aget v1, v0, v4

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, v0, v5

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    aget v1, v0, v6

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSensor X:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",Z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v0, -0x2

    .line 686
    :goto_0
    return v0

    .line 666
    :cond_0
    const/4 v1, -0x1

    .line 667
    aget v2, v0, v4

    neg-float v2, v2

    .line 668
    aget v3, v0, v5

    neg-float v3, v3

    .line 669
    aget v0, v0, v6

    neg-float v0, v0

    .line 670
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    .line 673
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    mul-float/2addr v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_2

    .line 674
    const v0, 0x42652ee1

    .line 675
    neg-float v1, v3

    float-to-double v3, v1

    float-to-double v1, v2

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    .line 676
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5a

    .line 678
    :goto_1
    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    .line 679
    add-int/lit16 v0, v0, -0x168

    goto :goto_1

    .line 681
    :cond_1
    :goto_2
    if-gez v0, :cond_3

    .line 682
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    :cond_2
    move v0, v1

    .line 685
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSensor orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 217
    invoke-super {p0, p1}, Lcom/htc/camera/IUIRotationManager;->handleMessage(Landroid/os/Message;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/UIRotationManager;->exitShakePrevention()V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_IsOrientationListenerChanged:Z

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getGSensorOrientation()I

    move-result v0

    .line 208
    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 209
    const/16 v2, 0x2712

    const-wide/16 v3, 0x64

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/UIRotationManager;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {v0}, Lcom/htc/camera/rotate/UIRotation;->fromDeviceOrientation(I)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;Z)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 229
    invoke-super {p0}, Lcom/htc/camera/IUIRotationManager;->initializeOverride()V

    .line 232
    const-class v0, Lcom/htc/camera/ag;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    iput-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_SharedBackgroundWorker:Lcom/htc/camera/ag;

    .line 233
    const-class v0, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    .line 236
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 237
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->popupOpeningEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/UIRotationManager$4;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/UIRotationManager$4;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 248
    :cond_0
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_RESUMING:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/UIRotationManager$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/UIRotationManager$5;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    invoke-virtual {v2, v1, v3}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 261
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_STOPPING:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/UIRotationManager$6;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/UIRotationManager$6;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    invoke-virtual {v2, v1, v3}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 283
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/UIRotationManager$7;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/UIRotationManager$7;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 303
    iget-object v1, v2, Lcom/htc/camera/HTCCamera;->isAccelerometerStarted:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/UIRotationManager$8;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/UIRotationManager$8;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 323
    if-eqz v0, :cond_3

    .line 325
    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->triggers:Lcom/htc/camera/base/BaseObjectList;

    new-instance v3, Lcom/htc/camera/component/UIRotationManager$9;

    sget-object v4, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_IS_PREVIEW_RESOURCE_READY:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/htc/camera/component/UIRotationManager$9;-><init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v3}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/UIRotationManager$10;

    iget-object v3, v2, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/camera/component/UIRotationManager$10;-><init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isInitialFakeRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    const-class v0, Lcom/htc/camera/effect/IEffectControlUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectControlUI;

    .line 354
    const-class v1, Lcom/htc/camera/IZoomBar;

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/UIRotationManager;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/IZoomBar;

    .line 355
    iget-object v3, v2, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v4, Lcom/htc/camera/component/UIRotationManager$11;

    invoke-direct {v4, p0}, Lcom/htc/camera/component/UIRotationManager$11;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    invoke-virtual {v3, v4}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 365
    iget-object v3, v2, Lcom/htc/camera/HTCCamera;->flashButtonClickedEvent:Lcom/htc/camera/event/Event;

    new-instance v4, Lcom/htc/camera/component/UIRotationManager$12;

    invoke-direct {v4, p0}, Lcom/htc/camera/component/UIRotationManager$12;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    invoke-virtual {v3, v4}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 373
    iget-object v3, p0, Lcom/htc/camera/component/UIRotationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/camera/component/UIRotationManager$13;

    iget-object v5, v2, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/camera/component/UIRotationManager$13;-><init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v3, p0, Lcom/htc/camera/component/UIRotationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/camera/component/UIRotationManager$14;

    iget-object v5, v2, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/camera/component/UIRotationManager$14;-><init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v3, p0, Lcom/htc/camera/component/UIRotationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/camera/component/UIRotationManager$15;

    iget-object v5, v2, Lcom/htc/camera/HTCCamera;->isQuickLaunchState:Lcom/htc/camera/property/Property;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/camera/component/UIRotationManager$15;-><init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v3, p0, Lcom/htc/camera/component/UIRotationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/camera/component/UIRotationManager$16;

    iget-object v5, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v6, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/camera/component/UIRotationManager$16;-><init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v3, p0, Lcom/htc/camera/component/UIRotationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/camera/component/UIRotationManager$17;

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v5, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v4, p0, v2, v5}, Lcom/htc/camera/component/UIRotationManager$17;-><init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v2, p0, Lcom/htc/camera/component/UIRotationManager;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/camera/component/UIRotationManager$18;

    iget-object v4, p0, Lcom/htc/camera/component/UIRotationManager;->fakeRotation:Lcom/htc/camera/property/Property;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/camera/component/UIRotationManager$18;-><init>(Lcom/htc/camera/component/UIRotationManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v2, Lcom/htc/camera/component/UIRotationManager$19;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/UIRotationManager$19;-><init>(Lcom/htc/camera/component/UIRotationManager;)V

    .line 429
    if-eqz v0, :cond_1

    .line 430
    iget-object v0, v0, Lcom/htc/camera/effect/IEffectControlUI;->effectControlBarTrackingStartedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 431
    :cond_1
    if-eqz v1, :cond_2

    .line 432
    iget-object v0, v1, Lcom/htc/camera/IZoomBar;->zoomBarTrackingStartedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 436
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/UIRotationManager;->startOrientationListener()V

    .line 437
    return-void

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IViewFinder interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 445
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation(\'"

    const-string v3, "\', "

    const-string v5, ")"

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 448
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->threadAccessCheck()V

    .line 449
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 472
    :goto_0
    return-object v0

    .line 456
    :cond_0
    new-instance v7, Lcom/htc/camera/component/co;

    invoke-direct {v7, p1}, Lcom/htc/camera/component/co;-><init>(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - New handle : \'"

    const-string v3, "\' ["

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "lockRotation() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 464
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 465
    if-eqz p2, :cond_1

    .line 467
    iput-object v6, p0, Lcom/htc/camera/component/UIRotationManager;->m_ActualRotation:Lcom/htc/camera/rotate/UIRotation;

    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;Z)V

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraThread;->setCaptureRotation(Lcom/htc/camera/rotate/UIRotation;)V

    :cond_2
    move-object v0, v7

    .line 472
    goto :goto_0
.end method

.method public unlockRotation(Lcom/htc/camera/Handle;)V
    .locals 6

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->threadAccessCheck()V

    .line 618
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    if-nez p1, :cond_2

    .line 625
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Null handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_2
    instance-of v0, p1, Lcom/htc/camera/component/co;

    if-nez v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation(\'"

    iget-object v2, p1, Lcom/htc/camera/Handle;->name:Ljava/lang/String;

    const-string v3, "\' ["

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "])"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 639
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Invalid handle"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->TAG:Ljava/lang/String;

    const-string v1, "unlockRotation() - Handle count : "

    iget-object v2, p0, Lcom/htc/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LockHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/htc/camera/component/UIRotationManager;->isRotationLocked:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/UIRotationManager;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {p0}, Lcom/htc/camera/component/UIRotationManager;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 648
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0

    .line 652
    :cond_5
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 653
    iget v0, p0, Lcom/htc/camera/component/UIRotationManager;->m_LastDeviceOrientation:I

    invoke-static {v0}, Lcom/htc/camera/rotate/UIRotation;->fromDeviceOrientation(I)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/component/UIRotationManager;->onRotationChanged(Lcom/htc/camera/rotate/UIRotation;)V

    goto/16 :goto_0
.end method
