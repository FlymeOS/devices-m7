.class public final Lcom/htc/camera/effect/EffectControlUI;
.super Lcom/htc/camera/effect/IEffectControlUI;
.source "EffectControlUI.java"


# instance fields
.field private m_ControlBar:Landroid/widget/SeekBar;

.field private m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

.field private m_DecreaseButton:Landroid/view/View;

.field private final m_EffectCenterPool:[Landroid/graphics/PointF;

.field private m_EffectCenterPoolIndex:I

.field private m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

.field private m_IncreaseButton:Landroid/view/View;

.field private m_IsControlsNeeded:Z

.field private m_IsPenddingShowToast:Z

.field private m_ShowingInitValues:Z

.field private m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

.field private m_ToastHandle:Lcom/htc/camera/Handle;

.field private m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

.field private m_switchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    const-string v0, "Effect Control UI"

    invoke-direct {p0, v0, v3, p1, v2}, Lcom/htc/camera/effect/IEffectControlUI;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    .line 76
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->disableAutoInflateView()V

    .line 77
    const v0, 0x7f0e00e9

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->setBaseLayoutId(I)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->hideControls()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/camera/effect/EffectControlUI;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectControlUI;->onCenterPointChanged(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/widget/EffectControlCircle;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/component/SwitchCameraSlidingUI;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_switchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/camera/effect/EffectControlUI;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectControlUI;->onControlBarProgressChanged(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getFakeUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/rotate/UIRotation;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectControlUI;->onEffectApplied(Lcom/htc/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectControlUI;->onEffectCanceled(Lcom/htc/camera/effect/EffectBase;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->showControls()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/effect/EffectControlUI;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/camera/effect/EffectControlUI;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/camera/effect/EffectControlUI;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsPenddingShowToast:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/camera/effect/EffectControlUI;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsPenddingShowToast:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->showToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/camera/effect/EffectControlUI;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectControlUI;->updateEffectCircleBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private calcControlBarProgress(I)I
    .locals 8

    .prologue
    const/16 v1, 0x64

    .line 89
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    sget v0, Lcom/htc/camera/widget/EffectControlCircle;->MIN_BORDER_RADIUS:I

    sub-int v0, p1, v0

    int-to-double v2, v0

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v4, v0

    const-wide v6, 0x400199999999999aL    # 2.2

    div-double/2addr v4, v6

    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    sget v0, Lcom/htc/camera/widget/EffectControlCircle;->MIN_BORDER_RADIUS:I

    int-to-double v6, v0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 90
    if-lt v0, v1, :cond_1

    move v0, v1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    if-gtz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calcEffectRadius(I)I
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v0, v0

    const-wide v2, 0x400199999999999aL    # 2.2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    sget v2, Lcom/htc/camera/widget/EffectControlCircle;->MIN_BORDER_RADIUS:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    sget v2, Lcom/htc/camera/widget/EffectControlCircle;->MIN_BORDER_RADIUS:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private cancelToast()V
    .locals 2

    .prologue
    .line 102
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 103
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->cancelToast(Lcom/htc/camera/Handle;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    .line 108
    :cond_0
    return-void
.end method

.method private convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 115
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/htc/camera/ui/IViewfinder;->convertFromRelativePreviewPosition(FFLandroid/graphics/Point;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->TAG:Ljava/lang/String;

    const-string v2, "convertToUIEffectCenter() - Fail to map position"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    return-object v0
.end method

.method private hideControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/effect/EffectControlUI;->showUI(Landroid/view/View;ZZ)V

    .line 149
    :cond_0
    return-void
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    .line 331
    const v0, 0x7f0e0185

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/EffectControlCircle;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    .line 332
    const v0, 0x7f0e0188

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    .line 333
    const v0, 0x7f0e018a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    .line 334
    const v0, 0x7f0e0189

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    .line 335
    const-class v0, Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_switchCameraSlidingUI:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    .line 338
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0}, Lcom/htc/camera/widget/EffectControlCircle;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateRelativeLayout;

    sget-object v2, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v2}, Lcom/htc/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 339
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    new-instance v2, Lcom/htc/camera/effect/EffectControlUI$14;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectControlUI$14;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setOnCenterPointChangedListener(Lcom/htc/camera/widget/b;)V

    .line 347
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    new-instance v2, Lcom/htc/camera/effect/EffectControlUI$15;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectControlUI$15;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 381
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/htc/camera/effect/EffectControlUI$16;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectControlUI$16;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 401
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    new-instance v2, Lcom/htc/camera/effect/EffectControlUI$17;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectControlUI$17;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 412
    new-instance v0, Lcom/htc/camera/effect/EffectControlUI$18;

    invoke-direct {v0, p0}, Lcom/htc/camera/effect/EffectControlUI$18;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 429
    const v0, 0x7f0e0187

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 430
    new-instance v1, Lcom/htc/camera/effect/EffectControlUI$19;

    invoke-direct {v1, p0}, Lcom/htc/camera/effect/EffectControlUI$19;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method private onCenterPointChanged(Landroid/graphics/Point;)V
    .locals 5

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    if-eqz v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    .line 481
    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 482
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    aget-object v1, v0, v1

    .line 485
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/htc/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    .line 490
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    instance-of v0, v0, Lcom/htc/camera/effect/DistortionEffect;

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    check-cast v0, Lcom/htc/camera/effect/DistortionEffect;

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/DistortionEffect;->setCenter(Landroid/graphics/PointF;)V

    .line 498
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->effectCenter:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    instance-of v0, v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    check-cast v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/DepthOfFieldEffect;->setCenter(Landroid/graphics/PointF;)V

    goto :goto_1
.end method

.method private onControlBarProgressChanged(I)V
    .locals 2

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    instance-of v0, v0, Lcom/htc/camera/effect/DistortionEffect;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    check-cast v0, Lcom/htc/camera/effect/DistortionEffect;

    invoke-virtual {v0, p1}, Lcom/htc/camera/effect/DistortionEffect;->setDistortion(I)V

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    instance-of v0, v0, Lcom/htc/camera/effect/VignetteEffect;

    if-eqz v0, :cond_3

    .line 516
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v1

    .line 517
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    check-cast v0, Lcom/htc/camera/effect/VignetteEffect;

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/VignetteEffect;->setRadius(I)V

    .line 518
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    goto :goto_0

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    instance-of v0, v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    if-eqz v0, :cond_4

    .line 522
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/EffectControlUI;->calcEffectRadius(I)I

    move-result v1

    .line 523
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    check-cast v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/DepthOfFieldEffect;->setRadius(I)V

    .line 524
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    goto :goto_0

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    instance-of v0, v0, Lcom/htc/camera/effect/DotsEffect;

    if-eqz v0, :cond_5

    .line 527
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    check-cast v0, Lcom/htc/camera/effect/DotsEffect;

    invoke-virtual {v0, p1}, Lcom/htc/camera/effect/DotsEffect;->setDotSize(I)V

    goto :goto_0

    .line 528
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    instance-of v0, v0, Lcom/htc/camera/effect/SplitToningMonoEffect;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    check-cast v0, Lcom/htc/camera/effect/SplitToningMonoEffect;

    invoke-virtual {v0, p1}, Lcom/htc/camera/effect/SplitToningMonoEffect;->setColorStrength(I)V

    goto :goto_0
.end method

.method private onEffectApplied(Lcom/htc/camera/effect/EffectBase;)V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 538
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    .line 542
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    .line 543
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    .line 544
    iput-boolean v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsPenddingShowToast:Z

    .line 545
    instance-of v0, p1, Lcom/htc/camera/effect/DistortionEffect;

    if-eqz v0, :cond_6

    .line 547
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 548
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->initializeUI()V

    .line 549
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->showControls()V

    .line 550
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    .line 551
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    move-object v0, p1

    check-cast v0, Lcom/htc/camera/effect/DistortionEffect;

    invoke-virtual {v0}, Lcom/htc/camera/effect/DistortionEffect;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 552
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 553
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    .line 554
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 555
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v0, p1

    check-cast v0, Lcom/htc/camera/effect/DistortionEffect;

    invoke-virtual {v0}, Lcom/htc/camera/effect/DistortionEffect;->getDistortion()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    move v0, v1

    .line 612
    :goto_0
    iput-boolean v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ShowingInitValues:Z

    .line 615
    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_0

    .line 617
    instance-of v2, p1, Lcom/htc/camera/effect/SplitToningMonoEffect;

    if-eqz v2, :cond_b

    .line 618
    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    const v4, 0x7f0200e8

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 624
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v2, :cond_2

    .line 626
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    if-nez v0, :cond_1

    .line 628
    iget-object v0, v3, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 629
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->showToast()V

    .line 633
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v2, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    invoke-interface {v0, v2}, Lcom/htc/camera/ui/IViewfinder;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->updateEffectCircleBounds(Landroid/graphics/Rect;)V

    .line 638
    :cond_2
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v0, :cond_5

    .line 640
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->effectControlState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 641
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->effectControlBarState:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 642
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    aget-object v0, v0, v2

    .line 643
    iget v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I

    .line 645
    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v2}, Lcom/htc/camera/widget/EffectControlCircle;->getCenterPoint()Landroid/graphics/Point;

    move-result-object v2

    .line 647
    sget-object v3, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v3}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getPreviewSurfaceHitRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    .line 651
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 652
    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 654
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/htc/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 655
    invoke-virtual {v0, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 656
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->effectCenter:Lcom/htc/camera/property/Property;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 658
    :cond_5
    return-void

    .line 557
    :cond_6
    instance-of v0, p1, Lcom/htc/camera/effect/VignetteEffect;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 559
    check-cast v0, Lcom/htc/camera/effect/VignetteEffect;

    invoke-virtual {v0}, Lcom/htc/camera/effect/VignetteEffect;->getRadius()I

    move-result v0

    .line 560
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 561
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->initializeUI()V

    .line 562
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->showControls()V

    .line 563
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v4, v2}, Lcom/htc/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    .line 564
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v5}, Lcom/htc/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 565
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v4, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 566
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v4, v1}, Lcom/htc/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    .line 567
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v4, v0}, Lcom/htc/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    .line 568
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v4, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 569
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->calcControlBarProgress(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    move v0, v1

    .line 570
    goto/16 :goto_0

    .line 571
    :cond_7
    instance-of v0, p1, Lcom/htc/camera/effect/DepthOfFieldEffect;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 573
    check-cast v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getRadius()I

    move-result v4

    .line 574
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 575
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->initializeUI()V

    .line 576
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->showControls()V

    .line 577
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/EffectControlCircle;->allowUserChangeCenterPoint(Z)V

    .line 578
    iget-object v5, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    move-object v0, p1

    check-cast v0, Lcom/htc/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 579
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 580
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/EffectControlCircle;->setBorderVisibility(Z)V

    .line 581
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v4}, Lcom/htc/camera/widget/EffectControlCircle;->setBorderRadius(I)V

    .line 582
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v4}, Lcom/htc/camera/effect/EffectControlUI;->calcControlBarProgress(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    move v0, v1

    .line 584
    goto/16 :goto_0

    .line 585
    :cond_8
    instance-of v0, p1, Lcom/htc/camera/effect/DotsEffect;

    if-eqz v0, :cond_9

    .line 587
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 588
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->initializeUI()V

    .line 589
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->showControls()V

    .line 590
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 591
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v4}, Lcom/htc/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 592
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v5}, Lcom/htc/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 593
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v0, p1

    check-cast v0, Lcom/htc/camera/effect/DotsEffect;

    invoke-virtual {v0}, Lcom/htc/camera/effect/DotsEffect;->getDotSize()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    move v0, v1

    goto/16 :goto_0

    .line 595
    :cond_9
    instance-of v0, p1, Lcom/htc/camera/effect/SplitToningMonoEffect;

    if-eqz v0, :cond_a

    .line 597
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 598
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->initializeUI()V

    .line 599
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->showControls()V

    .line 600
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v2}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPointVisibility(Z)V

    .line 601
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v4}, Lcom/htc/camera/effect/EffectControlUI;->convertToUIEffectCenter(Landroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/camera/widget/EffectControlCircle;->setCenterPoint(Landroid/graphics/Point;)V

    .line 602
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    invoke-virtual {v0, v5}, Lcom/htc/camera/widget/EffectControlCircle;->setVisibility(I)V

    .line 603
    iget-object v4, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    move-object v0, p1

    check-cast v0, Lcom/htc/camera/effect/SplitToningMonoEffect;

    invoke-virtual {v0}, Lcom/htc/camera/effect/SplitToningMonoEffect;->getColorStrength()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    move v0, v1

    goto/16 :goto_0

    .line 607
    :cond_a
    iput-boolean v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 609
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->cancelToast()V

    .line 610
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->hideControls()V

    move v0, v2

    goto/16 :goto_0

    .line 620
    :cond_b
    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    const v4, 0x7f0200e7

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 631
    :cond_c
    iput-boolean v1, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsPenddingShowToast:Z

    goto/16 :goto_2
.end method

.method private onEffectCanceled(Lcom/htc/camera/effect/EffectBase;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 665
    iput-object v3, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    .line 666
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->effectControlBarState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 669
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->effectControlState:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 670
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->effectCenter:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI;->propertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    .line 673
    :cond_0
    return-void
.end method

.method private showControls()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 681
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->TAG:Ljava/lang/String;

    const-string v1, "showControls()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 685
    iget-boolean v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z

    if-nez v0, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->initializeUI()V

    .line 696
    invoke-direct {p0}, Lcom/htc/camera/effect/EffectControlUI;->updateControlBar()V

    .line 697
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Lcom/htc/camera/effect/EffectControlUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method private showToast()V
    .locals 2

    .prologue
    .line 705
    const-class v0, Lcom/htc/camera/ak;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ak;

    .line 706
    if-eqz v0, :cond_0

    .line 707
    const v1, 0x7f080369

    invoke-virtual {v0, v1}, Lcom/htc/camera/ak;->showToast(I)Lcom/htc/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/htc/camera/Handle;

    .line 708
    :cond_0
    return-void
.end method

.method private updateControlBar()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 453
    invoke-direct {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->updateControlBar(Z)V

    .line 454
    return-void
.end method

.method private updateControlBar(Z)V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 460
    if-eqz p1, :cond_1

    .line 461
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 464
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 466
    :cond_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updateEffectCircleBounds(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 750
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    if-eqz p1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/htc/camera/widget/EffectControlCircle;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/htc/camera/DisplayDevice;->SCREEN_WIDTH:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sget v4, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/camera/widget/EffectControlCircle;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    .line 139
    invoke-super {p0}, Lcom/htc/camera/effect/IEffectControlUI;->deinitializeOverride()V

    .line 140
    return-void
.end method

.method protected initializeOverride()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 158
    invoke-super {p0}, Lcom/htc/camera/effect/IEffectControlUI;->initializeOverride()V

    .line 161
    const-class v0, Lcom/htc/camera/ui/IViewfinder;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/IViewfinder;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    .line 162
    const-class v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 163
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No ISplitPhotoController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControlUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    .line 168
    const-class v0, Lcom/htc/camera/effect/IEffectManager;

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/EffectControlUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IEffectManager;

    .line 169
    sget-object v2, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$1;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectControlUI$1;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 177
    sget-object v2, Lcom/htc/camera/HTCCamera;->EVENT_NEW_INTENT:Lcom/htc/camera/base/EventKey;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$2;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectControlUI$2;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 185
    if-eqz v0, :cond_1

    .line 187
    iget-object v2, v0, Lcom/htc/camera/effect/IEffectManager;->effectAppliedEvent:Lcom/htc/camera/event/Event;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$3;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectControlUI$3;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 196
    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->effectCanceledEvent:Lcom/htc/camera/event/Event;

    new-instance v2, Lcom/htc/camera/effect/EffectControlUI$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/effect/EffectControlUI$4;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v0, v2}, Lcom/htc/camera/event/Event;->addHandler(Lcom/htc/camera/event/a;)V

    .line 208
    :cond_1
    new-instance v0, Lcom/htc/camera/effect/EffectControlUI$5;

    invoke-direct {v0, p0}, Lcom/htc/camera/effect/EffectControlUI$5;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    .line 219
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$6;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectControlUI$6;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 229
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraMode:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$7;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectControlUI$7;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 237
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$8;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectControlUI$8;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 245
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->hasPopupBubble:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$9;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectControlUI$9;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 260
    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$10;

    iget-object v4, v1, Lcom/htc/camera/HTCCamera;->isActivityPaused:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/htc/camera/effect/EffectControlUI$10;-><init>(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->isCaptureUIOpen:Lcom/htc/camera/property/Property;

    new-instance v3, Lcom/htc/camera/effect/EffectControlUI$11;

    invoke-direct {v3, p0}, Lcom/htc/camera/effect/EffectControlUI$11;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-virtual {v2, v3}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 282
    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    if-eqz v2, :cond_2

    .line 284
    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->m_Viewfinder:Lcom/htc/camera/ui/IViewfinder;

    sget-object v3, Lcom/htc/camera/ui/IViewfinder;->PROPERTY_PREVIEW_BOUNDS:Lcom/htc/camera/base/PropertyKey;

    new-instance v4, Lcom/htc/camera/effect/EffectControlUI$12;

    invoke-direct {v4, p0}, Lcom/htc/camera/effect/EffectControlUI$12;-><init>(Lcom/htc/camera/effect/EffectControlUI;)V

    invoke-interface {v2, v3, v4}, Lcom/htc/camera/ui/IViewfinder;->addPropertyChangedCallback(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/f;)V

    .line 306
    :goto_0
    iget-object v2, v1, Lcom/htc/camera/HTCCamera;->settingsMenuState:Lcom/htc/camera/property/Property;

    invoke-virtual {v2, v0}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 307
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/effect/EffectControlUI$13;

    iget-object v1, v1, Lcom/htc/camera/HTCCamera;->isResettingToDefault:Lcom/htc/camera/property/Property;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/htc/camera/effect/EffectControlUI$13;-><init>(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    return-void

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/effect/EffectControlUI;->TAG:Ljava/lang/String;

    const-string v3, "initializeOverride() - No IViewfinder interface"

    invoke-static {v2, v3}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 716
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 719
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    goto :goto_0
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    if-nez v0, :cond_0

    .line 732
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 731
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_IncreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 741
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI;->m_DecreaseButton:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/effect/EffectControlUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 742
    return-void
.end method
