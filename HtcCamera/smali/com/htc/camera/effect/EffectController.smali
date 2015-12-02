.class Lcom/htc/camera/effect/EffectController;
.super Lcom/htc/camera/effect/aa;
.source "EffectController.java"


# static fields
.field private static final MAX_GPU_PHOTO_RESOLUTION_16_9:Lcom/htc/camera/Resolution;

.field private static final MAX_GPU_PHOTO_RESOLUTION_1_1:Lcom/htc/camera/Resolution;

.field private static final MAX_GPU_PHOTO_RESOLUTION_4_3:Lcom/htc/camera/Resolution;

.field private static final MAX_GPU_PHOTO_RESOLUTION_5_3:Lcom/htc/camera/Resolution;

.field private static final m_NoneEffectInfo:Lcom/htc/camera/effect/GpuEffectInfo;


# instance fields
.field private m_ColorEffect:Ljava/lang/String;

.field private m_GpuEffect:Ljava/lang/String;

.field private final m_GpuEffectParams:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/camera/effect/GpuEffectParameters;",
            ">;"
        }
    .end annotation
.end field

.field private m_GpuEffectPhotoResProviderHandle:Lcom/htc/camera/CloseableHandle;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v1, 0x1000

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/htc/camera/Resolution;

    const/16 v2, 0x900

    const-string v5, "PHOTO_16_9_4096_2304"

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    sput-object v0, Lcom/htc/camera/effect/EffectController;->MAX_GPU_PHOTO_RESOLUTION_16_9:Lcom/htc/camera/Resolution;

    .line 28
    new-instance v0, Lcom/htc/camera/Resolution;

    const/16 v2, 0x999

    const-string v5, "PHOTO_5_3_4096_2457"

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    sput-object v0, Lcom/htc/camera/effect/EffectController;->MAX_GPU_PHOTO_RESOLUTION_5_3:Lcom/htc/camera/Resolution;

    .line 29
    new-instance v0, Lcom/htc/camera/Resolution;

    const/16 v2, 0xc00

    const-string v5, "PHOTO_4_3_4096_3072"

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    sput-object v0, Lcom/htc/camera/effect/EffectController;->MAX_GPU_PHOTO_RESOLUTION_4_3:Lcom/htc/camera/Resolution;

    .line 30
    new-instance v0, Lcom/htc/camera/Resolution;

    const-string v5, "PHOTO_1_1_4096_4096"

    sget-object v6, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    sput-object v0, Lcom/htc/camera/effect/EffectController;->MAX_GPU_PHOTO_RESOLUTION_1_1:Lcom/htc/camera/Resolution;

    .line 41
    new-instance v0, Lcom/htc/camera/effect/GpuEffectInfo;

    const-string v8, "0_bypass"

    const/4 v1, 0x2

    new-array v9, v1, [Lcom/htc/camera/effect/GpuEffectParameters;

    new-instance v1, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v2, "GE-param0"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v1 .. v7}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v1, v9, v3

    const/4 v10, 0x1

    new-instance v1, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v2, "GE-param1"

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-direct/range {v1 .. v7}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v1, v9, v10

    invoke-direct {v0, v8, v9}, Lcom/htc/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/htc/camera/effect/GpuEffectParameters;)V

    sput-object v0, Lcom/htc/camera/effect/EffectController;->m_NoneEffectInfo:Lcom/htc/camera/effect/GpuEffectInfo;

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 54
    const-string v0, "Effect Controller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/effect/aa;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 38
    const-string v0, "none"

    iput-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/effect/EffectController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/effect/EffectController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/effect/EffectController;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    return-object v0
.end method

.method private clearGpuEffectPhotoResProvider()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectPhotoResProviderHandle:Lcom/htc/camera/CloseableHandle;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectPhotoResProviderHandle:Lcom/htc/camera/CloseableHandle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/CloseableHandle;->close(I)Lcom/htc/camera/CloseableHandle;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectPhotoResProviderHandle:Lcom/htc/camera/CloseableHandle;

    .line 68
    :cond_0
    return-void
.end method

