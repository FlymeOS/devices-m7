.class public Lcom/htc/camera/bi/PhotoModeSnapStatisticController;
.super Lcom/htc/camera/bi/MediaStatisticController;
.source "PhotoModeSnapStatisticController.java"


# static fields
.field private static mFaceCaptured:Z

.field private static mVoiceCaptured:Z


# instance fields
.field mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

.field mSplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 79
    const-string v0, "PhotoModeSnapStatisticController"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/bi/MediaStatisticController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;Lcom/htc/camera/component/Component;I)Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->sendMessage(Lcom/htc/camera/component/Component;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 60
    sput-boolean p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mVoiceCaptured:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 60
    sput-boolean p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mFaceCaptured:Z

    return p0
.end method


# virtual methods
.method protected getAutoCaptureValue()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 573
    sget-boolean v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mVoiceCaptured:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mFaceCaptured:Z

    if-nez v0, :cond_0

    .line 574
    const-string v0, "0"

    .line 580
    :goto_0
    return-object v0

    .line 575
    :cond_0
    sget-boolean v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mFaceCaptured:Z

    if-ne v0, v1, :cond_1

    .line 576
    const-string v0, "1"

    goto :goto_0

    .line 577
    :cond_1
    sget-boolean v0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mVoiceCaptured:Z

    if-ne v0, v1, :cond_2

    .line 578
    const-string v0, "2"

    goto :goto_0

    .line 580
    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getAutoSmileCaptureKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_SMILE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "1"

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getAutoUploadKeyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    const-string v0, "0"

    return-object v0
.end method

.method protected getCaptureModeValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 510
    if-eqz v0, :cond_7

    .line 512
    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 513
    iget-object v1, v0, Lcom/htc/camera/capturemode/CaptureMode;->isPhotoModeSupported:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 515
    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->isUserDefined()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    const-string v0, "0"

    .line 536
    :goto_0
    return-object v0

    .line 517
    :cond_0
    instance-of v1, v0, Lcom/htc/camera/capturemode/d;

    if-eqz v1, :cond_1

    .line 518
    const-string v0, "1"

    goto :goto_0

    .line 519
    :cond_1
    instance-of v1, v0, Lcom/htc/camera/capturemode/b;

    if-eqz v1, :cond_2

    .line 520
    const-string v0, "2"

    goto :goto_0

    .line 521
    :cond_2
    instance-of v1, v0, Lcom/htc/camera/splitcapture/SplitCaptureMode;

    if-eqz v1, :cond_4

    .line 523
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    const-string v0, "3"

    goto :goto_0

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mSplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mSplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 526
    const-string v0, "6"

    goto :goto_0

    .line 528
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v1, v1, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v1}, Lcom/htc/camera/property/a;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 529
    const-string v0, "4"

    goto :goto_0

    .line 530
    :cond_5
    instance-of v1, v0, Lcom/htc/camera/capturemode/PhotoBoothCaptureMode;

    if-eqz v1, :cond_6

    .line 531
    const-string v0, "5"

    goto :goto_0

    .line 532
    :cond_6
    instance-of v0, v0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    if-eqz v0, :cond_7

    .line 533
    const-string v0, "7"

    goto :goto_0

    .line 536
    :cond_7
    const-string v0, "1"

    goto :goto_0
.end method

.method protected getContinuousBurstAutoReviewKeyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isContinuousBurstAutoReview:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "1"

    .line 363
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getContinuousBurstEnabledKeyValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "1"

    .line 355
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getFaceBeautifierValue()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 396
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraTypeKeyValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraTypeKeyValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_FACE_BEAUTIFIER_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 403
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFaceDetectionValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_FACE_DETECTION_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "1"

    .line 391
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getFlashLightValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->flashMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/FlashMode;

    .line 489
    sget-object v1, Lcom/htc/camera/FlashMode;->Auto:Lcom/htc/camera/FlashMode;

    if-ne v0, v1, :cond_0

    .line 490
    const-string v0, "0"

    .line 496
    :goto_0
    return-object v0

    .line 491
    :cond_0
    sget-object v1, Lcom/htc/camera/FlashMode;->On:Lcom/htc/camera/FlashMode;

    if-ne v0, v1, :cond_1

    .line 492
    const-string v0, "1"

    goto :goto_0

    .line 493
    :cond_1
    sget-object v1, Lcom/htc/camera/FlashMode;->Off:Lcom/htc/camera/FlashMode;

    if-ne v0, v1, :cond_2

    .line 494
    const-string v0, "2"

    goto :goto_0

    .line 496
    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getGeoTagKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GEO_TAGGING_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "1"

    .line 377
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getGridValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_GRID_VISIBLE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "1"

    .line 428
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getISOValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    const-string v1, "auto"

    .line 434
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 437
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_ISO:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    :goto_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    const-string v0, "0"

    .line 452
    :goto_1
    return-object v0

    .line 441
    :cond_1
    const-string v1, "100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    const-string v0, "1"

    goto :goto_1

    .line 443
    :cond_2
    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    const-string v0, "2"

    goto :goto_1

    .line 445
    :cond_3
    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 446
    const-string v0, "3"

    goto :goto_1

    .line 447
    :cond_4
    const-string v1, "800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 448
    const-string v0, "4"

    goto :goto_1

    .line 449
    :cond_5
    const-string v1, "1600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    const-string v0, "5"

    goto :goto_1

    .line 452
    :cond_6
    const-string v0, "0"

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method protected getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 314
    .line 315
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 317
    const-string v0, "Brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 328
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    return-object v0

    .line 319
    :cond_0
    const-string v0, "Contrast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->contrast:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    const-string v0, "Saturation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->saturation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_2
    const-string v0, "Sharpness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->sharpness:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPhotoBoothPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCaptureModeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const-string v0, "0"

    .line 560
    :goto_0
    return-object v0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/photopattern/IPhotoBoothController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/IPhotoBoothController;

    .line 547
    if-eqz v0, :cond_4

    .line 548
    iget-object v0, v0, Lcom/htc/camera/photopattern/IPhotoBoothController;->currentPattern:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/photopattern/PhotoBoothPattern;

    .line 549
    if-eqz v0, :cond_3

    .line 551
    instance-of v1, v0, Lcom/htc/camera/photopattern/FilmPhotoBoothPattern;

    if-eqz v1, :cond_1

    .line 552
    const-string v0, "1"

    goto :goto_0

    .line 553
    :cond_1
    instance-of v1, v0, Lcom/htc/camera/photopattern/GridPhotoBoothPattern;

    if-eqz v1, :cond_2

    .line 554
    const-string v0, "2"

    goto :goto_0

    .line 555
    :cond_2
    instance-of v0, v0, Lcom/htc/camera/photopattern/SquarePhotoBoothPattern;

    if-eqz v0, :cond_3

    .line 556
    const-string v0, "3"

    goto :goto_0

    .line 558
    :cond_3
    const-string v0, "0"

    goto :goto_0

    .line 560
    :cond_4
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getResolutionKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    const-class v0, Lcom/htc/camera/ICaptureResolutionManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICaptureResolutionManager;

    .line 336
    if-eqz v0, :cond_1

    .line 337
    iget-object v1, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 340
    :goto_0
    return-object v0

    .line 337
    :cond_0
    iget-object v0, v0, Lcom/htc/camera/ICaptureResolutionManager;->photoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Resolution;

    invoke-virtual {v0}, Lcom/htc/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->TAG:Ljava/lang/String;

    const-string v1, "getResolutionKeyValue() - Cannot find ICaptureResolutionManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, ""

    goto :goto_0
.end method

