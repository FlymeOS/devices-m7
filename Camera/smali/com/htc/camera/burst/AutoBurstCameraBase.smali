.class public abstract Lcom/htc/camera/burst/AutoBurstCameraBase;
.super Lcom/htc/camera/burst/BurstCameraBase;
.source "AutoBurstCameraBase.java"


# instance fields
.field private m_AutoBurstState:Lcom/htc/camera/burst/AutoBurstState;

.field private m_IsBurstDoneReceived:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 41
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/htc/camera/burst/BurstCameraBase;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 44
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 45
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->numberOfTakenPictures:Lcom/htc/camera/property/b;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/b;->enableLogs(I)V

    .line 46
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/b;->enableLogs(I)V

    .line 47
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->numberOfReceivedJpegs:Lcom/htc/camera/property/b;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/b;->enableLogs(I)V

    .line 50
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    new-instance v1, Lcom/htc/camera/burst/AutoBurstCameraBase$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/burst/AutoBurstCameraBase$1;-><init>(Lcom/htc/camera/burst/AutoBurstCameraBase;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/b;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/burst/AutoBurstCameraBase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/burst/AutoBurstCameraBase;Lcom/htc/camera/burst/AutoBurstState;)Lcom/htc/camera/burst/AutoBurstState;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->m_AutoBurstState:Lcom/htc/camera/burst/AutoBurstState;

    return-object p1
.end method


