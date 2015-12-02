.class public Lcom/htc/lib1/cc/widget/HtcDateTimeText;
.super Landroid/view/View;
.source "HtcDateTimeText.java"


# instance fields
.field private mFontFamily:Ljava/lang/String;

.field private mKeyOfDateTimeText:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

.field private mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:F

.field private supportStrs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    aput-object v1, v0, v7

    aput-object v1, v0, v8

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    .line 220
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sans-serif"

    aput-object v1, v0, v7

    const-string v1, "sans-serif-light"

    aput-object v1, v0, v8

    const-string v1, "sans-serif-condensed"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->supportStrs:[Ljava/lang/String;

    .line 97
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    new-instance v0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    const v2, 0x3dcccccd    # 0.1f

    const v5, -0x4b4b4c

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;-><init>(Lcom/htc/lib1/cc/widget/HtcDateTimeText;FFFI)V

    aput-object v0, v6, v7

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 100
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    .line 104
    sget v0, Lcom/htc/lib1/cc/k;->fixed_time_pick_primary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextStyle(I)V

    .line 105
    return-void
.end method


# virtual methods
.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTextSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[HtcDateTimeText.onDraw] mText is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 151
    div-float v2, v0, v7

    div-float v0, v1, v7

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 155
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mText:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    .line 157
    add-float/2addr v1, v0

    .line 161
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 162
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    aget-object v3, v3, v0

    .line 163
    if-nez v3, :cond_1

    .line 161
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->shadowColor:I
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->access$000(Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mText:Ljava/lang/String;

    # getter for: Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->dy:F
    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->access$100(Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;)F

    move-result v3

    add-float/2addr v3, v1

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTextColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 136
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 121
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 122
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/MyTableView;->getMyTableChildHeight()I

    move-result v0

    goto :goto_0
.end method

.method public setCustomShadow(IFFFI)V
    .locals 7

    .prologue
    .line 269
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 271
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    new-instance v0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;-><init>(Lcom/htc/lib1/cc/widget/HtcDateTimeText;FFFI)V

    aput-object v0, v6, p1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mShadowStyles:[Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->updateShadowStyle(FFFI)V

    goto :goto_0
.end method

.method setTableView(Lcom/htc/lib1/cc/widget/MyTableView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTableView:Lcom/htc/lib1/cc/widget/MyTableView;

    .line 109
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mKeyOfDateTimeText:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mText:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->invalidate()V

    .line 180
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTextColor:I

    .line 212
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->invalidate()V

    goto :goto_0
.end method

.method public setTextFontFamily(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v0, v1

    .line 229
    :goto_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->supportStrs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->supportStrs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mFontFamily:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mFontFamily:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->invalidate()V

    goto :goto_0

    .line 229
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setTextSize(F)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :goto_1
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTextSize:F

    .line 197
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->invalidate()V

    goto :goto_0

    .line 196
    :cond_1
    iget p1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->mTextSize:F

    goto :goto_1
.end method

.method public setTextStyle(I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 250
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextSize(F)V

    .line 254
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextColor(I)V

    .line 255
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcDateTimeText;->setTextFontFamily(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    :cond_0
    return-void

    .line 249
    :array_0
    .array-data 4
        0x1010095
        0x1010098
        0x10103ac
    .end array-data
.end method
