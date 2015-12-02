.class public Lcom/htc/camera/component/AudioResourceRestricController;
.super Lcom/htc/camera/component/cm;
.source "AudioResourceRestricController.java"


# instance fields
.field private final m_checkOwnAudioResourceHighPriorityProcessRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 38
    const-string v0, "AudioResourceRestricController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 172
    new-instance v0, Lcom/htc/camera/component/AudioResourceRestricController$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AudioResourceRestricController$5;-><init>(Lcom/htc/camera/component/AudioResourceRestricController;)V

    iput-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController;->m_checkOwnAudioResourceHighPriorityProcessRunnable:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AudioResourceRestricController;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController;->m_checkOwnAudioResourceHighPriorityProcessRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/AudioResourceRestricController;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/camera/component/AudioResourceRestricController;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/AudioResourceRestricController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onCameraThreadRunning()V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioResourceRestricController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/component/AudioResourceRestricController$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AudioResourceRestricController$4;-><init>(Lcom/htc/camera/component/AudioResourceRestricController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method private setupCallback()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 73
    invoke-virtual {p0}, Lcom/htc/camera/component/AudioResourceRestricController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 75
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/AudioResourceRestricController$1;

    iget-object v3, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/camera/component/AudioResourceRestricController$1;-><init>(Lcom/htc/camera/component/AudioResourceRestricController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AudioResourceRestricController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 90
    if-eqz v0, :cond_0

    .line 92
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/AudioResourceRestricController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AudioResourceRestricController$2;-><init>(Lcom/htc/camera/component/AudioResourceRestricController;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/AudioResourceRestricController$3;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->isCameraThreadRunning:Lcom/htc/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/component/AudioResourceRestricController$3;-><init>(Lcom/htc/camera/component/AudioResourceRestricController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method private showToast(I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 116
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AudioResourceRestricController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 117
    const-class v1, Lcom/htc/camera/ak;

    invoke-virtual {p0, v1}, Lcom/htc/camera/component/AudioResourceRestricController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/ak;

    .line 118
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 121
    iget-object v2, v0, Lcom/htc/camera/capturemode/CaptureMode;->isVideoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    if-ne p1, v3, :cond_1

    .line 126
    const v0, 0x7f080192

    invoke-virtual {v1, v0}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const v0, 0x7f080193

    invoke-virtual {v1, v0}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 131
    :cond_2
    if-ne p1, v3, :cond_3

    .line 132
    const v0, 0x7f080194

    invoke-virtual {v1, v0}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 134
    :cond_3
    const v0, 0x7f080195

    invoke-virtual {v1, v0}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AudioResourceRestricController;->TAG:Ljava/lang/String;

    const-string v1, "showToast - No IToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 68
    :goto_0
    return-void

    .line 58
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/AudioResourceRestricController;->setupCallback()V

    goto :goto_0

    .line 61
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 62
    invoke-direct {p0, v0}, Lcom/htc/camera/component/AudioResourceRestricController;->showToast(I)V

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2774 -> :sswitch_0
    .end sparse-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 45
    const/16 v0, 0x2774

    invoke-virtual {p0, p0, v0}, Lcom/htc/camera/component/AudioResourceRestricController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    .line 46
    return-void
.end method
