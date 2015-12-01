.class public Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;
.super Landroid/view/View;
.source "AmPmCirclesView.java"


# instance fields
.field private mAmOrPm:I

.field private mAmOrPmPressed:I

.field private mAmPmCircleRadius:I

.field private mAmPmCircleRadiusMultiplier:F

.field private mAmPmTextColor:I

.field private mAmPmYCenter:I

.field private mAmText:Ljava/lang/String;

.field private mAmXCenter:I

.field private mBlue:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPmText:Ljava/lang/String;

.field private mPmXCenter:I

.field private mWhite:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mIsInitialized:Z

    .line 67
    return-void
.end method


# virtual methods
.method public getIsTouchingAmOrPm(FF)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 111
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mDrawValuesReady:Z

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 117
    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    int-to-float v3, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 119
    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    if-gt v2, v3, :cond_2

    .line 120
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_2
    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 125
    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    if-gt v1, v2, :cond_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v0, 0xff

    const/16 v4, 0xaf

    const/16 v1, 0x33

    const/4 v8, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->getWidth()I

    move-result v2

    .line 136
    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mDrawValuesReady:Z

    if-nez v2, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 142
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mCircleRadiusMultiplier:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 145
    int-to-float v6, v5

    iget v7, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    .line 146
    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    .line 147
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    add-int/2addr v3, v5

    iput v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    .line 153
    sub-int v3, v2, v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    .line 154
    add-int/2addr v2, v5

    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    .line 156
    iput-boolean v8, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mDrawValuesReady:Z

    .line 161
    :cond_2
    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mWhite:I

    .line 163
    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mWhite:I

    .line 165
    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmOrPm:I

    if-nez v5, :cond_4

    .line 166
    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mBlue:I

    move v9, v2

    move v2, v1

    move v1, v9

    .line 172
    :goto_1
    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmOrPmPressed:I

    if-nez v5, :cond_5

    .line 173
    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mBlue:I

    move v2, v4

    .line 181
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 183
    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 184
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmPmYCenter:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 191
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmText:Ljava/lang/String;

    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmXCenter:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 192
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPmText:Ljava/lang/String;

    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPmXCenter:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 168
    :cond_4
    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmOrPm:I

    if-ne v5, v8, :cond_6

    .line 169
    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mBlue:I

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 170
    goto :goto_1

    .line 175
    :cond_5
    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmOrPmPressed:I

    if-ne v5, v8, :cond_3

    .line 176
    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mBlue:I

    move v0, v4

    .line 177
    goto :goto_2

    :cond_6
    move v1, v2

    move v2, v0

    goto :goto_1
.end method

.method public setAmOrPm(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmOrPm:I

    .line 101
    return-void
.end method

.method public setAmOrPmPressed(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/AmPmCirclesView;->mAmOrPmPressed:I

    .line 105
    return-void
.end method
