.class final Lcom/htc/camera/effect/VideoSceneController;
.super Lcom/htc/camera/effect/IVideoSceneController;
.source "VideoSceneController.java"

# interfaces
.implements Lcom/htc/camera/ac;


# static fields
.field private static final FullHD_60FPS_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

.field private static final HDR_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

.field private static final HD_60FPS_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;


# instance fields
.field private SLOW_MOTION_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

.field private m_CurrentResolutionProvider:Lcom/htc/camera/am;

.field private m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

.field private m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

.field private m_Scene:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/htc/camera/FixedVideoResolutionProvider;

    sget-object v1, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    invoke-direct {v0, v1}, Lcom/htc/camera/FixedVideoResolutionProvider;-><init>(Lcom/htc/camera/Resolution;)V

    sput-object v0, Lcom/htc/camera/effect/VideoSceneController;->HDR_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

    .line 62
    new-instance v0, Lcom/htc/camera/FixedVideoResolutionProvider;

    sget-object v1, Lcom/htc/camera/Resolution;->Video_720p:Lcom/htc/camera/Resolution;

    invoke-direct {v0, v1}, Lcom/htc/camera/FixedVideoResolutionProvider;-><init>(Lcom/htc/camera/Resolution;)V

    sput-object v0, Lcom/htc/camera/effect/VideoSceneController;->HD_60FPS_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

    .line 63
    new-instance v0, Lcom/htc/camera/FixedVideoResolutionProvider;

    sget-object v1, Lcom/htc/camera/Resolution;->Video_1080p:Lcom/htc/camera/Resolution;

    invoke-direct {v0, v1}, Lcom/htc/camera/FixedVideoResolutionProvider;-><init>(Lcom/htc/camera/Resolution;)V

    sput-object v0, Lcom/htc/camera/effect/VideoSceneController;->FullHD_60FPS_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 6

    .prologue
    .line 71
    const-string v1, "Video Scene Controller"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/effect/IVideoSceneController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 54
    const-string v0, "normal-video"

    iput-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/effect/VideoSceneController;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/camera/effect/VideoSceneController;->updateSlowMotionInfomation()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/effect/VideoSceneController;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/VideoSceneController;->setupResolutionProvider(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/effect/VideoSceneController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/effect/VideoSceneController;Lcom/htc/camera/CameraController;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/VideoSceneController;->setupParamsBeforeStartingPreview(Lcom/htc/camera/CameraController;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/effect/VideoSceneController;)Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/effect/VideoSceneController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setupParamsBeforeStartingPreview(Lcom/htc/camera/CameraController;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "setupParamsBeforeStartingPreview()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupParamsBeforeStartingPreview() - Current camera mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    const-string v1, "normal-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    const-string v1, "hd_60fps_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    const-string v1, "fullhd_60fps_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    :cond_2
    const-string v0, "video-hdr"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "HD 60fps video or FullHD 60fps, setCameraParameter, video-mode, 2"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "video-mode"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "video-hfr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1, v2}, Lcom/htc/camera/CameraController;->setVideoStabilization(Z)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    const-string v1, "hdr_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "setCameraParameter, video-hdr, true"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "video-mode"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "video-hdr"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "video-hfr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v2}, Lcom/htc/camera/CameraController;->setVideoStabilization(Z)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    const-string v1, "slow-motion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "SLOW_MOTION_VIDEO"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "video-hdr"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "video-hfr"

    const/16 v1, 0x78

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 259
    const-string v0, "slow-motion-version"

    invoke-virtual {p1, v0, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 261
    const-string v0, "cam-mode"

    invoke-virtual {p1, v0, v3}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 262
    invoke-virtual {p1, v2}, Lcom/htc/camera/CameraController;->setVideoStabilization(Z)V

    .line 263
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 264
    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/htc/camera/CameraController;->setPictureSizeParameter(II)V

    .line 265
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "setupParamsBeforeStartingPreview() - Enable slow motion mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "video-mode"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :cond_5
    const-string v0, "video-mode"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "video-hdr"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "video-hfr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/htc/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setupResolutionProvider(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_7

    .line 470
    const/4 v0, 0x0

    .line 471
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    .line 472
    const/4 v0, 0x2

    move v1, v0

    .line 475
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->currentVideoScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 477
    const-string v3, "hdr_video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    sget-object v0, Lcom/htc/camera/effect/VideoSceneController;->HDR_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

    .line 489
    :goto_1
    iget-object v3, p0, Lcom/htc/camera/effect/VideoSceneController;->m_CurrentResolutionProvider:Lcom/htc/camera/am;

    if-eq v3, v0, :cond_1

    .line 491
    if-eqz v0, :cond_6

    .line 493
    iget-object v2, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupResolutionProvider() - Change resolution provider to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {v2, v0, v1}, Lcom/htc/camera/ICaptureResolutionManager;->setVideoResolutionProvider(Lcom/htc/camera/am;I)Lcom/htc/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    .line 502
    :cond_0
    :goto_2
    iput-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_CurrentResolutionProvider:Lcom/htc/camera/am;

    .line 507
    :cond_1
    :goto_3
    return-void

    .line 479
    :cond_2
    const-string v3, "hd_60fps_video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 480
    sget-object v0, Lcom/htc/camera/effect/VideoSceneController;->HD_60FPS_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

    goto :goto_1

    .line 481
    :cond_3
    const-string v3, "fullhd_60fps_video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 482
    sget-object v0, Lcom/htc/camera/effect/VideoSceneController;->FullHD_60FPS_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

    goto :goto_1

    .line 483
    :cond_4
    const-string v3, "slow-motion"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->SLOW_MOTION_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 486
    goto :goto_1

    .line 496
    :cond_6
    iget-object v3, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v4, "setupResolutionProvider() - Reset resolution provider"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v3, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v4, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v3, v4, v1}, Lcom/htc/camera/ICaptureResolutionManager;->restoreVideoResolutionProvider(Lcom/htc/camera/Handle;I)V

    .line 500
    iput-object v2, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionProviderHandle:Lcom/htc/camera/Handle;

    goto :goto_2

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "seupResolutionProvider() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method private updateSlowMotionInfomation()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 513
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const-string v1, "slow-motion-x"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 516
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 521
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/htc/camera/effect/VideoSceneController;->slowMotionSpeed:Lcom/htc/camera/property/Property;

    iget-object v3, p0, Lcom/htc/camera/effect/VideoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlowMotionInfomation() - slow motion speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const-string v1, "slow-motion-res"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSlowMotionInfomation() - slow motion resolution:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 529
    if-gez v2, :cond_0

    .line 530
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "updateSlowMotionInfomation() - slow motion resolution is invalid"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_1
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v2, "updateSlowMotionInfomation() - Failed to parse speed, use default speed"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    .line 533
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 534
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 537
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "resolution_slow_motion_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v5, 0x78

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "_description"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    iget-object v3, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSlowMotionInfomation() - slow motion resolution description name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-class v3, Lcom/htc/camera/R$string;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 543
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    .line 550
    :goto_2
    :try_start_4
    new-instance v0, Lcom/htc/camera/Resolution;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SlowMotion_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/htc/camera/CameraMode;->Video:Lcom/htc/camera/CameraMode;

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/Resolution;-><init>(IIIILjava/lang/String;Lcom/htc/camera/CameraMode;)V

    .line 551
    new-instance v1, Lcom/htc/camera/FixedVideoResolutionProvider;

    invoke-direct {v1, v0}, Lcom/htc/camera/FixedVideoResolutionProvider;-><init>(Lcom/htc/camera/Resolution;)V

    iput-object v1, p0, Lcom/htc/camera/effect/VideoSceneController;->SLOW_MOTION_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 557
    :catch_1
    move-exception v0

    .line 558
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "updateSlowMotionInfomation() - failed to update slow motion information"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Lcom/htc/camera/FixedVideoResolutionProvider;

    sget-object v1, Lcom/htc/camera/Resolution;->Video_SlowMotion_768_432:Lcom/htc/camera/Resolution;

    invoke-direct {v0, v1}, Lcom/htc/camera/FixedVideoResolutionProvider;-><init>(Lcom/htc/camera/Resolution;)V

    iput-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->SLOW_MOTION_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;

    goto/16 :goto_1

    .line 545
    :catch_2
    move-exception v0

    .line 546
    :try_start_5
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v3, "updateSlowMotionInfomation() - The description name cannot be found. Reset descriptionId."

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "updateSlowMotionInfomation() - slow motion resolution is null or empty"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v0, Lcom/htc/camera/FixedVideoResolutionProvider;

    sget-object v1, Lcom/htc/camera/Resolution;->Video_SlowMotion_768_432:Lcom/htc/camera/Resolution;

    invoke-direct {v0, v1}, Lcom/htc/camera/FixedVideoResolutionProvider;-><init>(Lcom/htc/camera/Resolution;)V

    iput-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->SLOW_MOTION_VIDEO_RESOLUTION_PROVIDER:Lcom/htc/camera/am;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 84
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/effect/VideoSceneController;->setScene(Ljava/lang/String;I)V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/effect/IVideoSceneController;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/htc/camera/effect/IVideoSceneController;->initializeOverride()V

    .line 100
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    iput-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    .line 103
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/htc/camera/effect/VideoSceneController;->updateSlowMotionInfomation()V

    .line 107
    :cond_0
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraOpenEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/effect/VideoSceneController$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/VideoSceneController$1;-><init>(Lcom/htc/camera/effect/VideoSceneController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 115
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->cameraClosedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/effect/VideoSceneController$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/VideoSceneController$2;-><init>(Lcom/htc/camera/effect/VideoSceneController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 125
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/effect/VideoSceneController$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/VideoSceneController$3;-><init>(Lcom/htc/camera/effect/VideoSceneController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 144
    iget-object v1, v0, Lcom/htc/camera/CameraThread;->preparingParamsBeforeRecording:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/effect/VideoSceneController$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/VideoSceneController$4;-><init>(Lcom/htc/camera/effect/VideoSceneController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 174
    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/effect/VideoSceneController$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/VideoSceneController$5;-><init>(Lcom/htc/camera/effect/VideoSceneController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 182
    return-void
.end method

.method public setScene(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Called from another thread"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/16 v2, 0x2711

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v4

    move-object v0, p0

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/effect/VideoSceneController;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 221
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    if-nez p1, :cond_2

    .line 204
    const-string p1, "normal-video"

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Scene : "

    const-string v2, ", flags : "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    iput-object p1, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    .line 210
    const-string v0, "slow-motion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->isSlowMotionEnable:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/VideoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->currentVideoScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/VideoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    invoke-direct {p0, p2}, Lcom/htc/camera/effect/VideoSceneController;->setupResolutionProvider(I)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->isSlowMotionEnable:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/VideoSceneController;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setupMediaRecorder(Lcom/htc/camera/MediaRecorderParameters;Lcom/htc/camera/io/Path;)Z
    .locals 13

    .prologue
    const v12, 0xbb80

    const v11, 0xac44

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_Scene:Ljava/lang/String;

    const-string v1, "slow-motion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "setupMediaRecorder() - No ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_0
    :goto_0
    return v3

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v5

    .line 290
    iget-object v0, v5, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    iget v1, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    .line 291
    iget-object v0, v5, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    iget v4, v0, Lcom/htc/camera/CameraType;->orientation:I

    .line 292
    iget-object v0, v5, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 293
    add-int v0, v1, v4

    .line 297
    :goto_1
    rem-int/lit16 v0, v0, 0x168

    .line 299
    iget-object v1, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupMediaRecorder() - set rotation, mCaptureRotation = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOrientationHint(I)V

    .line 305
    :cond_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectStereoAudioRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isStereoRecordingEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v1, v2

    .line 307
    :goto_2
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canSelectRecordWithAudio()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v4, Lcom/htc/camera/CameraSettings;->PROPERTY_RECORD_WITH_AUDIO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v4}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v4, v2

    .line 308
    :goto_3
    if-eqz v4, :cond_5

    .line 311
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 313
    if-eqz v1, :cond_a

    .line 315
    iget-object v0, v5, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v5, v2, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 316
    invoke-virtual {v5}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 317
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v6, "startVideoRecording() - Enable stereo recording"

    invoke-static {v0, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_4
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSource(I)V

    .line 334
    :cond_5
    invoke-virtual {p1, v2}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSource(I)V

    .line 336
    sget v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->MPEG_4_PAUSEABLE:I

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_c

    .line 338
    sget v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->MPEG_4_PAUSEABLE:I

    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFormat(I)V

    .line 339
    invoke-virtual {v5, v2}, Lcom/htc/camera/CameraThread;->setIsVideoPauseSupported(Z)V

    .line 347
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setOutputFile :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Lcom/htc/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFile(Ljava/lang/String;)V

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoBitRate:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupMediaRecorder() - Video bit rate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoEncodingBitRate(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_6
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoDuration:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    .line 366
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupMediaRecorder() - Maximum video duration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_6

    .line 368
    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getMilliseconds()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setMaxDuration(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    :cond_6
    :goto_7
    :try_start_2
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->maxVideoFileSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 379
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupMediaRecorder() - Maximum video file size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1, v6, v7}, Lcom/htc/camera/MediaRecorderParameters;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 391
    :goto_8
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneController;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    const-string v6, "slow-motion-video-base-frame-rate"

    invoke-virtual {v0, v6}, Lcom/htc/camera/CameraController;->getIntCameraParameter(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    .line 398
    :goto_9
    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setVideoFrameRate(I)V

    .line 399
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupMediaRecorder() - setVideoFrameRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->m_ResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;

    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    .line 403
    if-nez v0, :cond_d

    .line 405
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v1, "setupMediaRecorder() - No video resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setupMediaRecorder, get slowmotion resolution fail"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_7
    sub-int v0, v4, v1

    goto/16 :goto_1

    :cond_8
    move v1, v3

    .line 305
    goto/16 :goto_2

    :cond_9
    move v4, v3

    .line 307
    goto/16 :goto_3

    .line 321
    :cond_a
    iget-object v0, v5, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v5, v3, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 322
    invoke-virtual {v5}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 323
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v6, "startVideoRecording() - Disable stereo recording"

    invoke-static {v0, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 328
    :cond_b
    iget-object v0, v5, Lcom/htc/camera/CameraThread;->captureRotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v5, v3, v0}, Lcom/htc/camera/CameraThread;->setSoundEffect(ZLcom/htc/camera/rotate/UIRotation;)V

    .line 329
    invoke-virtual {v5}, Lcom/htc/camera/CameraThread;->enableSoundEffect()V

    .line 330
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v6, "startVideoRecording() - Disable stereo recording"

    invoke-static {v0, v6}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 343
    :cond_c
    invoke-virtual {p1, v10}, Lcom/htc/camera/MediaRecorderParameters;->setOutputFormat(I)V

    .line 344
    invoke-virtual {v5, v3}, Lcom/htc/camera/CameraThread;->setIsVideoPauseSupported(Z)V

    goto/16 :goto_5

    .line 357
    :catch_0
    move-exception v0

    .line 359
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v7, "setupMediaRecorder() - Cannot set video bit rate"

    invoke-static {v6, v7, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 370
    :catch_1
    move-exception v0

    .line 372
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v7, "setupMediaRecorder() - Cannot set maximum video file size"

    invoke-static {v6, v7, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 382
    :catch_2
    move-exception v0

    .line 384
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v7, "setupMediaRecorder() - Cannot set maximum video file size"

    invoke-static {v6, v7, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 393
    :catch_3
    move-exception v0

    .line 395
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v7, "setupMediaRecorder() - Cannot get slow motion video base frame rate"

    invoke-static {v6, v7, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    const/16 v0, 0x1e

    goto/16 :goto_9

    .line 410
    :cond_d
    new-instance v6, Lcom/htc/camera/imaging/Size;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/htc/camera/imaging/Size;-><init>(II)V

    invoke-virtual {p1, v6}, Lcom/htc/camera/MediaRecorderParameters;->setVideoSize(Lcom/htc/camera/imaging/Size;)V

    .line 412
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setupMediaRecorder() - setVideoSize: width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v6, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v7, "setupMediaRecorder() - Video encoder : "

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p1, v10}, Lcom/htc/camera/MediaRecorderParameters;->setVideoEncoder(I)V

    .line 420
    if-eqz v4, :cond_e

    .line 423
    invoke-virtual {v5}, Lcom/htc/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 424
    const v0, 0x2ee00

    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncodingBitRate(I)V

    .line 425
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 426
    invoke-virtual {p1, v12}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    .line 429
    :goto_a
    invoke-virtual {v5}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    .line 443
    :goto_b
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneController;->TAG:Ljava/lang/String;

    const-string v3, "AAC"

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    if-eqz v1, :cond_14

    .line 447
    invoke-virtual {p1, v10}, Lcom/htc/camera/MediaRecorderParameters;->setAudioChannels(I)V

    .line 453
    :goto_c
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncoder(I)V

    :cond_e
    move v3, v2

    .line 456
    goto/16 :goto_0

    .line 428
    :cond_f
    invoke-virtual {p1, v11}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    goto :goto_a

    .line 433
    :cond_10
    sget-object v3, Lcom/htc/camera/Resolution;->Video_QHD:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/htc/camera/Resolution;->Video_WVGA:Lcom/htc/camera/Resolution;

    invoke-virtual {v0, v3}, Lcom/htc/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 434
    :cond_11
    const v0, 0x17700

    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncodingBitRate(I)V

    .line 437
    :goto_d
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 438
    invoke-virtual {p1, v12}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    goto :goto_b

    .line 436
    :cond_12
    const v0, 0xfa00

    invoke-virtual {p1, v0}, Lcom/htc/camera/MediaRecorderParameters;->setAudioEncodingBitRate(I)V

    goto :goto_d

    .line 440
    :cond_13
    invoke-virtual {p1, v11}, Lcom/htc/camera/MediaRecorderParameters;->setAudioSamplingRate(I)V

    goto :goto_b

    .line 451
    :cond_14
    invoke-virtual {p1, v2}, Lcom/htc/camera/MediaRecorderParameters;->setAudioChannels(I)V

    goto :goto_c
.end method
