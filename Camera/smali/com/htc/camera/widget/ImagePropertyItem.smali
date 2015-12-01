.class public Lcom/htc/camera/widget/ImagePropertyItem;
.super Landroid/widget/LinearLayout;
.source "ImagePropertyItem.java"


# instance fields
.field private mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

.field private mOnButtonClickedListener:Lcom/htc/camera/widget/e;

.field private mOnLevelChangedListener:Lcom/htc/camera/widget/f;

.field private mValueProperty:Lcom/htc/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_Context:Landroid/content/Context;

.field private m_ControlBar:Landroid/widget/SeekBar;

.field private m_Level:I

.field private m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private m_Title:Landroid/widget/TextView;

.field private m_TypeValue:I

.field private final m_degree_background_length:I

.field private final m_distance_between_mid_and_mid_indicator:I

.field private final m_mid_indicator_width:I

.field private m_seekBarBaseDrawable:Lcom/htc/camera/widget/SeekBarBaseDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object p1, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0a0295

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_degree_background_length:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_mid_indicator_width:I

    .line 86
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_degree_background_length:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_distance_between_mid_and_mid_indicator:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/ImagePropertyItem;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/widget/ImagePropertyItem;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->decreaseLevel()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/widget/ImagePropertyItem;)Lcom/htc/camera/widget/e;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/htc/camera/widget/e;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/widget/ImagePropertyItem;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->increaseLevel()V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/camera/widget/ImagePropertyItem;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    return p1
.end method

.method private decreaseLevel()V
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    .line 413
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    if-gez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private increaseLevel()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 401
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    .line 402
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    if-le v0, v1, :cond_0

    .line 403
    iput v1, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->onLevelChanged()V

    goto :goto_0
.end method