.method protected getSaveMirrorImageValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isSaveMirrorImageEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 502
    const-string v0, "1"

    .line 504
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getSceneKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 262
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 264
    instance-of v1, v0, Lcom/htc/camera/effect/AutoScene;

    if-eqz v1, :cond_0

    .line 265
    const-string v0, "0"

    .line 299
    :goto_0
    return-object v0

    .line 266
    :cond_0
    instance-of v1, v0, Lcom/htc/camera/effect/HdrScene;

    if-eqz v1, :cond_1

    .line 267
    const-string v0, "1"

    goto :goto_0

    .line 268
    :cond_1
    instance-of v1, v0, Lcom/htc/camera/effect/PanoramaScene;

    if-eqz v1, :cond_2

    .line 269
    const-string v0, "2"

    goto :goto_0

    .line 270
    :cond_2
    instance-of v1, v0, Lcom/htc/camera/effect/ap;

    if-eqz v1, :cond_3

    .line 271
    const-string v0, "3"

    goto :goto_0

    .line 272
    :cond_3
    instance-of v1, v0, Lcom/htc/camera/effect/ae;

    if-eqz v1, :cond_4

    .line 273
    const-string v0, "5"

    goto :goto_0

    .line 274
    :cond_4
    instance-of v1, v0, Lcom/htc/camera/effect/WhiteboardEffect;

    if-eqz v1, :cond_5

    .line 275
    const-string v0, "6"

    goto :goto_0

    .line 276
    :cond_5
    instance-of v1, v0, Lcom/htc/camera/effect/e;

    if-eqz v1, :cond_6

    .line 277
    const-string v0, "7"

    goto :goto_0

    .line 278
    :cond_6
    instance-of v1, v0, Lcom/htc/camera/effect/ag;

    if-eqz v1, :cond_7

    .line 279
    const-string v0, "8"

    goto :goto_0

    .line 280
    :cond_7
    instance-of v1, v0, Lcom/htc/camera/effect/bc;

    if-eqz v1, :cond_8

    .line 281
    const-string v0, "9"

    goto :goto_0

    .line 282
    :cond_8
    instance-of v1, v0, Lcom/htc/camera/effect/SmartSceneDetectorScene;

    if-eqz v1, :cond_9

    .line 283
    const-string v0, "10"

    goto :goto_0

    .line 284
    :cond_9
    instance-of v1, v0, Lcom/htc/camera/effect/c;

    if-eqz v1, :cond_a

    .line 285
    const-string v0, "11"

    goto :goto_0

    .line 286
    :cond_a
    instance-of v1, v0, Lcom/htc/camera/panorama/PanoramaPlusScene;

    if-eqz v1, :cond_b

    .line 287
    const-string v0, "12"

    goto :goto_0

    .line 288
    :cond_b
    instance-of v1, v0, Lcom/htc/camera/dualcamera/DualCameraScene;

    if-eqz v1, :cond_c

    .line 289
    const-string v0, "13"

    goto :goto_0

    .line 290
    :cond_c
    instance-of v1, v0, Lcom/htc/camera/effect/EisScene;

    if-eqz v1, :cond_d

    .line 291
    const-string v0, "14"

    goto :goto_0

    .line 292
    :cond_d
    instance-of v1, v0, Lcom/htc/camera/effect/ZoeScene;

    if-eqz v1, :cond_e

    .line 293
    const-string v0, "15"

    goto :goto_0

    .line 294
    :cond_e
    instance-of v1, v0, Lcom/htc/camera/sina/GifModeScene;

    if-eqz v1, :cond_f

    .line 295
    const-string v0, "16"

    goto :goto_0

    .line 296
    :cond_f
    instance-of v0, v0, Lcom/htc/camera/manualcapture/ManualCaptureScene;

    if-eqz v0, :cond_10

    .line 297
    const-string v0, "17"

    goto :goto_0

    .line 299
    :cond_10
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getSelftimerKeyValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SELF_TIMER_INTERVAL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/Duration;

    invoke-virtual {v0}, Lcom/htc/camera/Duration;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShutterSoundValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->isShutterSoundEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 418
    const-string v0, "1"

    .line 420
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getStorageValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_STORAGE_SLOT:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/io/StorageSlot;->STORAGE_CARD:Lcom/htc/camera/io/StorageSlot;

    if-ne v0, v1, :cond_0

    .line 480
    const-string v0, "1"

    .line 482
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getTapToCaptureValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_MAIN_TAP_TO_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "1"

    .line 412
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getVoiceCaptureValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_IS_VOICE_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 566
    const-string v0, "1"

    .line 568
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected getWhiteBalanceValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 457
    const-string v0, "auto"

    .line 458
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraTypeKeyValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_MAIN_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraTypeKeyValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_FRONT_WHITE_BALANCE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 463
    :cond_1
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    const-string v0, "0"

    .line 474
    :goto_0
    return-object v0

    .line 465
    :cond_2
    const-string v1, "incandescent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    const-string v0, "1"

    goto :goto_0

    .line 467
    :cond_3
    const-string v1, "fluorescent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 468
    const-string v0, "2"

    goto :goto_0

    .line 469
    :cond_4
    const-string v1, "daylight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 470
    const-string v0, "3"

    goto :goto_0

    .line 471
    :cond_5
    const-string v1, "cloudy-daylight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 472
    const-string v0, "4"

    goto :goto_0

    .line 474
    :cond_6
    const-string v0, "0"

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    iget-object v0, v0, Lcom/htc/camera/panorama/IPanoramaPlusController;->isPanoramaPlusActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    .line 94
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    iget v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->setMediaCountInComposeKeyTable(Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Lcom/htc/camera/bi/MediaStatisticController;->initializeOverride()V

    .line 122
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    .line 123
    const-string v0, "pref_bi_photo_mode_setting_snap_history"

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->m_mediaTaken:I

    .line 126
    const-class v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/IPanoramaPlusController;

    iput-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mPanoramaPlusController:Lcom/htc/camera/panorama/IPanoramaPlusController;

    .line 127
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 128
    const-class v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mSplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 131
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$1;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$1;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentScene:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$2;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->currentEffect:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$3;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 165
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mSplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mSplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    new-instance v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$4;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/a;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$5;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    new-instance v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$6;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 208
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IStableFace;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IStableFace;

    .line 209
    if-eqz v0, :cond_2

    .line 210
    iget-object v1, v0, Lcom/htc/camera/IStableFace;->voiceCapturingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$7;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$7;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 222
    iget-object v1, v0, Lcom/htc/camera/IStableFace;->voiceCapturedEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$8;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 234
    iget-object v1, v0, Lcom/htc/camera/IStableFace;->faceCapturingEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$9;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v1, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 245
    iget-object v0, v0, Lcom/htc/camera/IStableFace;->faceCapturedEvent:Lcom/htc/camera/event/Event;

    new-instance v1, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;

    invoke-direct {v1, p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController$10;-><init>(Lcom/htc/camera/bi/PhotoModeSnapStatisticController;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 257
    :cond_2
    return-void
.end method

.method protected rebuildComposeKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->mIsResetToDefault:Z

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x0

    .line 653
    :goto_0
    return-object v0

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 591
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCameraTypeKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSceneKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getEffectKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getAutoSmileCaptureKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    const-string v1, "Brightness"

    invoke-virtual {p0, v1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    const-string v1, "Contrast"

    invoke-virtual {p0, v1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    const-string v1, "Saturation"

    invoke-virtual {p0, v1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const-string v1, "Sharpness"

    invoke-virtual {p0, v1}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getImageAdjustMentKeyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getResolutionKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getContinuousBurstEnabledKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getContinuousBurstAutoReviewKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getReviewDurationKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSelftimerKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getGeoTagKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getAutoUploadKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getFaceDetectionValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getFaceBeautifierValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getTapToCaptureValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getShutterSoundValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getGridValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getISOValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getWhiteBalanceValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getStorageValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getFlashLightValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSaveMirrorImageValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getCaptureModeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getPhotoBoothPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getVoiceCaptureValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getAutoCaptureValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected writeBehaviorData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/htc/camera/bi/PhotoModeSnapStatisticController;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_bi_photo_mode_setting_snap_history"

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 668
    return-void
.end method
