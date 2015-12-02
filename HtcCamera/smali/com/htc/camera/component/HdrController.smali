.class public final Lcom/htc/camera/component/HdrController;
.super Lcom/htc/camera/component/s;
.source "HdrController.java"

# interfaces
.implements Lcom/htc/camera/z;


# instance fields
.field private m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

.field private m_EffectController:Lcom/htc/camera/effect/aa;

.field private m_HdrUI:Lcom/htc/camera/component/HdrUI;

.field private m_IsEntered:Z

.field private m_JpegTimerHandle:Lcom/htc/camera/Handle;

.field private m_SceneController:Lcom/htc/camera/effect/ac;

.field private m_ShutterSoundHandle:Lcom/htc/camera/Handle;

.field private m_TimeoutController:Lcom/htc/camera/debug/a;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 2

    .prologue
    .line 55
    const-string v0, "HDR Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/s;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/CaptureHandle;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CaptureHandle;)Lcom/htc/camera/CaptureHandle;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/component/HdrUI;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/HdrController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/Handle;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/camera/component/HdrController;)Lcom/htc/camera/debug/a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    return-object v0
.end method

.method public static final isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onEnterHdr(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/HdrController;->m_IsEntered:Z

    .line 136
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_EffectController:Lcom/htc/camera/effect/aa;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_EffectController:Lcom/htc/camera/effect/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 139
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_EffectController:Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, v2}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "hdr"

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExitHdr(I)V
    .locals 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrController;->m_IsEntered:Z

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/HdrController;->m_IsEntered:Z

    .line 208
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_SceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_SceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTakingPicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 402
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    if-eq v0, p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTakingPicture() - Invalid handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return v3

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    const-string v1, "cancelTakingPicture()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->cancelTakePicture()Z

    .line 414
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v1, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 417
    iput-object v7, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

    if-eqz v0, :cond_2

    .line 422
    iget-object v1, p0, Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/HdrController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 427
    :goto_1
    iput-object v7, p0, Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    move v3, v6

    .line 430
    goto :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    const-string v1, "No UI to notify MSG_PHOTO_PROCESSED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-super {p0, p1}, Lcom/htc/camera/component/s;->handleMessage(Landroid/os/Message;)V

    .line 82
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/HdrController;->onEnterHdr(I)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/htc/camera/component/HdrController;->onExitHdr(I)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/HdrUI;

    iput-object v0, p0, Lcom/htc/camera/component/HdrController;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/htc/camera/component/s;->initializeOverride()V

    .line 94
    const-class v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    iput-object v0, p0, Lcom/htc/camera/component/HdrController;->m_EffectController:Lcom/htc/camera/effect/aa;

    .line 95
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/component/HdrController;->m_SceneController:Lcom/htc/camera/effect/ac;

    .line 110
    return-void
.end method

.method public takePicture(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraController;)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 244
    iget-boolean v0, p0, Lcom/htc/camera/component/HdrController;->m_IsEntered:Z

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/HdrController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v8

    .line 250
    invoke-virtual {v8}, Lcom/htc/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    const-class v0, Lcom/htc/camera/IAudioManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager;

    .line 253
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/htc/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    if-nez v1, :cond_6

    .line 255
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isKDDI()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    const v1, 0x7f070008

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    move-object v7, v0

    .line 265
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-nez v0, :cond_1

    .line 266
    const-class v0, Lcom/htc/camera/debug/a;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/debug/a;

    iput-object v0, p0, Lcom/htc/camera/component/HdrController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    const-string v1, "HDR JPEG call-back"

    const-wide/16 v2, 0x4e20

    new-instance v4, Lcom/htc/camera/component/HdrController$1;

    invoke-direct {v4, p0, v8, p1}, Lcom/htc/camera/component/HdrController$1;-><init>(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CameraThread;Lcom/htc/camera/CaptureHandle;)V

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/debug/a;->startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/HdrController;->TAG:Ljava/lang/String;

    const-string v1, "Take picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :try_start_0
    iput-object p1, p0, Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 296
    new-instance v0, Lcom/htc/camera/component/HdrController$2;

    invoke-direct {v0, p0, p1, v8, v7}, Lcom/htc/camera/component/HdrController$2;-><init>(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraThread;Lcom/htc/camera/IAudioManager;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/component/HdrController$3;

    invoke-direct {v2, p0, p1, v8}, Lcom/htc/camera/component/HdrController$3;-><init>(Lcom/htc/camera/component/HdrController;Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CameraThread;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/htc/camera/CameraController;->takePicture(Lcom/htc/camera/m;Lcom/htc/camera/k;Lcom/htc/camera/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :cond_3
    const v1, 0x7f070007

    invoke-interface {v0, v1}, Lcom/htc/camera/IAudioManager;->loadSoundToMemory(I)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/htc/camera/Handle;

    move-object v7, v0

    goto :goto_1

    :cond_4
    move-object v7, v6

    .line 262
    goto :goto_1

    .line 380
    :catch_0
    move-exception v0

    .line 382
    iput-object v6, p0, Lcom/htc/camera/component/HdrController;->m_CaptureHandle:Lcom/htc/camera/CaptureHandle;

    .line 383
    iget-object v1, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_5

    .line 385
    iget-object v1, p0, Lcom/htc/camera/component/HdrController;->m_TimeoutController:Lcom/htc/camera/debug/a;

    iget-object v2, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v1, v2}, Lcom/htc/camera/debug/a;->stopTimer(Lcom/htc/camera/Handle;)V

    .line 386
    iput-object v6, p0, Lcom/htc/camera/component/HdrController;->m_JpegTimerHandle:Lcom/htc/camera/Handle;

    .line 388
    :cond_5
    throw v0

    :cond_6
    move-object v7, v0

    goto :goto_1
.end method
