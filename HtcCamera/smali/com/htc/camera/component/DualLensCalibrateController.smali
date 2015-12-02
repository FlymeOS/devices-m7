.class public final Lcom/htc/camera/component/DualLensCalibrateController;
.super Lcom/htc/camera/component/s;
.source "DualLensCalibrateController.java"

# interfaces
.implements Lcom/htc/camera/z;


# instance fields
.field private m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field private m_FocusRange:Lcom/htc/camera/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsEntered:Z

.field private m_IsTakingPicture:Z

.field private m_IsUiNeeded:Z

.field private pictureIdx:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 54
    const-string v0, "DualLensCalibrate Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/s;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/DualLensCalibrateController;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/DualLensCalibrateController;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsTakingPicture:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/component/DualLensCalibrateController;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsTakingPicture:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/DualLensCalibrateController;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsUiNeeded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/camera/component/DualLensCalibrateController;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsUiNeeded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/camera/component/DualLensCalibrateController;)Lcom/htc/camera/component/DualLensCalibrateUI;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/DualLensCalibrateController;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/camera/component/DualLensCalibrateController;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/DualLensCalibrateController;)Lcom/htc/camera/Range;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_FocusRange:Lcom/htc/camera/Range;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/DualLensCalibrateController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyLensServiceState(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 291
    const-class v0, Lcom/htc/camera/duallens/c;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/duallens/c;

    .line 292
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLensServiceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p1}, Lcom/htc/camera/duallens/c;->setDualLensServiceState(Ljava/lang/String;)Z

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    const-string v1, "createUserCaptureModeInternal() - No IDualLensServiceManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onEnterDualLensCalibrate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsEntered:Z

    .line 152
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_EffectController:Lcom/htc/camera/effect/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 155
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v2}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/DualLensCalibrateController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->getManualFocusRange()Lcom/htc/camera/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_FocusRange:Lcom/htc/camera/Range;

    .line 163
    iget v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I

    rem-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I

    .line 164
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_FocusRange:Lcom/htc/camera/Range;

    iget-object v0, v0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->setManualFocus(I)V

    .line 166
    :cond_1
    return-void
.end method

.method private onExitDualLensCalibrate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/htc/camera/component/DualLensCalibrateController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->setManualFocus(I)V

    .line 178
    :cond_0
    iput-boolean v2, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsEntered:Z

    .line 179
    iput v2, p0, Lcom/htc/camera/component/DualLensCalibrateController;->pictureIdx:I

    .line 180
    return-void
.end method

.method private setupEventHandlers()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/htc/camera/component/DualLensCalibrateController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 118
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/component/DualLensCalibrateController$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/DualLensCalibrateController$1;-><init>(Lcom/htc/camera/component/DualLensCalibrateController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 130
    return-void
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    invoke-super {p0, p1}, Lcom/htc/camera/component/s;->handleMessage(Landroid/os/Message;)V

    .line 83
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateController;->onEnterDualLensCalibrate()V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateController;->onExitDualLensCalibrate()V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/DualLensCalibrateUI;

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;

    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateController;->notifyLensServiceState(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-super {p0}, Lcom/htc/camera/component/s;->initializeOverride()V

    .line 95
    const-class v0, Lcom/htc/camera/component/DualLensCalibrateUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/DualLensCalibrateUI;

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;

    .line 96
    iget-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;

    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_DualLensCalibrateUI:Lcom/htc/camera/component/DualLensCalibrateUI;

    const/16 v2, 0x2713

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/DualLensCalibrateController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 100
    :cond_0
    const-class v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/DualLensCalibrateController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    iput-object v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 103
    iput-boolean v3, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsTakingPicture:Z

    .line 104
    iput-boolean v3, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsUiNeeded:Z

    .line 107
    invoke-direct {p0}, Lcom/htc/camera/component/DualLensCalibrateController;->setupEventHandlers()V

    .line 108
    return-void
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 189
    iget-boolean v1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsEntered:Z

    if-nez v1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 193
    :cond_0
    if-eqz p2, :cond_2

    .line 197
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Set capture mode to DualLensCalibrate"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "capture-mode-values"

    invoke-virtual {p2, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 199
    const-string v1, "capture-mode"

    const-string v2, "duallenscalibrate"

    invoke-virtual {p2, v1, v2}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    .line 207
    :goto_1
    invoke-virtual {p0}, Lcom/htc/camera/component/DualLensCalibrateController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    .line 210
    iput-boolean v0, p0, Lcom/htc/camera/component/DualLensCalibrateController;->m_IsTakingPicture:Z

    .line 213
    iget-object v2, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    const-string v3, "Take picture"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz p2, :cond_3

    .line 215
    new-instance v2, Lcom/htc/camera/component/DualLensCalibrateController$2;

    invoke-direct {v2, p0, v1}, Lcom/htc/camera/component/DualLensCalibrateController$2;-><init>(Lcom/htc/camera/component/DualLensCalibrateController;Lcom/htc/camera/CameraThread;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/htc/camera/component/DualLensCalibrateController$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/htc/camera/component/DualLensCalibrateController$3;-><init>(Lcom/htc/camera/component/DualLensCalibrateController;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p2, v2, v3, v4}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Cannot set capture mode to duallenscalibrate because there is no camera controller"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/DualLensCalibrateController;->TAG:Ljava/lang/String;

    const-string v2, "takePicture() - Cannot take picture because there is no camera controller"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