.method private setupGpuEffectPhotoResProvider()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectPhotoResProviderHandle:Lcom/htc/camera/CloseableHandle;

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_1

    .line 373
    const/4 v0, 0x5

    .line 377
    iget-object v1, p0, Lcom/htc/camera/effect/EffectController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    sget-object v2, Lcom/htc/camera/effect/EffectController;->MAX_GPU_PHOTO_RESOLUTION_1_1:Lcom/htc/camera/Resolution;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/ICaptureResolutionManager;->setMaxPhotoResolution(Lcom/htc/camera/Resolution;I)Lcom/htc/camera/CloseableHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectPhotoResProviderHandle:Lcom/htc/camera/CloseableHandle;

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setupGpuEffectPhotoResProvider() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-super {p0, p1}, Lcom/htc/camera/effect/aa;->handleMessage(Landroid/os/Message;)V

    .line 89
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 81
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/camera/effect/GpuEffectParameters;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/effect/EffectController;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;Z)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/htc/camera/effect/aa;->initializeOverride()V

    .line 101
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 152
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 166
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->preparingParamsAfterPreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/effect/EffectController$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectController$1;-><init>(Lcom/htc/camera/effect/EffectController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 188
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/htc/camera/effect/EffectController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/effect/EffectController$2;-><init>(Lcom/htc/camera/effect/EffectController;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_2
    if-nez p1, :cond_3

    .line 223
    const-string p1, "none"

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect() - Change to same effect"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_4
    iput-object p1, p0, Lcom/htc/camera/effect/EffectController;->m_ColorEffect:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcom/htc/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method public setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;Z)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffect() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/htc/camera/effect/EffectController$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/camera/effect/EffectController$3;-><init>(Lcom/htc/camera/effect/EffectController;Lcom/htc/camera/effect/GpuEffectInfo;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectController;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffect() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffect() - GPU effect is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    if-nez p1, :cond_4

    .line 279
    sget-object p1, Lcom/htc/camera/effect/EffectController;->m_NoneEffectInfo:Lcom/htc/camera/effect/GpuEffectInfo;

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v2, "setGpuEffect() - Effect name : "

    iget-object v3, p1, Lcom/htc/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    sget-object v0, Lcom/htc/camera/effect/EffectController;->m_NoneEffectInfo:Lcom/htc/camera/effect/GpuEffectInfo;

    iget-object v0, v0, Lcom/htc/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectController;->clearGpuEffectPhotoResProvider()V

    .line 290
    :goto_1
    iget-object v0, p1, Lcom/htc/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffect:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 292
    iget-object v8, p1, Lcom/htc/camera/effect/GpuEffectInfo;->parameters:[Lcom/htc/camera/effect/GpuEffectParameters;

    .line 293
    if-eqz v8, :cond_6

    .line 295
    array-length v2, v8

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_6

    aget-object v3, v8, v0

    .line 296
    iget-object v4, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    iget-object v5, v3, Lcom/htc/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 287
    :cond_5
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectController;->setupGpuEffectPhotoResProvider()V

    goto :goto_1

    .line 303
    :cond_6
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 306
    iget-object v2, p1, Lcom/htc/camera/effect/GpuEffectInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    .line 307
    if-eqz v8, :cond_7

    .line 309
    array-length v9, v8

    move v7, v1

    :goto_3
    if-ge v7, v9, :cond_7

    aget-object v6, v8, v7

    .line 310
    iget-object v1, v6, Lcom/htc/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    iget v2, v6, Lcom/htc/camera/effect/GpuEffectParameters;->n0:I

    iget v3, v6, Lcom/htc/camera/effect/GpuEffectParameters;->n1:I

    iget v4, v6, Lcom/htc/camera/effect/GpuEffectParameters;->n2:I

    iget v5, v6, Lcom/htc/camera/effect/GpuEffectParameters;->n3:I

    iget-boolean v6, v6, Lcom/htc/camera/effect/GpuEffectParameters;->enabled:Z

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 309
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3

    .line 312
    :cond_7
    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0
.end method

.method public setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 324
    if-nez p1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffectParameters() - No parameters specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffectParameters() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/16 v2, 0x2711

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/effect/EffectController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffectParameters() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_3
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportGpuEffect()Z

    move-result v0

    if-nez v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffectParameters() - GPU effect is not supported"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectController;->m_GpuEffectParams:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/htc/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p1, Lcom/htc/camera/effect/GpuEffectParameters;->key:Ljava/lang/String;

    iget v2, p1, Lcom/htc/camera/effect/GpuEffectParameters;->n0:I

    iget v3, p1, Lcom/htc/camera/effect/GpuEffectParameters;->n1:I

    iget v4, p1, Lcom/htc/camera/effect/GpuEffectParameters;->n2:I

    iget v5, p1, Lcom/htc/camera/effect/GpuEffectParameters;->n3:I

    iget-boolean v6, p1, Lcom/htc/camera/effect/GpuEffectParameters;->enabled:Z

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    .line 358
    if-eqz p2, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method
