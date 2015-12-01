.class public final Lcom/htc/camera/widget/ZoeProgressIndicator;
.super Landroid/view/View;
.source "ZoeProgressIndicator.java"


# static fields
.field private static final SWEEP_ANGLE_END:I

.field private static final SWEEP_ANGLE_START:I


# instance fields
.field private m_ArcWidth:I

.field private final m_BackgroundMaskPaint:Landroid/graphics/Paint;

.field private final m_BackgroundPaint:Landroid/graphics/Paint;

.field private final m_BackgroundPath:Landroid/graphics/Path;

.field private final m_BorderMaskPaint:Landroid/graphics/Paint;

.field private final m_BorderPaint:Landroid/graphics/Paint;

.field private m_BorderWidth:F

.field private final m_ColorMultiplyBounds:Landroid/graphics/RectF;

.field private final m_ProgressDrawingRunnable:Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;

.field private final m_ProgressPaint:Landroid/graphics/Paint;

.field private final m_ProgressPath:Landroid/graphics/Path;

.field private m_ProgressPercentage:I

.field private m_ShadowOffset:F

.field private final m_ShadowPaint:Landroid/graphics/Paint;

.field private final m_ShadowPath:Landroid/graphics/Path;

.field private m_ShadowPosition:Lcom/htc/camera/widget/ShadowPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x94

    sput v0, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_START:I

    .line 76
    const/16 v0, 0xd4

    sput v0, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_END:I

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/widget/ZoeProgressIndicator;)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPath:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/camera/widget/ZoeProgressIndicator;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private calculateArcEndPoint(IIFI)Landroid/graphics/PointF;
    .locals 7

    .prologue
    .line 124
    :goto_0
    if-gez p4, :cond_0

    .line 125
    add-int/lit16 p4, p4, 0x168

    goto :goto_0

    .line 126
    :cond_0
    rem-int/lit16 v0, p4, 0x168

    .line 127
    int-to-double v0, v0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 130
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 131
    float-to-double v3, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    div-int/lit8 v5, p1, 0x2

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 132
    float-to-double v3, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    div-int/lit8 v3, p2, 0x2

    int-to-double v3, v3

    add-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, v2, Landroid/graphics/PointF;->y:F

    .line 133
    return-object v2
.end method

