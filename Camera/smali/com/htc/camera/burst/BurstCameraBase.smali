.class public abstract Lcom/htc/camera/burst/BurstCameraBase;
.super Lcom/htc/camera/burst/IBurstCamera;
.source "BurstCameraBase.java"


# instance fields
.field private final m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

.field private m_JpegTimerHandle:Lcom/htc/camera/Handle;

.field private m_SessionHandle:Lcom/htc/camera/Handle;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/burst/IBurstCamera;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 34
    new-instance v0, Lcom/htc/camera/burst/BurstCameraBase$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/burst/BurstCameraBase$1;-><init>(Lcom/htc/camera/burst/BurstCameraBase;)V

    iput-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/burst/BurstCameraBase;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/burst/BurstCameraBase;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/burst/BurstCameraBase;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/burst/BurstCameraBase;)Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final getSessionHandle()Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/camera/burst/IBurstCamera;->initializeOverride()V

    .line 76
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 77
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraClosingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/burst/BurstCameraBase$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/burst/BurstCameraBase$2;-><init>(Lcom/htc/camera/burst/BurstCameraBase;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 96
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/burst/BurstCameraBase$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/burst/BurstCameraBase$3;-><init>(Lcom/htc/camera/burst/BurstCameraBase;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 111
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/burst/BurstCameraBase$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/burst/BurstCameraBase$4;-><init>(Lcom/htc/camera/burst/BurstCameraBase;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 127
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    :cond_0
    return-void
.end method

.method protected final isCurrentSession(Lcom/htc/camera/Handle;)Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBurstShotJpegReceived(Lcom/htc/camera/Handle;[B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/htc/camera/burst/BurstCameraBase;->isCurrentSession(Lcom/htc/camera/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "onBurstShotJpegReceived() - Different sessions, ignore call-back"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 167
    :goto_0
    return v0

    .line 150
    :cond_0
    sget-object v2, Lcom/htc/camera/burst/BurstCameraBase$7;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 156
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstShotJpegReceived() - Current burst camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 157
    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/b;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 164
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->jpegReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/imaging/JpegEventArgs;

    invoke-direct {v2, v0, p2}, Lcom/htc/camera/imaging/JpegEventArgs;-><init>(I[B)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onBurstShotShutterReceived(Lcom/htc/camera/Handle;)Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/htc/camera/burst/BurstCameraBase;->onOneShotShutterReceived(Lcom/htc/camera/Handle;)Z

    move-result v0

    return v0
.end method

.method protected onJpegTimeout(Lcom/htc/camera/Handle;I)Z
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/htc/camera/burst/BurstCameraBase;->isCurrentSession(Lcom/htc/camera/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "onJpegTimeout() - Different sessions, ignore timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    .line 194
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->jpegTimeoutEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/OneValueEventArgs;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 197
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->reset()V

    .line 200
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onOneShotJpegReceived(Lcom/htc/camera/Handle;[B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    if-eq p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "onOneShotJpegReceived() - Different sessions, ignore call-back"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 244
    :goto_0
    return v0

    .line 214
    :cond_0
    sget-object v2, Lcom/htc/camera/burst/BurstCameraBase$7;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 221
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOneShotJpegReceived() - Current burst camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 222
    goto :goto_0

    .line 226
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->stopJpegTimeoutTimer()V

    .line 229
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/b;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 232
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->jpegReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/imaging/JpegEventArgs;

    invoke-direct {v2, v0, p2}, Lcom/htc/camera/imaging/JpegEventArgs;-><init>(I[B)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 235
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/burst/BurstCameraState;->TakingOneShot:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->onResetStates()V

    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onOneShotShutterReceived(Lcom/htc/camera/Handle;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    if-eq p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "onOneShotShutterReceived() - Different sessions, ignore call-back"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 276
    :goto_0
    return v0

    .line 258
    :cond_0
    sget-object v2, Lcom/htc/camera/burst/BurstCameraBase$7;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 265
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOneShotShutterReceived() - Current burst camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 266
    goto :goto_0

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/b;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 273
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->shutterReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/OneValueEventArgs;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/htc/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 276
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareTakingOneShot()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method protected onResetStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/b;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/b;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/b;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    .line 304
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->Unavailable:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->threadAccessCheck()V

    .line 314
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "reset() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    :pswitch_0
    return-void

    .line 321
    :cond_0
    sget-object v1, Lcom/htc/camera/burst/BurstCameraBase$7;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 330
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->stopBurstShots()V

    goto :goto_0

    .line 327
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->onResetStates()V

    goto :goto_0

    .line 333
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "reset() - Stopping burst shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final startJpegTimeoutTimer(Lcom/htc/camera/Handle;I)V
    .locals 8

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_TimeoutController:Lcom/htc/camera/debug/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimeoutCallback:Lcom/htc/camera/debug/b;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v6, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    .line 354
    :cond_1
    return-void
.end method

.method protected final stopJpegTimeoutTimer()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    .line 366
    :cond_0
    return-void
.end method

.method public takeOneShot()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->threadAccessCheck()V

    .line 376
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "takeOneShot() - Component is not running"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->Ready:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "takeOneShot() - Current burst camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->onPrepareTakingOneShot()Z

    move-result v1

    if-nez v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "takeOneShot() - Fail to prepare taking picture"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/BurstCameraBase;->takePicture(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/burst/BurstCameraBase;->startJpegTimeoutTimer(Lcom/htc/camera/Handle;I)V

    .line 402
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->TakingOneShot:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 405
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final takePicture(Z)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v3

    .line 415
    if-nez v3, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - No camera device"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_0
    return v0

    .line 421
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v4, "takePicture("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, ")"

    invoke-static {v2, v4, v5, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p0}, Lcom/htc/camera/burst/BurstCameraBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 425
    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getPreviewResourceLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 428
    :try_start_0
    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->isPreviewResourceReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Preview resource is unavailable"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    monitor-exit v4

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 435
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    if-nez v2, :cond_4

    move v2, v1

    .line 436
    :goto_1
    if-eqz v2, :cond_2

    .line 437
    new-instance v5, Lcom/htc/camera/SessionHandle;

    invoke-direct {v5}, Lcom/htc/camera/SessionHandle;-><init>()V

    iput-object v5, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :cond_2
    if-eqz p1, :cond_3

    .line 444
    :try_start_2
    invoke-virtual {v3}, Lcom/htc/camera/CameraController;->disableReview()V

    .line 447
    :cond_3
    iget-object v5, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    .line 448
    new-instance v6, Lcom/htc/camera/burst/BurstCameraBase$5;

    invoke-direct {v6, p0, p1, v5}, Lcom/htc/camera/burst/BurstCameraBase$5;-><init>(Lcom/htc/camera/burst/BurstCameraBase;ZLcom/htc/camera/Handle;)V

    const/4 v7, 0x0

    new-instance v8, Lcom/htc/camera/burst/BurstCameraBase$6;

    invoke-direct {v8, p0, p1, v5}, Lcom/htc/camera/burst/BurstCameraBase$6;-><init>(Lcom/htc/camera/burst/BurstCameraBase;ZLcom/htc/camera/Handle;)V

    invoke-virtual {v3, v6, v7, v8}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    iget-object v2, p0, Lcom/htc/camera/burst/BurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/b;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move v0, v1

    .line 489
    goto :goto_0

    :cond_4
    move v2, v0

    .line 435
    goto :goto_1

    .line 476
    :catch_0
    move-exception v1

    .line 478
    :try_start_4
    iget-object v3, p0, Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;

    const-string v5, "takePicture() - Fail to take picture"

    invoke-static {v3, v5, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    if-eqz v2, :cond_5

    .line 480
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase;->m_SessionHandle:Lcom/htc/camera/Handle;

    .line 481
    :cond_5
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
