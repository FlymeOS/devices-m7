.class final Lcom/htc/camera/component/SmileCaptureController;
.super Lcom/htc/camera/component/s;
.source "SmileCaptureController.java"


# instance fields
.field private m_IsEnabled:Z

.field private m_UI:Lcom/htc/camera/component/SmileCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 35
    const-string v0, "Smile-Capture Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/s;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SmileCaptureController;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/htc/camera/component/SmileCaptureController;->m_IsEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/SmileCaptureController;)Lcom/htc/camera/component/SmileCaptureUI;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController;->m_UI:Lcom/htc/camera/component/SmileCaptureUI;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/SmileCaptureController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateSmileCaptureState(ZZ)V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateSmileCaptureState("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    iput-boolean p1, p0, Lcom/htc/camera/component/SmileCaptureController;->m_IsEnabled:Z

    .line 117
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_3

    .line 120
    if-eqz p1, :cond_1

    .line 122
    const-string v1, "ola-sbd-options"

    const-string v2, "120"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - Enable smile-capturer"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    if-eqz p2, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_1
    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_blink detection"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/CameraSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const-string v1, "ola-sbd-options"

    const-string v2, "103"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - Enable blink"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v1, "ola-sbd-options"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - None"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/htc/camera/component/SmileCaptureController;->TAG:Ljava/lang/String;

    const-string v2, "updateSmileCaptureState() - Cannot apply settings"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/SmileCaptureController;->TAG:Ljava/lang/String;

    const-string v1, "updateSmileCaptureState() - No camera controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureController;->m_UI:Lcom/htc/camera/component/SmileCaptureUI;

    .line 48
    invoke-super {p0}, Lcom/htc/camera/component/s;->deinitializeOverride()V

    .line 49
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Lcom/htc/camera/component/s;->handleMessage(Landroid/os/Message;)V

    .line 71
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/SmileCaptureUI;

    iput-object v0, p0, Lcom/htc/camera/component/SmileCaptureController;->m_UI:Lcom/htc/camera/component/SmileCaptureUI;

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/SmileCaptureController;->updateSmileCaptureState(ZZ)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/htc/camera/component/s;->initializeOverride()V

    .line 83
    invoke-virtual {p0}, Lcom/htc/camera/component/SmileCaptureController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 86
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/SmileCaptureController$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SmileCaptureController$1;-><init>(Lcom/htc/camera/component/SmileCaptureController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 104
    return-void
.end method