.method private setupPath(II)V
    .locals 11

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 218
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 219
    int-to-float v1, p1

    div-float/2addr v1, v3

    .line 220
    int-to-float v2, p2

    div-float/2addr v2, v3

    .line 223
    div-float/2addr v0, v3

    iget v3, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BorderWidth:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowOffset:F

    sub-float v3, v0, v3

    .line 224
    iget v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ArcWidth:I

    int-to-float v0, v0

    sub-float v4, v3, v0

    .line 225
    new-instance v5, Landroid/graphics/RectF;

    sub-float v0, v1, v3

    sub-float v6, v2, v3

    add-float v7, v1, v3

    add-float v8, v2, v3

    invoke-direct {v5, v0, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 226
    new-instance v6, Landroid/graphics/RectF;

    sub-float v0, v1, v4

    sub-float v7, v2, v4

    add-float/2addr v1, v4

    add-float/2addr v2, v4

    invoke-direct {v6, v0, v7, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 227
    sget v0, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_START:I

    invoke-direct {p0, p1, p2, v3, v0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->calculateArcEndPoint(IIFI)Landroid/graphics/PointF;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 229
    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    sget v1, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_START:I

    int-to-float v1, v1

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 231
    sget v0, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_END:I

    invoke-direct {p0, p1, p2, v4, v0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->calculateArcEndPoint(IIFI)Landroid/graphics/PointF;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    sget v1, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_END:I

    int-to-float v1, v1

    const/high16 v2, -0x3d800000    # -64.0f

    invoke-virtual {v0, v6, v1, v2, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 234
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 237
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 239
    sget-object v0, Lcom/htc/camera/widget/ZoeProgressIndicator$1;->$SwitchMap$com$htc$camera$widget$ShadowPosition:[I

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowPosition:Lcom/htc/camera/widget/ShadowPosition;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ShadowPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    const/4 v0, 0x0

    .line 261
    :goto_0
    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 265
    :cond_0
    sget v0, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_END:I

    sget v1, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_START:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPercentage:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 266
    sget v1, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_START:I

    add-int/2addr v1, v0

    .line 267
    sget v2, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_START:I

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/htc/camera/widget/ZoeProgressIndicator;->calculateArcEndPoint(IIFI)Landroid/graphics/PointF;

    move-result-object v2

    .line 268
    iget-object v3, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 269
    iget-object v3, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPath:Landroid/graphics/Path;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 270
    iget-object v2, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPath:Landroid/graphics/Path;

    sget v3, Lcom/htc/camera/widget/ZoeProgressIndicator;->SWEEP_ANGLE_START:I

    int-to-float v3, v3

    int-to-float v7, v0

    invoke-virtual {v2, v5, v3, v7, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 271
    invoke-direct {p0, p1, p2, v4, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->calculateArcEndPoint(IIFI)Landroid/graphics/PointF;

    move-result-object v2

    .line 272
    iget-object v3, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    iget-object v2, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPath:Landroid/graphics/Path;

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v6, v1, v0, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 274
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 275
    return-void

    .line 242
    :pswitch_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 243
    iget v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowOffset:F

    neg-float v1, v1

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 246
    :pswitch_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 247
    iget v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowOffset:F

    neg-float v1, v1

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 250
    :pswitch_2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 251
    iget v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowOffset:F

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 254
    :pswitch_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 255
    iget v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowOffset:F

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 144
    sget-object v0, Lcom/htc/camera/widget/ZoeProgressIndicator$1;->$SwitchMap$com$htc$camera$widget$ShadowPosition:[I

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowPosition:Lcom/htc/camera/widget/ShadowPosition;

    invoke-virtual {v1}, Lcom/htc/camera/widget/ShadowPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    iget v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPercentage:I

    if-lez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressDrawingRunnable:Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;

    iput-object p1, v0, Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;->canvas:Landroid/graphics/Canvas;

    .line 166
    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ColorMultiplyBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressDrawingRunnable:Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;

    invoke-static {v0, p1, v1, v2}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 167
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressDrawingRunnable:Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/camera/widget/ZoeProgressIndicator$ProgressDrawingRunnable;->canvas:Landroid/graphics/Canvas;

    .line 169
    :cond_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BackgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_BorderMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 177
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 178
    if-eqz p1, :cond_0

    .line 179
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setupPath(II)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ColorMultiplyBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 181
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ColorMultiplyBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 182
    return-void
.end method

.method public setProgressPercentage(I)V
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPercentage:I

    if-eq v0, p1, :cond_0

    .line 191
    iput p1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ProgressPercentage:I

    .line 192
    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setupPath(II)V

    .line 193
    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->invalidate()V

    .line 195
    :cond_0
    return-void
.end method

.method public setShadowPosition(Lcom/htc/camera/widget/ShadowPosition;)V
    .locals 2

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    sget-object p1, Lcom/htc/camera/widget/ShadowPosition;->None:Lcom/htc/camera/widget/ShadowPosition;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowPosition:Lcom/htc/camera/widget/ShadowPosition;

    if-eq v0, p1, :cond_1

    .line 206
    iput-object p1, p0, Lcom/htc/camera/widget/ZoeProgressIndicator;->m_ShadowPosition:Lcom/htc/camera/widget/ShadowPosition;

    .line 207
    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/widget/ZoeProgressIndicator;->setupPath(II)V

    .line 208
    invoke-virtual {p0}, Lcom/htc/camera/widget/ZoeProgressIndicator;->invalidate()V

    .line 210
    :cond_1
    return-void
.end method