# virtual methods
.method protected final getAutoBurstState()Lcom/htc/camera/burst/AutoBurstState;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->m_AutoBurstState:Lcom/htc/camera/burst/AutoBurstState;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Lcom/htc/camera/burst/BurstCameraBase;->handleMessage(Landroid/os/Message;)V

    .line 100
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - HTC call-back timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->cancelTakePicture()Z

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onBurstDoneReceived()V

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage() - shutter call-back timeout"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->cancelTakePicture()Z

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onBurstDoneReceived()V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/htc/camera/burst/BurstCameraBase;->initializeOverride()V

    .line 112
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 113
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraClosingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/burst/AutoBurstCameraBase$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/burst/AutoBurstCameraBase$2;-><init>(Lcom/htc/camera/burst/AutoBurstCameraBase;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 121
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/burst/AutoBurstCameraBase$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/burst/AutoBurstCameraBase$3;-><init>(Lcom/htc/camera/burst/AutoBurstCameraBase;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 129
    return-void
.end method

.method protected onBurstDoneReceived()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->getSessionHandle()Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "onBurstDoneReceived() - Not capturing, ignore call-back"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-object v1, Lcom/htc/camera/burst/AutoBurstCameraBase$5;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 158
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstDoneReceived() - Current burst camera state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_0
    iput-boolean v2, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->m_IsBurstDoneReceived:Z

    .line 147
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 148
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "onBurstDoneReceived() - no shutter callback received"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "onBurstDoneReceived()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->removeMessages(I)V

    .line 166
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->removeMessages(I)V

    .line 169
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onResetStates()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "onBurstDoneReceived() - Taking burst-shots, save state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onBurstShotShutterReceived(Lcom/htc/camera/Handle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-super {p0, p1}, Lcom/htc/camera/burst/BurstCameraBase;->onBurstShotShutterReceived(Lcom/htc/camera/Handle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    const/4 v0, 0x0

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/htc/camera/burst/AutoBurstCameraBase;->removeMessages(I)V

    .line 185
    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/b;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->m_AutoBurstState:Lcom/htc/camera/burst/AutoBurstState;

    sget-object v2, Lcom/htc/camera/burst/AutoBurstState;->Capturing:Lcom/htc/camera/burst/AutoBurstState;

    if-ne v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "onBurstShotShutterReceived() - Stop burst shots"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/16 v1, 0x2711

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/htc/camera/burst/AutoBurstCameraBase;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 191
    sget-object v1, Lcom/htc/camera/burst/AutoBurstState;->Done:Lcom/htc/camera/burst/AutoBurstState;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->setAutoBurstState(Lcom/htc/camera/burst/AutoBurstState;Z)Z

    goto :goto_0
.end method

.method protected onHtcCallbackReceived(Lcom/htc/camera/HtcCallbackEventArgs;)V
    .locals 2

    .prologue
    .line 203
    iget v0, p1, Lcom/htc/camera/HtcCallbackEventArgs;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onBurstDoneReceived()V

    .line 205
    :cond_0
    return-void
.end method

.method protected onResetStates()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->m_IsBurstDoneReceived:Z

    .line 214
    invoke-super {p0}, Lcom/htc/camera/burst/BurstCameraBase;->onResetStates()V

    .line 215
    return-void
.end method

.method protected onSetAutoBurstState(Lcom/htc/camera/CameraController;Lcom/htc/camera/burst/AutoBurstState;Z)V
    .locals 2

    .prologue
    .line 222
    const-string v0, "contiburst-state"

    iget-object v1, p2, Lcom/htc/camera/burst/AutoBurstState;->parameterValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    if-eqz p3, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 225
    :cond_0
    return-void
.end method

.method protected final setAutoBurstState(Lcom/htc/camera/burst/AutoBurstState;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 232
    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "setAutoBurstState("

    const-string v3, ")"

    invoke-static {v1, v2, p1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->m_AutoBurstState:Lcom/htc/camera/burst/AutoBurstState;

    if-eq v1, p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoBurstState() - Set capture state to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/camera/burst/AutoBurstState;->parameterValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v1, p1, p2}, Lcom/htc/camera/burst/AutoBurstCameraBase;->onSetAutoBurstState(Lcom/htc/camera/CameraController;Lcom/htc/camera/burst/AutoBurstState;Z)V

    .line 240
    iput-object p1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->m_AutoBurstState:Lcom/htc/camera/burst/AutoBurstState;

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "setAutoBurstState() - No camera controller to set capture state"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startBurstShots()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->threadAccessCheck()V

    .line 260
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "startBurstShots() - Component is not running"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 296
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v3, "startBurstShots()"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v3, Lcom/htc/camera/burst/AutoBurstCameraBase$5;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBurstShots() - Current burst camera state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 289
    goto :goto_0

    .line 272
    :pswitch_1
    sget-object v0, Lcom/htc/camera/burst/AutoBurstState;->Capturing:Lcom/htc/camera/burst/AutoBurstState;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/burst/AutoBurstCameraBase;->setAutoBurstState(Lcom/htc/camera/burst/AutoBurstState;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v2, "startBurstShots() - Fail to set auto-burst state"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 275
    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/camera/burst/AutoBurstCameraBase;->takePicture(Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 278
    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Taking one shot, start burst shots later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/burst/BurstCameraState;->TakingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v2

    .line 296
    goto :goto_0

    .line 285
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "startBurstShots() - Already taking burst shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stopBurstShots()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 306
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->threadAccessCheck()V

    .line 307
    invoke-virtual {p0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/htc/camera/burst/AutoBurstCameraBase$5;->$SwitchMap$com$htc$camera$burst$BurstCameraState:[I

    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0}, Lcom/htc/camera/burst/BurstCameraState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 350
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopBurstShots() - Current burst camera state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots() - Stop burst shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->numberOfReceivedShutters:Lcom/htc/camera/property/b;

    invoke-virtual {v0}, Lcom/htc/camera/property/b;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 322
    sget-object v0, Lcom/htc/camera/burst/AutoBurstState;->Done:Lcom/htc/camera/burst/AutoBurstState;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/burst/AutoBurstCameraBase;->setAutoBurstState(Lcom/htc/camera/burst/AutoBurstState;Z)Z

    .line 323
    iget-boolean v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->m_IsBurstDoneReceived:Z

    if-nez v0, :cond_1

    .line 324
    const/16 v0, 0x2711

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/burst/AutoBurstCameraBase;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->burstCameraState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/burst/BurstCameraState;->StoppingBurstShots:Lcom/htc/camera/burst/BurstCameraState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots() - Burst-done call-back is received"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v0, Lcom/htc/camera/burst/AutoBurstCameraBase$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/burst/AutoBurstCameraBase$4;-><init>(Lcom/htc/camera/burst/AutoBurstCameraBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/burst/AutoBurstCameraBase;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots() - First shutter call-back has not been received, stop burst shots later"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/16 v0, 0x2712

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/htc/camera/burst/AutoBurstCameraBase;->sendMessage(Lcom/htc/camera/component/Component;IJ)Z

    .line 342
    sget-object v0, Lcom/htc/camera/burst/AutoBurstState;->Done:Lcom/htc/camera/burst/AutoBurstState;

    invoke-virtual {p0, v0, v3}, Lcom/htc/camera/burst/AutoBurstCameraBase;->setAutoBurstState(Lcom/htc/camera/burst/AutoBurstState;Z)Z

    goto :goto_1

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/burst/AutoBurstCameraBase;->TAG:Ljava/lang/String;

    const-string v1, "stopBurstShots() - Already stopping burst shots"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
