.class public Lcom/htc/camera/component/ScreenSaveUI;
.super Lcom/htc/camera/component/cm;
.source "ScreenSaveUI.java"


# static fields
.field private static final SCREEN_DELAY_RESETCHECK_DELAY_SIGHTSEEING:I


# instance fields
.field private m_AccelerometerValues:[F

.field private m_CurrentOri:I

.field private m_HandShakeStableTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/htc/camera/HTCCamera;->SCREEN_DELAY_SIGHTSEEING:I

    add-int/lit16 v0, v0, -0x3e8

    sput v0, Lcom/htc/camera/component/ScreenSaveUI;->SCREEN_DELAY_RESETCHECK_DELAY_SIGHTSEEING:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 44
    const-string v0, "ScreenSaveUI"

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_AccelerometerValues:[F

    .line 36
    iput v1, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    .line 46
    iget-object v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/camera/component/ScreenSaveUI$1;

    invoke-virtual {p0}, Lcom/htc/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/htc/camera/component/ScreenSaveUI$1;-><init>(Lcom/htc/camera/component/ScreenSaveUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/ScreenSaveUI;[F)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ScreenSaveUI;->onAccelerometerValuesChanged([F)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/htc/camera/component/ScreenSaveUI;->SCREEN_DELAY_RESETCHECK_DELAY_SIGHTSEEING:I

    return v0
.end method

.method private isUnder4DimenThreshold()Z
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 200
    iget v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    add-int/lit16 v0, v0, -0x167

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    add-int/lit8 v0, v0, 0x0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    add-int/lit8 v0, v0, -0x5a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    add-int/lit16 v0, v0, -0xb4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    add-int/lit16 v0, v0, -0x10e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    if-eq v0, v1, :cond_1

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAccelerometerValuesChanged([F)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/htc/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 127
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->deviceOrientation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    move v0, v1

    .line 129
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 130
    iget-object v2, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_AccelerometerValues:[F

    aget v2, v2, v0

    aget v3, p1, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 135
    :goto_1
    if-eqz v0, :cond_1

    .line 137
    iput v1, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    .line 143
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_AccelerometerValues:[F

    const/4 v2, 0x3

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-void

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 84
    iget-object v1, v0, Lcom/htc/camera/HTCCamera;->accelerometerValues:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/ScreenSaveUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ScreenSaveUI$2;-><init>(Lcom/htc/camera/component/ScreenSaveUI;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 93
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_ACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/ScreenSaveUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ScreenSaveUI$3;-><init>(Lcom/htc/camera/component/ScreenSaveUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 102
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/ScreenSaveUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/ScreenSaveUI$4;-><init>(Lcom/htc/camera/component/ScreenSaveUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 110
    iget-object v1, p0, Lcom/htc/camera/component/ScreenSaveUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/ScreenSaveUI$5;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/ScreenSaveUI$5;-><init>(Lcom/htc/camera/component/ScreenSaveUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 164
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/htc/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 173
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 191
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 194
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const/4 v1, -0x1

    iget v3, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_CurrentOri:I

    if-eq v1, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/camera/component/ScreenSaveUI;->isUnder4DimenThreshold()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43960000    # 300.0f

    iget v3, p0, Lcom/htc/camera/component/ScreenSaveUI;->m_HandShakeStableTime:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->resetScreenSaveTimer()V

    .line 185
    iget-object v0, p0, Lcom/htc/camera/component/ScreenSaveUI;->TAG:Ljava/lang/String;

    const-string v1, "resetScreenSaveTimer"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSuspendInSightSeeing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/htc/camera/component/ScreenSaveUI;->SCREEN_DELAY_RESETCHECK_DELAY_SIGHTSEEING:I

    int-to-long v3, v0

    :goto_1
    move-object v0, p0

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ScreenSaveUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0x1d0d8

    goto :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 67
    invoke-direct {p0}, Lcom/htc/camera/component/ScreenSaveUI;->setupPropertyChangedCallbacks()V

    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/component/ScreenSaveUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isSuspendInSightSeeing:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/htc/camera/component/ScreenSaveUI;->SCREEN_DELAY_RESETCHECK_DELAY_SIGHTSEEING:I

    int-to-long v3, v0

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ScreenSaveUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z

    .line 71
    return-void

    .line 69
    :cond_0
    const-wide/32 v3, 0x1d0d8

    goto :goto_0
.end method
