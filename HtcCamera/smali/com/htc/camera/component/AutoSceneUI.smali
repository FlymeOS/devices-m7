.class public final Lcom/htc/camera/component/AutoSceneUI;
.super Lcom/htc/camera/IAutoSceneController;
.source "AutoSceneUI.java"


# instance fields
.field private m_AsdType:I

.field private m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

.field private m_FlashController:Lcom/htc/camera/IFlashController;

.field private m_FlashDisabledHandle:Lcom/htc/camera/Handle;

.field private m_IsSmartSceneEntered:Z

.field private m_IsWdrScene:Z

.field private m_SplitCaptureController:Lcom/htc/camera/splitcapture/ISplitCaptureController;

.field private m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

.field private final scene:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/AutoDetectedScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string v0, "Auto-Scene UI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/IAutoSceneController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 65
    iput-boolean v2, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    .line 79
    const-string v0, "AutoSceneController.AutoDetectedScene"

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-static {v0, v1, p0, v2}, Lcom/htc/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/htc/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    .line 80
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->enableLogs(I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AutoSceneUI;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->checkScene()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/AutoSceneUI;)Lcom/htc/camera/property/Property;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/AutoSceneUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/AutoSceneUI;)Lcom/htc/camera/effect/IEffectManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/AutoSceneUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/AutoSceneUI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkScene()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 412
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraMode()Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    if-eq v0, v2, :cond_1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 612
    :goto_0
    return-void

    .line 420
    :cond_1
    sget-object v2, Lcom/htc/camera/component/AutoSceneUI$11;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 423
    :pswitch_0
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_7

    .line 449
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 450
    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/htc/camera/panorama/PanoramaType;->None:Lcom/htc/camera/panorama/PanoramaType;

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*#*#3825X#*#*"

    const/16 v4, 0x8

    invoke-virtual {v2, v5, v3, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*#*#3825X#*#*"

    const/4 v4, 0x4

    invoke-virtual {v2, v6, v3, v6, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 455
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 459
    :cond_6
    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->splitCaptureType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_7

    .line 461
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 467
    :cond_7
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_e

    .line 469
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 470
    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_8

    .line 472
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 476
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 477
    if-eqz v0, :cond_e

    instance-of v2, v0, Lcom/htc/camera/effect/AutoScene;

    if-nez v2, :cond_e

    .line 479
    instance-of v0, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v0, :cond_d

    .line 482
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->isWdrScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->propertyOwnerKey:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkScene() - The ASD type from htccallback is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AsdType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isWdr is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AsdType:I

    packed-switch v0, :pswitch_data_1

    .line 529
    const-string v0, "auto"

    .line 530
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Normal:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 535
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Lowlight:Lcom/htc/camera/AutoDetectedScene;

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->LowlightPortrait:Lcom/htc/camera/AutoDetectedScene;

    if-ne v0, v2, :cond_b

    .line 537
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_a

    .line 538
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    invoke-interface {v0}, Lcom/htc/camera/IFlashController;->disableFlash()Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 550
    :cond_a
    :goto_2
    const-class v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    .line 551
    if-eqz v0, :cond_c

    .line 553
    iget-object v2, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v3, "checkScene() - Change scene mode to \'"

    const-string v4, "\'"

    invoke-static {v2, v3, v1, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 554
    invoke-virtual {v0, v1, v5}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 489
    :pswitch_2
    const-string v0, "auto"

    .line 490
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Normal:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 491
    goto :goto_1

    .line 493
    :pswitch_3
    const-string v0, "landscape"

    .line 494
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Landscape:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 495
    goto :goto_1

    .line 497
    :pswitch_4
    const-string v0, "flowers"

    .line 498
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Macro:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 499
    goto :goto_1

    .line 501
    :pswitch_5
    const-string v0, "snow"

    .line 502
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Snowscape:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 503
    goto :goto_1

    .line 505
    :pswitch_6
    const-string v0, "night"

    .line 506
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Lowlight:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 507
    goto :goto_1

    .line 509
    :pswitch_7
    const-string v0, "backlight"

    .line 510
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Backlight:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 511
    goto :goto_1

    .line 513
    :pswitch_8
    const-string v0, "portrait"

    .line 514
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Portrait:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 515
    goto/16 :goto_1

    .line 517
    :pswitch_9
    const-string v0, "night-portrait"

    .line 518
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->LowlightPortrait:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 519
    goto/16 :goto_1

    .line 521
    :pswitch_a
    const-string v0, "backlight_portrait"

    .line 522
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->PortraitBacklight:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 523
    goto/16 :goto_1

    .line 525
    :pswitch_b
    const-string v0, "text"

    .line 526
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v2, Lcom/htc/camera/AutoDetectedScene;->Text:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 527
    goto/16 :goto_1

    .line 542
    :cond_b
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_a

    .line 544
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v2, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v2}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    goto/16 :goto_2

    .line 557
    :cond_c
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "checkScene() - No ISceneController interface to change scene mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    :cond_d
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 567
    :cond_e
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v2

    .line 570
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v2, Lcom/htc/camera/CameraSettings;->isAutoFiveShotsEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->hasMovingObjects:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 574
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->FiveShots:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 600
    :cond_f
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_10

    iget-object v0, v2, Lcom/htc/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 605
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->ContinuousBurst:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 611
    :cond_10
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 487
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private linkToController()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 619
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

    if-eqz v0, :cond_1

    move v3, v6

    .line 627
    :cond_0
    :goto_0
    return v3

    .line 621
    :cond_1
    const-class v0, Lcom/htc/camera/component/AutoSceneController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoSceneController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

    .line 622
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

    if-eqz v0, :cond_0

    .line 624
    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

    const/16 v2, 0x2713

    move-object v0, p0

    move v4, v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/AutoSceneUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v6

    .line 625
    goto :goto_0
.end method

.method private setupEventHandlers()V
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 242
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_ACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/AutoSceneUI$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoSceneUI$1;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 250
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/AutoSceneUI$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoSceneUI$2;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 258
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 6

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v1

    .line 269
    new-instance v2, Lcom/htc/camera/component/AutoSceneUI$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoSceneUI$3;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    .line 277
    new-instance v3, Lcom/htc/camera/component/AutoSceneUI$4;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/AutoSceneUI$4;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    .line 285
    iget-object v4, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v4, :cond_0

    .line 287
    iget-object v4, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v4, v4, Lcom/htc/camera/effect/IEffectManager;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v5, Lcom/htc/camera/component/AutoSceneUI$5;

    invoke-direct {v5, p0}, Lcom/htc/camera/component/AutoSceneUI$5;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    invoke-virtual {v4, v5}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 298
    iget-object v4, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v4, v4, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    new-instance v5, Lcom/htc/camera/component/AutoSceneUI$6;

    invoke-direct {v5, p0}, Lcom/htc/camera/component/AutoSceneUI$6;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    invoke-virtual {v4, v5}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 337
    :cond_0
    iget-object v4, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v4, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 338
    sget-object v4, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v4, v3}, Lcom/htc/camera/HTCCamera;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 339
    iget-object v3, p0, Lcom/htc/camera/component/AutoSceneUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v4, Lcom/htc/camera/component/AutoSceneUI$7;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v5, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v4, p0, v0, v5}, Lcom/htc/camera/component/AutoSceneUI$7;-><init>(Lcom/htc/camera/component/AutoSceneUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v0, v1, Lcom/htc/camera/CameraSettings;->isAutoFiveShotsEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 348
    iget-object v0, v1, Lcom/htc/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 349
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/IZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/component/AutoSceneUI$8;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoSceneUI$8;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/AutoSceneUI$9;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoSceneUI$9;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/AutoSceneUI$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoSceneUI$10;-><init>(Lcom/htc/camera/component/AutoSceneUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 402
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->checkScene()V

    .line 403
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 637
    invoke-static {p0}, Lcom/htc/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 643
    invoke-super {p0}, Lcom/htc/camera/IAutoSceneController;->deinitializeOverride()V

    .line 644
    return-void
.end method

.method public enterSmartSceneDetectMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "enterSmartSceneDetectMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "Re-enter SmartSceneDetect mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Re-enter SmartSceneDetect mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    .line 99
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->Normal:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 100
    iput v3, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AsdType:I

    .line 101
    iput-boolean v3, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    .line 102
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->isWdrScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->checkScene()V

    .line 106
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 109
    instance-of v0, v0, Lcom/htc/camera/effect/am;

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "enterSmartSceneDetectMode() - current effect is not None Effect. Return."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-boolean v3, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    .line 113
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/AutoDetectedScene;->None:Lcom/htc/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoSceneUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "enterSmartSceneDetectMode() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitSmartSceneDetectMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "exitSmartSceneDetectMode()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "Re-exit SmartSceneDetect mode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-boolean v3, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    .line 141
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->isWdrScene:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    iput-boolean v3, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    .line 143
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    invoke-interface {v0, v1}, Lcom/htc/camera/IFlashController;->enableFlash(Lcom/htc/camera/Handle;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashDisabledHandle:Lcom/htc/camera/Handle;

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoSceneUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "exitSmartSceneDetectMode() - No controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    invoke-super {p0, p1}, Lcom/htc/camera/IAutoSceneController;->handleMessage(Landroid/os/Message;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 167
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->checkScene()V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->TAG:Ljava/lang/String;

    const-string v1, "SmartSceneDetect mode is not entered. There should be no callbacks."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/camera/HtcCallbackEventArgs;

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/HtcCallbackEventArgs;

    check-cast v0, Lcom/htc/camera/HtcCallbackEventArgs;

    iget v0, v0, Lcom/htc/camera/HtcCallbackEventArgs;->arg1:I

    iput v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AsdType:I

    .line 183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/HtcCallbackEventArgs;

    check-cast v0, Lcom/htc/camera/HtcCallbackEventArgs;

    iget v0, v0, Lcom/htc/camera/HtcCallbackEventArgs;->arg2:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    .line 190
    :goto_2
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->checkScene()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 183
    goto :goto_1

    .line 187
    :cond_3
    iput v2, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AsdType:I

    .line 188
    iput-boolean v2, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsWdrScene:Z

    goto :goto_2

    .line 194
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/component/AutoSceneController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

    .line 195
    iget-boolean v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_IsSmartSceneEntered:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_AutoSceneController:Lcom/htc/camera/component/AutoSceneController;

    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/component/AutoSceneUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Lcom/htc/camera/IAutoSceneController;->initializeOverride()V

    .line 216
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;

    .line 217
    const-class v0, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_ZoeController:Lcom/htc/camera/zoe/IZoeController;

    .line 218
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 219
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 220
    const-class v0, Lcom/htc/camera/splitcapture/ISplitCaptureController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitCaptureController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_SplitCaptureController:Lcom/htc/camera/splitcapture/ISplitCaptureController;

    .line 221
    const-class v0, Lcom/htc/camera/IFlashController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoSceneUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IFlashController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoSceneUI;->m_FlashController:Lcom/htc/camera/IFlashController;

    .line 224
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/component/AutoSceneUI;->scene:Lcom/htc/camera/property/Property;

    invoke-virtual {p0}, Lcom/htc/camera/component/AutoSceneUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->autoDetectedScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->bindProperties(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/Property;)V

    .line 228
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->setupEventHandlers()V

    .line 231
    invoke-direct {p0}, Lcom/htc/camera/component/AutoSceneUI;->setupPropertyChangedCallbacks()V

    .line 232
    return-void
.end method
