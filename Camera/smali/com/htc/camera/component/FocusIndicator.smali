.class final Lcom/htc/camera/component/FocusIndicator;
.super Lcom/htc/camera/component/CameraComponent;
.source "FocusIndicator.java"


# static fields
.field private static final CENTER_RECTF:Landroid/graphics/RectF;


# instance fields
.field private m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

.field private m_BubbleToastHandle:Lcom/htc/camera/Handle;

.field private m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

.field private m_FocusedIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private m_IdleIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private m_IndicatorHeight:I

.field private m_IndicatorImageView:Landroid/widget/ImageView;

.field private m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

.field private m_IndicatorWidth:I

.field private m_LastFocusArea:Landroid/graphics/RectF;

.field private m_LastFocusResult:Z

.field private m_LastMeteringArea:Landroid/graphics/RectF;

.field private m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

.field private m_SkipNextIndicator:Z

.field private m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f200000    # 0.625f

    const/high16 v1, 0x3ec00000    # 0.375f

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/htc/camera/component/FocusIndicator;->CENTER_RECTF:Landroid/graphics/RectF;

    return-void
.end method

.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    .line 99
    const-string v0, "Focus Indicator"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 83
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Invisible:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastFocusArea:Landroid/graphics/RectF;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_SkipNextIndicator:Z

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastMeteringArea:Landroid/graphics/RectF;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/FocusIndicator;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/camera/component/FocusIndicator;->hideFocusIndicator()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/component/FocusIndicator;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/component/FocusIndicator;->onAutoFocusCanceled(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/FocusIndicator;)Lcom/htc/camera/IAutoFocusController;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/component/FocusIndicator;ZZ)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/component/FocusIndicator;->onAutoFocusFinished(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/component/FocusIndicator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/FocusIndicator;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/FocusIndicator;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_SkipNextIndicator:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/camera/component/FocusIndicator;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/camera/component/FocusIndicator;->m_SkipNextIndicator:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/camera/component/FocusIndicator;Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/component/FocusIndicator;->onAutoFocusStarting(Lcom/htc/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/camera/component/FocusIndicator;)Lcom/htc/camera/capturemode/ICaptureModeManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/FocusIndicator;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/camera/component/FocusIndicator;->showFocusLockToast(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/component/FocusIndicator;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastFocusArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method private canShowFocusIndicator()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/FocusIndicator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 123
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v4}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v4, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v4}, Lcom/htc/camera/property/Property;->checkValueEquality(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 132
    goto :goto_0

    :cond_4
    move v0, v2

    .line 134
    goto :goto_0
.end method

.method private hideFocusIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 260
    :goto_0
    :pswitch_0
    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$component$FocusIndicator$IndicatorState:[I

    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    invoke-virtual {v1}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    :goto_1
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Invisible:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    .line 256
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/component/FocusIndicator;->showUI(Landroid/view/View;ZZ)V

    .line 259
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->removeMessages(I)V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onAutoFocusCanceled(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/htc/camera/component/FocusIndicator;->hideFocusIndicator()V

    .line 533
    return-void
.end method

.method private onAutoFocusFinished(ZZ)V
    .locals 2

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/htc/camera/component/FocusIndicator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 542
    invoke-virtual {p0}, Lcom/htc/camera/component/FocusIndicator;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iput-boolean p1, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastFocusResult:Z

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    sget-object v1, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Invisible:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    if-eq v0, v1, :cond_1

    .line 551
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/component/FocusIndicator;->showFocusIndicator(ZZZ)V

    .line 553
    :cond_1
    return-void
.end method

.method private onAutoFocusStarting(Lcom/htc/camera/AutoFocusEventArgs;)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 561
    invoke-virtual {p0}, Lcom/htc/camera/component/FocusIndicator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 562
    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    .line 569
    iget-object v0, v0, Lcom/htc/camera/capturemode/CaptureMode;->panoramaType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/panorama/PanoramaType;->PanoramaPlus:Lcom/htc/camera/panorama/PanoramaType;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_0

    .line 575
    :cond_2
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    aget-object v0, v0, v6

    if-eqz v0, :cond_6

    .line 576
    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastFocusArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/camera/component/FocusIndicator;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, v7, v2

    iget-object v3, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v4

    iget-object v5, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 579
    :goto_2
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    array-length v0, v0

    if-lez v0, :cond_8

    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    aget-object v0, v0, v6

    if-eqz v0, :cond_8

    .line 580
    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastMeteringArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/camera/component/FocusIndicator;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/htc/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, v7, v2

    iget-object v3, p1, Lcom/htc/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    aget-object v3, v3, v6

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p1, Lcom/htc/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    aget-object v4, v4, v6

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v4

    iget-object v5, p1, Lcom/htc/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 584
    :goto_4
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-ne v0, v1, :cond_3

    .line 585
    invoke-direct {p0}, Lcom/htc/camera/component/FocusIndicator;->hideFocusIndicator()V

    .line 587
    :cond_3
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    if-eq v0, v1, :cond_4

    .line 588
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastFocusArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/htc/camera/component/FocusIndicator;->CENTER_RECTF:Landroid/graphics/RectF;

    :goto_5
    invoke-direct {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->updateFocusIndicatorPosition(Landroid/graphics/RectF;)V

    .line 591
    :cond_4
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$AutoFocusMode:[I

    iget-object v1, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v1}, Lcom/htc/camera/AutoFocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 598
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/FocusIndicator;->canShowFocusIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusMode:Lcom/htc/camera/AutoFocusMode;

    invoke-direct {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->startFocusingAnimation(Lcom/htc/camera/AutoFocusMode;)V

    goto/16 :goto_0

    .line 576
    :cond_5
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    aget-object v0, v0, v6

    goto :goto_1

    .line 578
    :cond_6
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastFocusArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    goto/16 :goto_2

    .line 580
    :cond_7
    iget-object v0, p1, Lcom/htc/camera/AutoFocusEventArgs;->meteringAreas:[Landroid/graphics/RectF;

    aget-object v0, v0, v6

    goto :goto_3

    .line 582
    :cond_8
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastMeteringArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_4

    .line 588
    :cond_9
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_LastFocusArea:Landroid/graphics/RectF;

    goto :goto_5

    .line 603
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0, v6}, Lcom/htc/camera/component/FocusIndicator;->showFocusIndicator(ZZZ)V

    goto/16 :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private showFocusIndicator(ZZZ)V
    .locals 9

    .prologue
    const/16 v2, 0x2712

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 627
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/htc/camera/component/FocusIndicator;->canShowFocusIndicator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 629
    :cond_0
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$15;->$SwitchMap$com$htc$camera$component$FocusIndicator$IndicatorState:[I

    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    invoke-virtual {v1}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 640
    :goto_1
    if-eqz p1, :cond_1

    .line 642
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_FocusedIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Focused:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    .line 652
    :goto_2
    if-nez p3, :cond_2

    .line 653
    invoke-virtual {p0, v2}, Lcom/htc/camera/component/FocusIndicator;->removeMessages(I)V

    goto :goto_0

    .line 632
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v8, v3}, Lcom/htc/camera/component/FocusIndicator;->showUI(Landroid/view/View;ZZ)V

    goto :goto_1

    .line 635
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_1

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_IdleIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Idle:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    goto :goto_2

    .line 655
    :cond_2
    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/htc/camera/component/FocusIndicator;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showFocusLockToast(Z)V
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFocusLockToast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/component/FocusIndicator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->hasAutoFocus:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 667
    :goto_0
    const-class v0, Lcom/htc/camera/u;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/u;

    .line 668
    if-eqz v0, :cond_4

    .line 669
    if-eqz v1, :cond_3

    .line 670
    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    if-nez v1, :cond_0

    .line 671
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 672
    const v1, 0x7f080190

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->showBubbleToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    .line 684
    :cond_0
    :goto_1
    return-void

    .line 664
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 674
    :cond_2
    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->showBubbleToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    goto :goto_1

    .line 678
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/u;->closeBubbleToast(Lcom/htc/camera/Handle;)V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_BubbleToastHandle:Lcom/htc/camera/Handle;

    goto :goto_1

    .line 683
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->TAG:Ljava/lang/String;

    const-string v1, "No IBubbleToastManager interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startFocusingAnimation(Lcom/htc/camera/AutoFocusMode;)V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFocusingAnimation m_IndicatorState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isrunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 701
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 703
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    sget-object v1, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Invisible:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    if-ne v0, v1, :cond_1

    .line 704
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/camera/component/FocusIndicator;->showUI(Landroid/view/View;ZZ)V

    .line 706
    :cond_1
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Focusing:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorState:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    .line 707
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateFocusIndicatorPosition(II)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 740
    :cond_0
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 742
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    .line 743
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 752
    :goto_1
    iget v3, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p1, v3

    .line 753
    iget v3, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    .line 754
    if-gez v4, :cond_2

    move v1, v2

    .line 758
    :goto_2
    if-gez v3, :cond_3

    move v0, v2

    .line 764
    :goto_3
    iget-object v3, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    invoke-static {v3, v1, v0, v2, v2}, Lcom/htc/camera/ViewUtil;->setMargin(Landroid/view/View;IIII)V

    goto :goto_0

    .line 747
    :cond_1
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    .line 748
    sget v0, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    goto :goto_1

    .line 756
    :cond_2
    iget v5, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorWidth:I

    sub-int v5, v1, v5

    if-le v4, v5, :cond_5

    .line 757
    iget v4, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorWidth:I

    sub-int/2addr v1, v4

    goto :goto_2

    .line 760
    :cond_3
    iget v4, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorHeight:I

    sub-int v4, v0, v4

    if-le v3, v4, :cond_4

    .line 761
    iget v3, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorHeight:I

    sub-int/2addr v0, v3

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v1, v4

    goto :goto_2
.end method

.method private updateFocusIndicatorPosition(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    .line 725
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-nez v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 728
    iget-object v1, p0, Lcom/htc/camera/component/FocusIndicator;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/htc/camera/ui/IViewfinder;->convertFromRelativePreviewPosition(FFLandroid/graphics/Point;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/htc/camera/component/FocusIndicator;->updateFocusIndicatorPosition(II)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 231
    invoke-super {p0, p1}, Lcom/htc/camera/component/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 234
    :goto_0
    return-void

    .line 218
    :pswitch_0
    invoke-direct {p0, v1, v1}, Lcom/htc/camera/component/FocusIndicator;->onAutoFocusFinished(ZZ)V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/component/FocusIndicator;->hideFocusIndicator()V

    goto :goto_0

    .line 227
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_SkipNextIndicator:Z

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 269
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 272
    const v0, 0x7f02014e

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 273
    const v0, 0x7f02003a

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IdleIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    const v0, 0x7f02003e

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_FocusedIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorWidth:I

    .line 276
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AnimatedIndicatorDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorHeight:I

    .line 279
    invoke-virtual {p0}, Lcom/htc/camera/component/FocusIndicator;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getFullScreenCaptureUiContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e0103

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 281
    const v2, 0x7f0e0192

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_IndicatorImageView:Landroid/widget/ImageView;

    .line 301
    const-class v0, Lcom/htc/camera/IAutoFocusController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAutoFocusController;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    .line 302
    const-class v0, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    .line 303
    const-class v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/ICameraPreviewOverlay;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_PreviewOverlay:Lcom/htc/camera/ui/ICameraPreviewOverlay;

    .line 305
    const-class v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/FocusIndicator;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    iput-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 308
    new-instance v0, Lcom/htc/camera/component/FocusIndicator$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/FocusIndicator$1;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    .line 318
    iget-object v2, p0, Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v2, v2, Lcom/htc/camera/IAutoFocusController;->autoFocusCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/FocusIndicator$2;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/FocusIndicator$2;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 328
    iget-object v2, p0, Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v2, v2, Lcom/htc/camera/IAutoFocusController;->autoFocusFinishedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/FocusIndicator$3;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/FocusIndicator$3;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 342
    iget-object v2, p0, Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v2, v2, Lcom/htc/camera/IAutoFocusController;->autoFocusStartingEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/component/FocusIndicator$4;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/FocusIndicator$4;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 364
    iget-object v2, p0, Lcom/htc/camera/component/FocusIndicator;->m_AutoFocusController:Lcom/htc/camera/IAutoFocusController;

    iget-object v2, v2, Lcom/htc/camera/IAutoFocusController;->isAutoFocusLocked:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/component/FocusIndicator$5;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/FocusIndicator$5;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 388
    :goto_0
    sget-object v2, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/component/FocusIndicator$6;

    invoke-direct {v3, p0}, Lcom/htc/camera/component/FocusIndicator$6;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 412
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->switchingCameraEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 413
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->switchingCameraModeEvent:Lcom/htc/camera/event/Event;

    invoke-virtual {v2, v0}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 416
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FocusIndicator$8;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FocusIndicator$8;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 425
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FocusIndicator$9;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FocusIndicator$9;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 437
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FocusIndicator$10;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FocusIndicator$10;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 452
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FocusIndicator$11;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FocusIndicator$11;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 474
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FocusIndicator$12;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FocusIndicator$12;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 497
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/component/FocusIndicator$13;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/FocusIndicator$13;-><init>(Lcom/htc/camera/component/FocusIndicator;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 517
    iget-object v0, p0, Lcom/htc/camera/component/FocusIndicator;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/FocusIndicator$14;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->actionScreenState:Lcom/htc/camera/property/Property;

    sget-object v3, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/component/FocusIndicator$14;-><init>(Lcom/htc/camera/component/FocusIndicator;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    return-void

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/htc/camera/component/FocusIndicator;->TAG:Ljava/lang/String;

    const-string v3, "initializeOverride() - No IAutoFocusController interface"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
