.class public Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mBlack:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mWhite:I

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    sget v1, Lcom/htc/lib1/cc/c;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mWhite:I

    .line 52
    sget v1, Lcom/htc/lib1/cc/c;->numbers_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mBlack:I

    .line 53
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mIsInitialized:Z

    .line 56
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->getWidth()I

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mDrawValuesReady:Z

    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mXCenter:I

    .line 89
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mYCenter:I

    .line 90
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mXCenter:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mYCenter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mCircleRadius:I

    .line 92
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mIs24HourMode:Z

    if-nez v0, :cond_2

    .line 96
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 97
    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mYCenter:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mYCenter:I

    .line 100
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mDrawValuesReady:Z

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mWhite:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mBlack:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mYCenter:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
