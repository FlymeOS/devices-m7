.class public final Lcom/htc/camera/component/SensorFocusController;
.super Lcom/htc/camera/component/cm;
.source "SensorFocusController.java"


# instance fields
.field private m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

.field private m_EnableSensorFocusAfterTouchFocus:Z

.field private final m_HasMovement:[Z

.field private m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

.field private m_NeedSensorFocusAfterPreview:Z

.field private m_NeedSensorFocusWhenGSensorMoving:Z

.field private m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

.field private m_SensorState:I

.field private m_SensorValues:[F

.field private m_StableSensorValues:[F

.field private m_TouchDownZoomValue:I

.field private m_UnstableThreshold:F


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    const-string v0, "Sensor-Focus Controller"

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    .line 58
    iput v1, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorState:I

    .line 61
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F

    .line 63
    iput-boolean v2, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    .line 65
    iput-boolean v2, p0, Lcom/htc/camera/component/SensorFocusController;->m_EnableSensorFocusAfterTouchFocus:Z

    .line 67
    iput v1, p0, Lcom/htc/camera/component/SensorFocusController;->m_TouchDownZoomValue:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SensorFocusController;J)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/SensorFocusController;->restartSensorFocus(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/SensorFocusController;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/camera/component/SensorFocusController;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorState:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/camera/component/SensorFocusController;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/camera/component/SensorFocusController;[F)[F
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    return-object p1
.end method

.method static synthetic access$1202(Lcom/htc/camera/component/SensorFocusController;[F)[F
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_StableSensorValues:[F

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/SensorFocusController;)Lcom/htc/camera/IObjectTracker;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/SensorFocusController;)Lcom/htc/camera/AutoFocusMode;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/AutoFocusMode;)Lcom/htc/camera/AutoFocusMode;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/camera/component/SensorFocusController;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_TouchDownZoomValue:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/SensorFocusController;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_TouchDownZoomValue:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/camera/component/SensorFocusController;F)F
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F

    return p1
.end method

.method static synthetic access$632(Lcom/htc/camera/component/SensorFocusController;F)F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F

    return v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/SensorFocusController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/camera/component/SensorFocusController;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_EnableSensorFocusAfterTouchFocus:Z

    return p1
.end method

.method static synthetic access$902(Lcom/htc/camera/component/SensorFocusController;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    return p1
.end method

.method private checkSensorFocus([F)V
    .locals 9

    .prologue
    const/16 v2, 0x2711

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 82
    iput v8, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorState:I

    .line 83
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->updateSensorValues([F)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_EnableSensorFocusAfterTouchFocus:Z

    if-eqz v0, :cond_2

    .line 86
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    const-string v1, "checkSensorFocus - trigger startSensorFocus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/htc/camera/component/SensorFocusController;->startSensorFocus()V

    .line 94
    :cond_1
    const/4 v5, 0x0

    const-wide/16 v6, 0xbe

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/SensorFocusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 99
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/SensorFocusController;->restartSensorFocus(J)V

    goto :goto_0
.end method

.method private checkSensorValuesChanged([F)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    if-nez v0, :cond_1

    .line 111
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->updateSensorValues([F)V

    .line 146
    :cond_0
    :goto_0
    return v2

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_StableSensorValues:[F

    if-nez v0, :cond_2

    .line 116
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->updateStableSensorValues([F)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 126
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_5

    .line 128
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v0, v0, v1

    aget v4, p1, v1

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    aput-boolean v2, v0, v1

    .line 132
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_StableSensorValues:[F

    aget v4, p1, v1

    aput v4, v0, v1

    .line 126
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v0, v0, v1

    aget v4, p1, v1

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v4, p1, v1

    aput v4, v0, v1

    .line 140
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    aput-boolean v3, v0, v1

    .line 141
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F

    .line 142
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_UnstableThreshold:F

    goto :goto_2

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method private enterUnstableState()V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 158
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resetFocusMode()V

    goto :goto_0
.end method

.method private restartSensorFocus(J)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    :goto_0
    return-void

    .line 575
    :cond_0
    const/16 v2, 0x2712

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/SensorFocusController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0
.end method

.method private startSensorFocus()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x12c

    const/16 v2, 0x2712

    .line 597
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 598
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_EnableSensorFocusAfterTouchFocus:Z

    if-nez v0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->canSensorFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    const-string v1, "startSensorFocus() - Cannot trigger sensor focus"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/camera/component/SensorFocusController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0

    .line 608
    :cond_2
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->handleSensorFocus(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 610
    invoke-virtual {p0, p0, v2, v3, v4}, Lcom/htc/camera/component/SensorFocusController;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    goto :goto_0

    .line 614
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusAfterPreview:Z

    .line 615
    sget-object v0, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    goto :goto_0
.end method

.method private updateSensorValues([F)V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    if-nez v0, :cond_0

    .line 625
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    .line 626
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 627
    iget-object v1, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 626
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 628
    :cond_1
    return-void
.end method

.method private updateStableSensorValues([F)V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_StableSensorValues:[F

    if-nez v0, :cond_0

    .line 636
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_StableSensorValues:[F

    .line 637
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 638
    iget-object v1, p0, Lcom/htc/camera/component/SensorFocusController;->m_StableSensorValues:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 637
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 640
    iget-object v1, p0, Lcom/htc/camera/component/SensorFocusController;->m_HasMovement:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 639
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 641
    :cond_2
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    .line 172
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 173
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 232
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Facetouch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/SensorFocusController;->startSensorFocus()V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/htc/camera/component/SensorFocusController;->startSensorFocus()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->restartSensorFocus()V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isContinuousAFSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/htc/camera/component/SensorFocusController;->startSensorFocus()V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->numberOfDetectedFaces:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :cond_4
    invoke-direct {p0}, Lcom/htc/camera/component/SensorFocusController;->startSensorFocus()V

    .line 215
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_LastFocusMode:Lcom/htc/camera/AutoFocusMode;

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_NeedSensorFocusWhenGSensorMoving:Z

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    const-string v1, "m_EnableSensorFocusAfterTouchFocus = true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_EnableSensorFocusAfterTouchFocus:Z

    .line 226
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 244
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 247
    const-class v0, Lcom/htc/camera/effect/IEffectControlUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SensorFocusController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectControlUI;

    iput-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_EffectControlUI:Lcom/htc/camera/effect/IEffectControlUI;

    .line 248
    const-class v0, Lcom/htc/camera/IObjectTracker;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SensorFocusController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IObjectTracker;

    iput-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    .line 251
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 255
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SensorFocusController$1;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 268
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SensorFocusController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    .line 269
    if-eqz v0, :cond_0

    .line 271
    iget-object v0, v0, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SensorFocusController$2;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 282
    :cond_0
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SensorFocusController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 283
    if-eqz v0, :cond_1

    .line 285
    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SensorFocusController$3;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 296
    :cond_1
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->touchPreviewEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$4;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/component/SensorFocusController$4;-><init>(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 315
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$5;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/component/SensorFocusController$5;-><init>(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/HTCCamera;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 348
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->focusMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$6;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SensorFocusController$6;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 377
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->triggers:Lcom/htc/camera/base/BaseObjectList;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$7;

    sget-object v3, Lcom/htc/camera/HTCCamera;->PROPERTY_IS_CAMERA_OPEN:Lcom/htc/camera/base/PropertyKey;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v1, v3, v4}, Lcom/htc/camera/component/SensorFocusController$7;-><init>(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/base/BaseObjectList;->add(Lcom/htc/camera/base/BaseObject;)Z

    .line 385
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$8;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/SensorFocusController$8;-><init>(Lcom/htc/camera/component/SensorFocusController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SensorFocusController$9;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 417
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isAccelerometerStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SensorFocusController$10;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 439
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SensorFocusController$11;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 454
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isAutoFocusing:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/SensorFocusController$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/SensorFocusController$12;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 480
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/SensorFocusController$13;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SensorFocusController$13;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 512
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_ObjectTracker:Lcom/htc/camera/IObjectTracker;

    iget-object v0, v0, Lcom/htc/camera/IObjectTracker;->focusedObject:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/SensorFocusController$14;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SensorFocusController$14;-><init>(Lcom/htc/camera/component/SensorFocusController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IObjectTracker interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAccelerometerValuesChanged([F)V
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorState:I

    packed-switch v0, :pswitch_data_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 544
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->checkSensorFocus([F)V

    goto :goto_0

    .line 548
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->checkSensorValuesChanged([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->checkSensorFocus([F)V

    goto :goto_0

    .line 553
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->updateSensorValues([F)V

    .line 554
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->updateStableSensorValues([F)V

    goto :goto_0

    .line 558
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->checkSensorValuesChanged([F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-direct {p0, p1}, Lcom/htc/camera/component/SensorFocusController;->checkSensorFocus([F)V

    .line 561
    invoke-direct {p0}, Lcom/htc/camera/component/SensorFocusController;->enterUnstableState()V

    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public restartSensorFocus()V
    .locals 2

    .prologue
    .line 579
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SensorFocusController;->removeMessages(I)V

    .line 580
    invoke-virtual {p0}, Lcom/htc/camera/component/SensorFocusController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->m_SensorValues:[F

    invoke-direct {p0, v0}, Lcom/htc/camera/component/SensorFocusController;->checkSensorFocus([F)V

    .line 585
    invoke-direct {p0}, Lcom/htc/camera/component/SensorFocusController;->enterUnstableState()V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SensorFocusController;->TAG:Ljava/lang/String;

    const-string v1, "restartSensorFocus() - No sensor values"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
