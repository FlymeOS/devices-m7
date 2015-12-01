.class public Lcom/htc/camera/widget/PanoramaIndicatorView;
.super Landroid/view/View;
.source "PanoramaIndicatorView.java"


# static fields
.field private static final DEVICE_ORIENTATION_LANDSCAPE:I


# instance fields
.field private baseDegree:I

.field private m_CurrentDeltaX:F

.field private m_CurrentOrientation:D

.field private m_DeltaX:F

.field private m_DeviceOrientation:I

.field private final m_FrameIndicatorAnimationSpeed:F

.field private m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

.field private m_FrameIndicatorImageActive:Landroid/graphics/drawable/Drawable;

.field private final m_FrameIndicatorOffsetX:I

.field private final m_FrameIndicatorOffsetY:I

.field private m_FrameIndicatorUpdateType:I

.field private final m_Handler:Landroid/os/Handler;

.field private final m_HorizontalLineEndPoints:[Landroid/graphics/Point;

.field private final m_HorizontalLineOffsetX:I

.field private final m_HorizontalLineOffsetY:I

.field private final m_HorizontalLinePen:Landroid/graphics/Paint;

.field private m_IsFrameIndicatorActive:Z

.field private m_LastDeviceOrientationUpdateTime:J

.field private m_PanoramaDirection:I

.field private m_ShowFrameIndicator:Z

.field private m_ShowNextFrameIndicator:Z

.field private m_SpinnerRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->deviceOrientation:I

    sput v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->DEVICE_ORIENTATION_LANDSCAPE:I

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v5, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    .line 52
    new-array v0, v9, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    .line 63
    iput v6, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    .line 65
    iput-boolean v5, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowNextFrameIndicator:Z

    .line 67
    const/16 v0, 0xb4

    iput v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->baseDegree:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v1, 0x7f0a0310

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorAnimationSpeed:F

    .line 88
    const v1, 0x7f0a0311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetX:I

    .line 89
    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetY:I

    .line 90
    const v1, 0x7f0a0315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    .line 91
    const v1, 0x7f0a0316

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    .line 92
    const v1, 0x7f0a030f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    .line 99
    new-instance v1, Lcom/htc/camera/widget/PanoramaIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/widget/PanoramaIndicatorView$1;-><init>(Lcom/htc/camera/widget/PanoramaIndicatorView;)V

    iput-object v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    .line 117
    const v1, 0x7f0a0317

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 118
    const v2, 0x7f0a0318

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    .line 120
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    .line 122
    iget-object v3, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v3, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    const v4, 0x7f0a0314

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    new-array v4, v9, [F

    aput v1, v4, v6

    aput v2, v4, v5

    aput v1, v4, v7

    aput v2, v4, v8

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 129
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/PanoramaIndicatorView;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/widget/PanoramaIndicatorView;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateOrientation()V

    return-void
.end method

.method private checkCurrentOrientation()V
    .locals 6

    .prologue
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 485
    iget-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 487
    iget-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    .line 489
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 491
    iget-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    .line 493
    :cond_1
    return-void
.end method

.method private invalidateView()V
    .locals 6

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->getWidth()I

    move-result v1

    .line 139
    invoke-virtual {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->getHeight()I

    move-result v2

    .line 140
    if-lez v1, :cond_0

    if-gtz v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 148
    sub-int v0, v2, v3

    div-int/lit8 v2, v0, 0x2

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    const/4 v4, 0x0

    add-int/2addr v3, v2

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 156
    const/4 v1, 0x3

    :goto_2
    if-ltz v1, :cond_7

    .line 158
    iget-object v3, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    .line 159
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 160
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 161
    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_5

    .line 162
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 165
    :cond_2
    :goto_3
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_6

    .line 166
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 156
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 152
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1

    .line 163
    :cond_5
    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_2

    .line 164
    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 167
    :cond_6
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_3

    .line 168
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 170
    :cond_7
    iget-object v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v1, v1

    .line 171
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 172
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 173
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 174
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 177
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateFrameOffset()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 355
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_DeltaX:F

    iget v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 359
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    if-nez v2, :cond_1

    .line 361
    :cond_0
    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_DeltaX:F

    iput v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    .line 362
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_1
    iget v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    iget v3, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorAnimationSpeed:F

    float-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    .line 368
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 371
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateHorizontalLineEndPoints()V
    .locals 21

    .prologue
    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->getWidth()I

    move-result v4

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->getHeight()I

    move-result v3

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->checkCurrentOrientation()V

    .line 384
    sget v1, Lcom/htc/camera/widget/PanoramaIndicatorView;->DEVICE_ORIENTATION_LANDSCAPE:I

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    sub-double/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->baseDegree:I

    int-to-double v5, v5

    add-double/2addr v1, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    rem-double v5, v1, v5

    .line 385
    const-wide v1, 0x4066800000000000L    # 180.0

    div-double v1, v5, v1

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v1

    .line 386
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 387
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 388
    const-wide v1, 0x4056800000000000L    # 90.0

    cmpl-double v1, v5, v1

    if-eqz v1, :cond_0

    invoke-static {v7, v8}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    .line 391
    :goto_0
    int-to-double v13, v3

    int-to-double v15, v4

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    .line 394
    const-wide v15, 0x4056800000000000L    # 90.0

    sub-double/2addr v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v15, 0x3fb999999999999aL    # 0.1

    cmpl-double v5, v5, v15

    if-lez v5, :cond_3

    .line 396
    cmpg-double v5, v7, v13

    if-gtz v5, :cond_1

    .line 398
    const/4 v5, 0x0

    .line 399
    div-int/lit8 v6, v3, 0x2

    int-to-double v6, v6

    div-int/lit8 v8, v4, 0x2

    int-to-double v13, v8

    mul-double/2addr v1, v13

    sub-double v1, v6, v1

    double-to-int v2, v1

    .line 401
    sub-int v1, v3, v2

    move v6, v5

    move v5, v2

    move v2, v4

    .line 417
    :goto_1
    div-int/lit8 v7, v4, 0x2

    int-to-double v7, v7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    int-to-double v13, v13

    mul-double/2addr v13, v11

    sub-double/2addr v7, v13

    double-to-int v8, v7

    .line 418
    div-int/lit8 v7, v3, 0x2

    int-to-double v13, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    int-to-double v15, v7

    mul-double/2addr v15, v9

    sub-double/2addr v13, v15

    double-to-int v7, v13

    .line 419
    div-int/lit8 v4, v4, 0x2

    int-to-double v13, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    int-to-double v15, v4

    mul-double/2addr v11, v15

    add-double/2addr v11, v13

    double-to-int v4, v11

    .line 420
    div-int/lit8 v3, v3, 0x2

    int-to-double v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    int-to-double v13, v3

    mul-double/2addr v9, v13

    add-double/2addr v9, v11

    double-to-int v3, v9

    move/from16 v17, v3

    move v3, v1

    move/from16 v1, v17

    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    move/from16 v19, v7

    move v7, v5

    move/from16 v5, v19

    move/from16 v20, v8

    move v8, v6

    move/from16 v6, v20

    .line 435
    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    add-int/2addr v8, v9

    .line 436
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    add-int/2addr v7, v9

    .line 437
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    add-int/2addr v6, v9

    .line 438
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    add-int/2addr v5, v9

    .line 439
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    add-int/2addr v4, v9

    .line 440
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    add-int/2addr v3, v9

    .line 441
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetX:I

    add-int/2addr v2, v9

    .line 442
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineOffsetY:I

    add-int/2addr v1, v9

    .line 445
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9, v8, v7}, Landroid/graphics/Point;->set(II)V

    .line 446
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Point;->set(II)V

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Point;->set(II)V

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Point;->set(II)V

    .line 449
    return-void

    .line 388
    :cond_0
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto/16 :goto_0

    .line 403
    :cond_1
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    sub-double/2addr v5, v13

    cmpg-double v5, v7, v5

    if-gtz v5, :cond_2

    .line 405
    div-int/lit8 v5, v4, 0x2

    int-to-double v5, v5

    int-to-double v7, v3

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v13

    div-double v1, v7, v1

    sub-double v1, v5, v1

    double-to-int v5, v1

    .line 406
    const/4 v2, 0x0

    .line 407
    sub-int v1, v4, v5

    move v6, v5

    move v5, v2

    move v2, v1

    move v1, v3

    .line 408
    goto/16 :goto_1

    .line 413
    :cond_2
    div-int/lit8 v5, v3, 0x2

    int-to-double v5, v5

    div-int/lit8 v7, v4, 0x2

    int-to-double v7, v7

    mul-double/2addr v1, v7

    add-double/2addr v1, v5

    double-to-int v5, v1

    .line 414
    const/4 v2, 0x0

    .line 415
    sub-int v1, v3, v5

    move v6, v4

    goto/16 :goto_1

    .line 424
    :cond_3
    div-int/lit8 v2, v4, 0x2

    .line 425
    const/4 v5, 0x0

    .line 427
    div-int/lit8 v1, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    sub-int v4, v1, v4

    .line 431
    div-int/lit8 v1, v3, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_SpinnerRadius:I

    add-int/2addr v1, v6

    move v6, v2

    move v7, v5

    move v8, v2

    move v5, v4

    move v4, v2

    goto/16 :goto_2
.end method

.method private updateOrientation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide v6, 0x4076800000000000L    # 360.0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    .line 457
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    sub-double/2addr v0, v2

    .line 461
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 462
    sub-double/2addr v0, v6

    .line 465
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 467
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 468
    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    .line 469
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    .line 470
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 482
    :goto_1
    return-void

    .line 463
    :cond_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 464
    add-double/2addr v0, v6

    goto :goto_0

    .line 475
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 476
    iget-wide v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentOrientation:D

    .line 477
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    .line 478
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 481
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->getWidth()I

    move-result v3

    .line 189
    invoke-virtual {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->getHeight()I

    move-result v4

    .line 192
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 193
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 194
    iget-object v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 195
    iget-object v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    iget-object v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 197
    iget-object v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v5, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLineEndPoints:[Landroid/graphics/Point;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    iget-object v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 199
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_HorizontalLinePen:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 204
    iget-boolean v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    .line 208
    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 210
    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    float-to-double v0, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_1

    .line 211
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v5, 0x3ff3ae147ae147aeL    # 1.23

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v5

    move-wide v1, v0

    .line 224
    :goto_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v1

    div-int/lit8 v0, v3, 0x2

    int-to-double v7, v0

    mul-double/2addr v5, v7

    double-to-int v0, v5

    iget v5, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetX:I

    add-int/2addr v5, v0

    .line 225
    div-int/lit8 v0, v4, 0x2

    iget v4, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetY:I

    add-int/2addr v4, v0

    .line 226
    iget-boolean v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_IsFrameIndicatorActive:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImageActive:Landroid/graphics/drawable/Drawable;

    :goto_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 233
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 234
    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v5, v8

    int-to-float v5, v5

    div-int/lit8 v8, v7, 0x2

    sub-int v8, v4, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v5, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 237
    iget-boolean v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowNextFrameIndicator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    if-eqz v0, :cond_0

    .line 239
    iget-boolean v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_IsFrameIndicatorActive:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImageActive:Landroid/graphics/drawable/Drawable;

    :goto_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 240
    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    const/4 v8, 0x2

    if-ne v0, v8, :cond_6

    .line 241
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v0, v8, v1

    div-int/lit8 v2, v3, 0x2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 244
    :goto_3
    iget v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorOffsetX:I

    add-int/2addr v0, v1

    .line 245
    div-int/lit8 v1, v6, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-int/lit8 v1, v7, 0x2

    sub-int v1, v4, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    :cond_0
    return-void

    .line 213
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    float-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v7

    mul-double/2addr v0, v5

    const-wide v5, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v5

    move-wide v1, v0

    goto/16 :goto_0

    .line 217
    :cond_2
    iget v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    float-to-double v0, v0

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    cmpl-double v0, v0, v5

    if-ltz v0, :cond_3

    .line 218
    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v5, 0x3ff3ae147ae147aeL    # 1.23

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v5

    neg-double v0, v0

    move-wide v1, v0

    goto/16 :goto_0

    .line 220
    :cond_3
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_CurrentDeltaX:F

    neg-float v2, v2

    float-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v7

    mul-double/2addr v0, v5

    const-wide v5, 0x3fe999999999999aL    # 0.8

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v5

    neg-double v0, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v5

    move-wide v1, v0

    goto/16 :goto_0

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorImage:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 243
    :cond_6
    neg-double v0, v1

    div-int/lit8 v2, v3, 0x2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 257
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 260
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    .line 261
    return-void
.end method

.method public setBaseDegree(I)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 345
    iput p1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->baseDegree:I

    .line 346
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateHorizontalLineEndPoints()V

    .line 347
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 348
    return-void
.end method

.method public final setDeviceOrientation(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 268
    iget-wide v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    .line 269
    rem-int/lit8 v2, p1, 0x5a

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    .line 271
    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v5, :cond_1

    iget-wide v2, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_LastDeviceOrientationUpdateTime:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iput p1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_DeviceOrientation:I

    .line 275
    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateOrientation()V

    goto :goto_0
.end method

.method public final setFrameIndicatorActivity(Z)V
    .locals 1

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_IsFrameIndicatorActive:Z

    .line 285
    iget-boolean v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 287
    :cond_0
    return-void
.end method

.method public setFrameIndicatorUpdateType(I)V
    .locals 2

    .prologue
    .line 294
    iput p1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_FrameIndicatorUpdateType:I

    .line 295
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_Handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->updateFrameOffset()V

    .line 297
    :cond_0
    return-void
.end method

.method public final setFrameIndicatorVisibility(Z)V
    .locals 1

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    .line 305
    iget-boolean v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidate()V

    .line 307
    :cond_0
    return-void
.end method

.method public setNextFrameIndicatorVisibility(Z)V
    .locals 0

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowNextFrameIndicator:Z

    .line 330
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 331
    return-void
.end method

.method public final setPanoramaDirection(I)V
    .locals 1

    .prologue
    .line 338
    iput p1, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_PanoramaDirection:I

    .line 339
    iget-boolean v0, p0, Lcom/htc/camera/widget/PanoramaIndicatorView;->m_ShowFrameIndicator:Z

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/htc/camera/widget/PanoramaIndicatorView;->invalidateView()V

    .line 341
    :cond_0
    return-void
.end method