.method private initLevelPosition(Landroid/widget/LinearLayout;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 471
    const v0, 0x7f0e019a

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 472
    const v1, 0x7f0e019b

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 473
    const v2, 0x7f0e019c

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 476
    invoke-virtual {v0, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 477
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 479
    iget v4, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_distance_between_mid_and_mid_indicator:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 481
    invoke-virtual {v1, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 482
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 484
    iget v3, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_distance_between_mid_and_mid_indicator:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 486
    invoke-virtual {v2, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 487
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 489
    iget v1, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_distance_between_mid_and_mid_indicator:I

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 490
    return-void
.end method

.method private mapFromLevel(I)F
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 438
    .line 439
    if-ge p1, v1, :cond_0

    .line 440
    add-int/lit8 v0, p1, 0x0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 441
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private mapToLevel(F)I
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v3, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    .line 425
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    .line 432
    :cond_0
    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 433
    int-to-float v0, v3

    add-float/2addr v1, p1

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 434
    :goto_1
    return v0

    .line 427
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    .line 428
    goto :goto_0

    .line 434
    :cond_2
    int-to-float v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method private setBrightnessValue()V
    .locals 4

    .prologue
    .line 312
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v0}, Lcom/htc/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v1

    .line 313
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v2, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/camera/CameraSettings;->setProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 314
    new-instance v2, Lcom/htc/camera/ImageSettings;

    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-direct {v2, v0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 315
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 318
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 320
    :cond_0
    return-void
.end method

.method private setContrastValue()V
    .locals 3

    .prologue
    .line 327
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v0}, Lcom/htc/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v1

    .line 328
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 329
    new-instance v2, Lcom/htc/camera/ImageSettings;

    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-direct {v2, v0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 330
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 333
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 335
    :cond_0
    return-void
.end method

.method private setSaturationValue()V
    .locals 3

    .prologue
    .line 342
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v0}, Lcom/htc/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v1

    .line 343
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 344
    new-instance v2, Lcom/htc/camera/ImageSettings;

    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-direct {v2, v0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 345
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 348
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 350
    :cond_0
    return-void
.end method

.method private setSharpnessValue()V
    .locals 3

    .prologue
    .line 357
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-direct {p0, v0}, Lcom/htc/camera/widget/ImagePropertyItem;->mapFromLevel(I)F

    move-result v1

    .line 358
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 359
    new-instance v2, Lcom/htc/camera/ImageSettings;

    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-direct {v2, v0}, Lcom/htc/camera/ImageSettings;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 360
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v2, Lcom/htc/camera/ImageSettings;->sharpness:Ljava/lang/Float;

    .line 363
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/htc/camera/IImageSettingsController;->applyImageSettings(Lcom/htc/camera/ImageSettings;Z)V

    .line 365
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(ILcom/htc/camera/CameraThread;)V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 93
    iput p1, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_TypeValue:I

    .line 95
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/IImageSettingsController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IImageSettingsController;

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mImageSettingsController:Lcom/htc/camera/IImageSettingsController;

    .line 99
    invoke-virtual {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    const v1, 0x7f03006a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    .line 107
    :goto_0
    new-instance v0, Lcom/htc/camera/widget/SeekBarBaseDrawable;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/camera/widget/SeekBarBaseDrawable;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_seekBarBaseDrawable:Lcom/htc/camera/widget/SeekBarBaseDrawable;

    .line 108
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_seekBarBaseDrawable:Lcom/htc/camera/widget/SeekBarBaseDrawable;

    invoke-virtual {v0, v3}, Lcom/htc/camera/widget/SeekBarBaseDrawable;->setLevels(I)V

    .line 109
    const v0, 0x7f0e0197

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    .line 110
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 112
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_seekBarBaseDrawable:Lcom/htc/camera/widget/SeekBarBaseDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    const v0, 0x7f0e019e

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 118
    new-instance v2, Lcom/htc/camera/widget/ImagePropertyItem$1;

    invoke-direct {v2, p0}, Lcom/htc/camera/widget/ImagePropertyItem$1;-><init>(Lcom/htc/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    :cond_1
    const v0, 0x7f0e0080

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v2, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 164
    const-string v0, "ImagePropertyItem"

    const-string v1, "initialize - Unknown value!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    :goto_1
    return-void

    .line 105
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/camera/widget/ImagePropertyItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    const v3, 0x7f080296

    invoke-static {v2, v3}, Lcom/htc/camera/ar;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    .line 168
    :goto_2
    const v0, 0x7f0e0196

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 169
    const v0, 0x7f0e019f

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 171
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080434

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v2, 0x7f020219

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 175
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    const v2, 0x7f0201f8

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconResource(I)V

    .line 192
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setFocusable(Z)V

    .line 194
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setFocusable(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->updateLevel()I

    move-result v0

    iput v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    .line 198
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/ImagePropertyItem;->setDegree(I)V

    .line 199
    invoke-direct {p0, v1}, Lcom/htc/camera/widget/ImagePropertyItem;->initLevelPosition(Landroid/widget/LinearLayout;)V

    .line 206
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_MinusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    new-instance v1, Lcom/htc/camera/widget/ImagePropertyItem$2;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/ImagePropertyItem$2;-><init>(Lcom/htc/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_PlusBtn:Lcom/htc/lib1/cc/widget/HtcIconButton;

    new-instance v1, Lcom/htc/camera/widget/ImagePropertyItem$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/ImagePropertyItem$3;-><init>(Lcom/htc/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/htc/camera/widget/ImagePropertyItem$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/ImagePropertyItem$4;-><init>(Lcom/htc/camera/widget/ImagePropertyItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_1

    .line 148
    :pswitch_1
    iget-object v2, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    const v4, 0x7f08025e

    invoke-static {v3, v4}, Lcom/htc/camera/ar;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->contrast:Lcom/htc/camera/property/Property;

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    goto/16 :goto_2

    .line 154
    :pswitch_2
    iget-object v2, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    const v4, 0x7f08025f

    invoke-static {v3, v4}, Lcom/htc/camera/ar;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->saturation:Lcom/htc/camera/property/Property;

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    goto/16 :goto_2

    .line 160
    :pswitch_3
    iget-object v2, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    const v4, 0x7f080260

    invoke-static {v3, v4}, Lcom/htc/camera/ar;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, v0, Lcom/htc/camera/CameraSettings;->sharpness:Lcom/htc/camera/property/Property;

    iput-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    goto/16 :goto_2

    .line 138
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLevelChanged()V
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_TypeValue:I

    packed-switch v0, :pswitch_data_0

    .line 292
    const-string v0, "ImagePropertyItem"

    const-string v1, "onLevelChanged - Unknown TypeValue!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_0
    iget v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/ImagePropertyItem;->setDegree(I)V

    .line 297
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/htc/camera/widget/f;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/htc/camera/widget/f;

    iget v1, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Level:I

    invoke-interface {v0, p0, v1}, Lcom/htc/camera/widget/f;->onLevelChanged(Lcom/htc/camera/widget/ImagePropertyItem;I)V

    .line 304
    :cond_0
    return-void

    .line 280
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->setBrightnessValue()V

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->setContrastValue()V

    goto :goto_0

    .line 286
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->setSaturationValue()V

    goto :goto_0

    .line 289
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/camera/widget/ImagePropertyItem;->setSharpnessValue()V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDegree(I)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_ControlBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 467
    return-void
.end method

.method public final setOnButtonClickedListener(Lcom/htc/camera/widget/e;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mOnButtonClickedListener:Lcom/htc/camera/widget/e;

    .line 373
    return-void
.end method

.method public final setOnLevelChangedListener(Lcom/htc/camera/widget/f;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mOnLevelChangedListener:Lcom/htc/camera/widget/f;

    .line 377
    return-void
.end method

.method public updateLevel()I
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->mValueProperty:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 454
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/camera/widget/ImagePropertyItem;->mapToLevel(F)I

    move-result v0

    .line 458
    return v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ImagePropertyItem;->m_Context:Landroid/content/Context;

    check-cast v0, Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->PROPERTY_SETTINGS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraSettings;

    sget-object v1, Lcom/htc/camera/CameraSettings;->PROPERTY_BRIGHTNESS:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method
