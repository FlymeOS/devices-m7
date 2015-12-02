.class public Lcom/htc/lib1/cc/widget/HtcRimButton;
.super Lcom/htc/lib1/cc/widget/HtcIconButton;
.source "HtcRimButton.java"


# instance fields
.field private mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

.field private mCenterX:I

.field private mCenterY:I

.field private mIsPaddingSetInXML:Z

.field private mUseSelectorWhenPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;-><init>(Landroid/content/Context;IZI)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcIconButton;-><init>(Landroid/content/Context;IZI)V

    .line 25
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mCenterX:I

    .line 26
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mCenterY:I

    .line 27
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 30
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mUseSelectorWhenPressed:Z

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mCenterX:I

    .line 26
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mCenterY:I

    .line 27
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 30
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mUseSelectorWhenPressed:Z

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcRimButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v9, -0x1

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 111
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcRimButton;->useSelectorWhenPressed(Z)V

    .line 114
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->View:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 117
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 118
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 119
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 120
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    if-ne v3, v9, :cond_0

    if-ne v7, v9, :cond_0

    if-ne v6, v9, :cond_0

    if-ne v5, v9, :cond_0

    if-eq v4, v9, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mIsPaddingSetInXML:Z

    .line 126
    if-ltz v3, :cond_b

    move v0, v3

    move v4, v3

    move v5, v3

    .line 131
    :goto_1
    const/4 v6, 0x0

    .line 132
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v7, :cond_1

    .line 133
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 134
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {v7, v6}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 138
    :cond_1
    if-ltz v5, :cond_4

    :goto_2
    if-ltz v4, :cond_5

    :goto_3
    if-ltz v3, :cond_7

    :goto_4
    if-ltz v0, :cond_8

    :goto_5
    invoke-virtual {p0, v5, v4, v3, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setPadding(IIII)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getBackgroundMode()I

    move-result v0

    if-nez v0, :cond_a

    sget v0, Lcom/htc/lib1/cc/k;->button_primary_l:I

    .line 145
    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setSingleLine(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v2, :cond_2

    .line 150
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setHorizontalFadingEdgeEnabled(Z)V

    .line 154
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 124
    goto :goto_0

    :cond_4
    move v5, v8

    .line 138
    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    iget v4, v6, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_7
    move v3, v8

    goto :goto_4

    :cond_8
    if-nez v6, :cond_9

    move v0, v1

    goto :goto_5

    :cond_9
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 144
    :cond_a
    sget v0, Lcom/htc/lib1/cc/k;->b_button_primary_l:I

    goto :goto_6

    :cond_b
    move v0, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 187
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mCenterX:I

    .line 188
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mCenterY:I

    .line 190
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 191
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 174
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 175
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mCenterX:I

    .line 176
    int-to-float v0, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mCenterY:I

    .line 178
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcIconButton;->onSizeChanged(IIII)V

    .line 179
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->isStayInPress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->isPressCanceledDueToMoveTooFar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->isColorOnSet()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setColorOn(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mUseSelectorWhenPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    .line 247
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 248
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    .line 252
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mUseSelectorWhenPressed:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->setRestDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected final setMultiplyAlpha(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    return-void
.end method

.method public useSelectorWhenPressed(Z)V
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    instance-of v1, v0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    if-eqz v1, :cond_1

    .line 261
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    .line 270
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mUseSelectorWhenPressed:Z

    .line 271
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getDefaultContentMultiplyOn()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->setContentMultiplyOn(Z)V

    .line 273
    return-void

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    if-nez v1, :cond_2

    .line 263
    new-instance v1, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;-><init>(Lcom/htc/lib1/cc/widget/HtcRimButton;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    .line 264
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->setRestDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->setRestDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->getRestDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 272
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
