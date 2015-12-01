.class public Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleSeekBarDrawable.java"


# static fields
.field private static final DEFAULT_TEXT_COLOR:I

.field private static final DEFAULT_TEXT_SIZE:F

.field private static final DEFAULT_TYPEFACE:Landroid/graphics/Typeface;


# instance fields
.field private final m_BlurFilter:Landroid/graphics/BlurMaskFilter;

.field private m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

.field private m_IsLightOn:Z

.field private m_LightOnCircle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

.field private m_LinePath:Landroid/graphics/Path;

.field private m_LineShadowPath:Landroid/graphics/Path;

.field private final m_OverlayPaint:Landroid/graphics/Paint;

.field private m_Rotation:I

.field private final m_ShadowPaint:Landroid/graphics/Paint;

.field private m_ShadowRect:Landroid/graphics/RectF;

.field private final m_StrokePaint:Landroid/graphics/Paint;

.field private m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f09028a

    .line 79
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 80
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sput v1, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->DEFAULT_TEXT_COLOR:I

    .line 82
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    sput v0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->DEFAULT_TEXT_SIZE:F

    .line 83
    invoke-static {v3}, Lcom/htc/camera/ViewUtil;->getTypefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    .line 84
    return-void

    .line 80
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIIIII)V
    .locals 12

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 65
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LinePath:Landroid/graphics/Path;

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LineShadowPath:Landroid/graphics/Path;

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_StrokePaint:Landroid/graphics/Paint;

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_OverlayPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40000000    # 2.0f

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_BlurFilter:Landroid/graphics/BlurMaskFilter;

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_IsLightOn:Z

    .line 91
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_StrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_StrokePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_StrokePaint:Landroid/graphics/Paint;

    move/from16 v0, p7

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_StrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 95
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_OverlayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_OverlayPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getMultiplyColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    move/from16 v0, p7

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_BlurFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 103
    new-instance v1, Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-direct {v1}, Lcom/htc/camera/widget/ShadowTextDrawable;-><init>()V

    iput-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    .line 104
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    const-string v2, "A"

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/ShadowTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    sget v2, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->DEFAULT_TEXT_COLOR:I

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/ShadowTextDrawable;->setColor(I)V

    .line 106
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    sget v2, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->DEFAULT_TEXT_SIZE:F

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTextSize(F)V

    .line 107
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    sget-object v2, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/htc/camera/widget/ShadowTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    sub-int v1, p2, p6

    sub-int v1, v1, p4

    int-to-float v1, v1

    .line 111
    add-int v2, p5, p4

    int-to-float v2, v2

    .line 112
    new-instance v3, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    move/from16 v0, p4

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;-><init>(FFFZ)V

    iput-object v3, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    .line 115
    new-instance v3, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    div-int/lit8 v4, p7, 0x2

    sub-int v4, p4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;-><init>(FFFZ)V

    iput-object v3, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LightOnCircle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    .line 118
    new-instance v3, Landroid/graphics/RectF;

    move/from16 v0, p4

    int-to-float v4, v0

    sub-float v4, v1, v4

    move/from16 v0, p4

    int-to-float v5, v0

    sub-float v5, v2, v5

    move/from16 v0, p7

    int-to-float v6, v0

    add-float/2addr v5, v6

    move/from16 v0, p4

    int-to-float v6, v0

    add-float/2addr v6, v1

    move/from16 v0, p4

    int-to-float v7, v0

    add-float/2addr v7, v2

    move/from16 v0, p7

    int-to-float v8, v0

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowRect:Landroid/graphics/RectF;

    .line 121
    iget-object v3, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v3}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicWidth()I

    move-result v3

    .line 122
    iget-object v4, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v4}, Lcom/htc/camera/widget/ShadowTextDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 123
    iget-object v5, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    sub-float v7, v1, v7

    float-to-int v7, v7

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    sub-float v8, v2, v8

    float-to-int v8, v8

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    invoke-direct {v6, v7, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Lcom/htc/camera/widget/ShadowTextDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 126
    add-float/2addr v1, v2

    .line 127
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v2

    float-to-double v3, v3

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v5, v2

    mul-float/2addr v5, v2

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v2

    mul-float/2addr v2, v7

    mul-int v7, p4, p4

    int-to-float v7, v7

    sub-float/2addr v2, v7

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-double v2, v3, v5

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 128
    sub-float v3, v1, v2

    .line 129
    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    .line 130
    sub-float/2addr v1, v4

    .line 131
    div-int/lit8 v5, p2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, p2, 0x2

    int-to-float v6, v6

    sub-float v6, v3, v6

    sub-float/2addr v5, v6

    .line 132
    int-to-float v6, p3

    .line 134
    add-float v7, v5, v6

    sub-float/2addr v7, v4

    .line 135
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LinePath:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 136
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LinePath:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LinePath:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LinePath:Landroid/graphics/Path;

    invoke-virtual {v8, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LineShadowPath:Landroid/graphics/Path;

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LineShadowPath:Landroid/graphics/Path;

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v10, v1

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LineShadowPath:Landroid/graphics/Path;

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 142
    iget-object v8, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LineShadowPath:Landroid/graphics/Path;

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v9, v5

    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    const-string v8, "CircleSeekBarDrawable"

    const/16 v9, 0x10

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "x1:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x2

    const-string v10, " y1:"

    aput-object v10, v9, v3

    const/4 v3, 0x3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v3

    const/4 v2, 0x4

    const-string v3, " x2:"

    aput-object v3, v9, v2

    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    const-string v3, " y2:"

    aput-object v3, v9, v2

    const/4 v2, 0x7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v9, v2

    const/16 v1, 0x8

    const-string v2, " x3:"

    aput-object v2, v9, v1

    const/16 v1, 0x9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0xa

    const-string v2, " y3:"

    aput-object v2, v9, v1

    const/16 v1, 0xb

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0xc

    const-string v2, " x4:"

    aput-object v2, v9, v1

    const/16 v1, 0xd

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0xe

    const-string v2, " y4:"

    aput-object v2, v9, v1

    const/16 v1, 0xf

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LineShadowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 155
    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_ShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v0, v0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cX:F

    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v1, v1, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cY:F

    iget-object v2, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v2, v2, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->radius:F

    iget-object v3, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_StrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 161
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_IsLightOn:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LightOnCircle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v0, v0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cX:F

    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LightOnCircle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v1, v1, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cY:F

    iget-object v2, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_LightOnCircle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v2, v2, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->radius:F

    iget-object v3, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_OverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    if-eqz v0, :cond_1

    .line 167
    iget v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Rotation:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v1, v1, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cX:F

    iget-object v2, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v2, v2, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 168
    iget-object v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_TopTextDrawable:Lcom/htc/camera/widget/ShadowTextDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ShadowTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    iget v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Rotation:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v1, v1, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cX:F

    iget-object v2, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Circle:Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;

    iget v2, v2, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable$CircleInfo;->cY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 171
    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public setLightOn(Z)V
    .locals 1

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_IsLightOn:Z

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_IsLightOn:Z

    goto :goto_0
.end method

.method public setRotation(I)V
    .locals 0

    .prologue
    .line 201
    iput p1, p0, Lcom/htc/camera/manualcapture/CircleSeekBarDrawable;->m_Rotation:I

    .line 202
    return-void
.end method
