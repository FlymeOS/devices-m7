.class public Lcom/htc/camera/component/CountDownTimer;
.super Lcom/htc/camera/component/ICountDownTimer;
.source "CountDownTimer.java"


# static fields
.field private static mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;


# instance fields
.field private mCountDownMethod:Ljava/lang/reflect/Method;

.field private mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

.field private mFlashMethod:Ljava/lang/reflect/Method;

.field private mSelfTimerRemainingTime:J

.field private mSelfTimerStartTime:J

.field private mSelfTimerTotalSeconds:I

.field private m_NotificationMgr:Landroid/app/NotificationManager;

.field private m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

.field private m_SelfTimerCounterTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    const-string v0, "CountDownTimer"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/htc/camera/component/ICountDownTimer;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/CountDownTimer;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/camera/component/CountDownTimer;->showSelfTimerCounter(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/camera/component/CountDownTimer;->mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/CountDownTimer;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/camera/component/CountDownTimer;->startLEDCountDown()V

    return-void
.end method

.method private countDownSelfTimer(II)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x44c

    const-wide/16 v8, 0x384

    const/4 v7, 0x0

    .line 264
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "countDownSelfTimer("

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "/"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    new-instance v0, Lcom/htc/camera/photopattern/SelfTimerEventArgs;

    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    iget-object v2, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    iget-object v2, v2, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;->name:Ljava/lang/String;

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/photopattern/SelfTimerEventArgs;-><init>(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V

    .line 266
    int-to-long v1, p2

    iput-wide v1, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerRemainingTime:J

    .line 268
    if-lez p2, :cond_3

    .line 270
    if-ne p1, p2, :cond_0

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerStartTime:J

    .line 273
    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CountDownTimer;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerStartTime:J

    sub-long/2addr v1, v3

    .line 277
    sub-int v3, p1, p2

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 278
    const-wide/16 v3, 0x3e8

    sub-long v1, v3, v1

    .line 279
    cmp-long v3, v1, v8

    if-gez v3, :cond_2

    .line 284
    :goto_0
    invoke-direct {p0, p2}, Lcom/htc/camera/component/CountDownTimer;->setCountDownTimerText(I)V

    .line 286
    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->timerTickEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 287
    const/4 v4, 0x6

    add-int/lit8 v6, p2, -0x1

    move-object v2, p0

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/camera/component/CountDownTimer;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 290
    sget-object v0, Lcom/htc/camera/component/CountDownTimer;->mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/CountDownTimer;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0, p2}, Lcom/htc/camera/component/CountDownTimer;->startFlashLED(I)V

    .line 303
    :cond_1
    :goto_1
    return-void

    .line 281
    :cond_2
    cmp-long v3, v1, v10

    if-lez v3, :cond_4

    move-wide v8, v10

    .line 282
    goto :goto_0

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/component/CountDownTimer;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->timerFinishedEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 300
    iput-object v7, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    goto :goto_1

    :cond_4
    move-wide v8, v1

    goto :goto_0
.end method

.method private flashLEDIndicator(I)V
    .locals 5

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_NotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mFlashMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "flashLEDIndicator()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mFlashMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->m_NotificationMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "failed to flashLEDIndicator()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCountDownTimerText(I)V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selfTimerCountDownEven value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    return-void
.end method

.method private showSelfTimerCounter(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    if-nez p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/component/CountDownTimer;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/htc/camera/component/CountDownTimer;->updateSelfTimerContainerRotation()V

    .line 153
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/component/CountDownTimer;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private startFlashLED(I)V
    .locals 13

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x2

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 393
    if-le p1, v0, :cond_1

    .line 394
    const/16 v2, 0x9

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CountDownTimer;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    if-ne p1, v0, :cond_2

    .line 399
    const/4 v0, 0x3

    .line 404
    :goto_1
    const-wide/16 v6, 0x0

    .line 405
    const-wide/16 v8, 0x3e8

    int-to-long v10, v0

    div-long v9, v8, v10

    move v8, v0

    .line 406
    :goto_2
    if-lez v8, :cond_3

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    .line 408
    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CountDownTimer;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 409
    add-long/2addr v6, v9

    .line 410
    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_2

    .line 400
    :cond_2
    if-ne p1, v12, :cond_0

    .line 401
    const/4 v0, 0x4

    goto :goto_1

    .line 412
    :cond_3
    if-ne p1, v12, :cond_0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    .line 413
    invoke-virtual/range {v0 .. v7}, Lcom/htc/camera/component/CountDownTimer;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0
.end method

.method private startLEDCountDown()V
    .locals 5

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_NotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mCountDownMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLEDCountDown() - Timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerTotalSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mCountDownMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->m_NotificationMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerTotalSeconds:I

    mul-int/lit16 v4, v4, 0x3e8

    add-int/lit16 v4, v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "failed to startLEDCountDown()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopLEDCountDown()V
    .locals 5

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_NotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mCountDownMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "stopLEDCountDown()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mCountDownMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->m_NotificationMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "failed to stopLEDCountDown()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSelfTimerContainerRotation()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "updateSelfTimerContainerRotation() - m_SelfTimerCounterContainer is null."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/CountDownTimer;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v3

    .line 175
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 180
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->getFrontCameraPosition()Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    move-result-object v5

    .line 181
    sget-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Center:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    invoke-virtual {v5, v0}, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 184
    sget-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    iget v0, v0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    iget-object v4, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v3}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a033d

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    :goto_1
    sub-int v0, v4, v0

    move v4, v2

    .line 189
    :goto_2
    if-eqz v4, :cond_3

    .line 191
    :cond_1
    :goto_3
    sget-object v2, Lcom/htc/camera/component/CountDownTimer$2;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {v3}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 206
    const v2, 0x7f0a048d

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v2

    .line 207
    if-eqz v4, :cond_a

    :goto_4
    move v3, v2

    move v2, v0

    .line 211
    :goto_5
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 214
    if-eqz v4, :cond_c

    .line 216
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 217
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    :goto_6
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 233
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->requestLayout()V

    goto :goto_0

    .line 184
    :cond_2
    const v0, 0x7f0a033e

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto :goto_1

    .line 189
    :cond_3
    sget-object v6, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Left:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    if-ne v5, v6, :cond_1

    move v1, v2

    goto :goto_3

    .line 194
    :pswitch_0
    const v2, 0x7f0a0490

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v2

    .line 195
    if-eqz v4, :cond_4

    :goto_7
    move v3, v2

    move v2, v0

    .line 196
    goto :goto_5

    .line 195
    :cond_4
    if-eqz v1, :cond_5

    const v0, 0x7f0a0492

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto :goto_7

    :cond_5
    const v0, 0x7f0a0491

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto :goto_7

    .line 198
    :pswitch_1
    const v2, 0x7f0a0493

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v2

    .line 199
    if-eqz v4, :cond_6

    :goto_8
    move v3, v2

    move v2, v0

    .line 200
    goto :goto_5

    .line 199
    :cond_6
    if-eqz v1, :cond_7

    const v0, 0x7f0a0495

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto :goto_8

    :cond_7
    const v0, 0x7f0a0494

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto :goto_8

    .line 202
    :pswitch_2
    const v2, 0x7f0a0496

    invoke-virtual {p0, v2}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v2

    .line 203
    if-eqz v4, :cond_8

    :goto_9
    move v3, v2

    move v2, v0

    .line 204
    goto :goto_5

    .line 203
    :cond_8
    if-eqz v1, :cond_9

    const v0, 0x7f0a0498

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto :goto_9

    :cond_9
    const v0, 0x7f0a0497

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto :goto_9

    .line 207
    :cond_a
    if-eqz v1, :cond_b

    const v0, 0x7f0a048f

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto/16 :goto_4

    :cond_b
    const v0, 0x7f0a048e

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->getDimension(I)I

    move-result v0

    goto/16 :goto_4

    .line 221
    :cond_c
    if-eqz v1, :cond_d

    .line 223
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 224
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_6

    .line 228
    :cond_d
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 229
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_6

    :cond_e
    move v4, v1

    move v0, v1

    goto/16 :goto_2

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 256
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/camera/component/ICountDownTimer;->handleMessage(Landroid/os/Message;)V

    .line 260
    :goto_0
    return-void

    .line 244
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/CountDownTimer;->countDownSelfTimer(II)V

    goto :goto_0

    .line 247
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->flashLEDIndicator(I)V

    goto :goto_0

    .line 250
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->flashLEDIndicator(I)V

    goto :goto_0

    .line 253
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/camera/component/CountDownTimer;->stopLEDCountDown()V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 90
    invoke-super {p0}, Lcom/htc/camera/component/ICountDownTimer;->initializeOverride()V

    .line 91
    invoke-virtual {p0}, Lcom/htc/camera/component/CountDownTimer;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 94
    const v1, 0x7f0e01a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    .line 95
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->isFrontCamLEDCountdownSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/component/CountDownTimer;->mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;

    .line 98
    sget-object v0, Lcom/htc/camera/component/CountDownTimer;->mIsFrontCamLEDCountdownSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/htc/camera/component/CountDownTimer;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_NotificationMgr:Landroid/app/NotificationManager;

    .line 100
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_NotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    :try_start_0
    const-string v1, "setCameraCountdownMode"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->mCountDownMethod:Ljava/lang/reflect/Method;

    .line 103
    const-string v1, "setCameraCountdownLight"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mFlashMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/htc/camera/component/CountDownTimer;->updateSelfTimerContainerRotation()V

    .line 113
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f0e01a1

    invoke-virtual {v0, v1}, Lcom/htc/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterTextView:Landroid/widget/TextView;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/CountDownTimer$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/CountDownTimer$1;-><init>(Lcom/htc/camera/component/CountDownTimer;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 131
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 106
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "Reflect NotificationManager methods failed"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->m_SelfTimerCounterContainer:Lcom/htc/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/htc/camera/component/CountDownTimer;->updateSelfTimerContainerRotation()V

    .line 161
    :cond_0
    return-void
.end method

.method public startCountDown(Ljava/lang/String;JLcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 351
    if-nez p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "startCountDown() - No name specified"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 387
    :goto_0
    return-object v0

    .line 356
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "startCountDown() - Totoalseconds = 0"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 359
    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/component/CountDownTimer;->threadAccessCheck()V

    .line 369
    invoke-virtual {p0}, Lcom/htc/camera/component/CountDownTimer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "startCountDown() - Component is not running"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 372
    goto :goto_0

    .line 374
    :cond_2
    new-instance v0, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;-><init>(Ljava/lang/String;JLcom/htc/camera/t;Ljava/lang/Object;)V

    .line 375
    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v2, "startCountDown() - Handle : "

    const-string v3, ", timeout : "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    if-nez v1, :cond_3

    .line 378
    iput-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    .line 385
    long-to-int v1, p2

    iput v1, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerTotalSeconds:I

    .line 386
    iget v1, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerTotalSeconds:I

    iget v2, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerTotalSeconds:I

    invoke-direct {p0, v1, v2}, Lcom/htc/camera/component/CountDownTimer;->countDownSelfTimer(II)V

    goto :goto_0

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->TAG:Ljava/lang/String;

    const-string v1, "startCountDown() - mCurrentHandle not null"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 383
    goto :goto_0
.end method

.method public stopCountDown(Lcom/htc/camera/Handle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 333
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/htc/camera/photopattern/SelfTimerEventArgs;

    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    iget-object v2, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    iget-object v2, v2, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    iget-wide v3, v3, Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;->totalTime:J

    iget-wide v5, p0, Lcom/htc/camera/component/CountDownTimer;->mSelfTimerRemainingTime:J

    invoke-direct/range {v0 .. v7}, Lcom/htc/camera/photopattern/SelfTimerEventArgs;-><init>(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V

    .line 335
    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->timerCanceledEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/htc/camera/event/Event;->raise(Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V

    .line 337
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    if-ne p1, v0, :cond_0

    .line 339
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/CountDownTimer;->removeMessages(I)V

    .line 340
    iget-object v0, p0, Lcom/htc/camera/component/CountDownTimer;->isSelfTimerStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/component/CountDownTimer;->propertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    iput-object v7, p0, Lcom/htc/camera/component/CountDownTimer;->mCurrentHandle:Lcom/htc/camera/component/CountDownTimer$CountDownTimerHandle;

    .line 344
    :cond_0
    return-void
.end method
