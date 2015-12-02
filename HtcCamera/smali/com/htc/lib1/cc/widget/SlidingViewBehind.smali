.class Lcom/htc/lib1/cc/widget/SlidingViewBehind;
.super Landroid/view/ViewGroup;
.source "SlidingViewBehind.java"


# instance fields
.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mMarginThreshold:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTransformer:Lcom/htc/lib1/cc/widget/au;

.field private mViewAbove:Lcom/htc/lib1/cc/widget/SlidingViewAbove;

.field private mWidthOffset:I


# direct methods
.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 424
    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mTransformer:Lcom/htc/lib1/cc/widget/au;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mTransformer:Lcom/htc/lib1/cc/widget/au;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mViewAbove:Lcom/htc/lib1/cc/widget/SlidingViewAbove;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/SlidingViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/htc/lib1/cc/widget/au;->a(Landroid/graphics/Canvas;F)V

    .line 114
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 356
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mFadeEnabled:Z

    if-nez v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 357
    :cond_0
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mFadeDegree:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 358
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v1, :cond_1

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 374
    :goto_1
    int-to-float v1, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 364
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 367
    :cond_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 370
    int-to-float v1, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 382
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorEnabled:Z

    if-nez v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    const v1, 0x102001d

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    const-string v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 389
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v1, :cond_3

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 391
    sub-int v0, v1, v0

    .line 392
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getHeight()I

    move-result v2

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 393
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getSelectorTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 400
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 394
    :cond_3
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 396
    add-int/2addr v0, v1

    .line 397
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 398
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getSelectorTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowWidth:I

    if-gtz v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v0, :cond_2

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowWidth:I

    sub-int/2addr v0, v2

    .line 351
    :goto_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowWidth:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 352
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 341
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 343
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 344
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 346
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowWidth:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowWidth:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 265
    :goto_0
    return v0

    .line 262
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 274
    :goto_0
    return v0

    .line 271
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 274
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v0, :cond_1

    .line 235
    packed-switch p2, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_1
    return v0

    .line 237
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 239
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 241
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 242
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 244
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 246
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 248
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 249
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 251
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 253
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 242
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 249
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 198
    if-le p1, v3, :cond_1

    move p1, v0

    .line 199
    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 204
    :goto_1
    return v1

    .line 198
    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 201
    :cond_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    .line 202
    goto :goto_1

    :cond_3
    move v1, p1

    .line 204
    goto :goto_1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 280
    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v4, :cond_2

    .line 281
    if-lt p2, v2, :cond_1

    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMarginThreshold:I

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 281
    goto :goto_0

    .line 282
    :cond_2
    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-ne v4, v0, :cond_4

    .line 283
    if-gt p2, v3, :cond_3

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMarginThreshold:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 284
    :cond_4
    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 285
    if-lt p2, v2, :cond_5

    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMarginThreshold:I

    add-int/2addr v2, v4

    if-le p2, v2, :cond_0

    :cond_5
    if-gt p2, v3, :cond_6

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMarginThreshold:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 315
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 316
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 316
    goto :goto_0

    .line 317
    :cond_2
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 318
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 319
    :cond_3
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 322
    goto :goto_0
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 326
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 327
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 327
    goto :goto_0

    .line 328
    :cond_2
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 329
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 330
    :cond_3
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 333
    goto :goto_0
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 302
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 298
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 300
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_3

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    .line 311
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 307
    goto :goto_0

    .line 308
    :cond_3
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-ne v2, v3, :cond_5

    if-ne p2, v3, :cond_5

    .line 309
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 311
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mChildrenEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    sub-int v0, p4, p2

    .line 123
    sub-int v1, p5, p3

    .line 124
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mWidthOffset:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 125
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mWidthOffset:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 127
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-static {v3, p1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getDefaultSize(II)I

    move-result v0

    .line 132
    invoke-static {v3, p2}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getDefaultSize(II)I

    move-result v1

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->setMeasuredDimension(II)V

    .line 134
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mWidthOffset:I

    sub-int/2addr v0, v2

    invoke-static {p1, v3, v0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 135
    invoke-static {p2, v3, v1}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 136
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 137
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 139
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mChildrenEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 209
    .line 210
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    if-nez v2, :cond_3

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_0

    move v0, v1

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mScrollScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->scrollTo(II)V

    .line 228
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 229
    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->setVisibility(I)V

    .line 231
    return-void

    .line 213
    :cond_3
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_4

    move v0, v1

    .line 215
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 217
    :cond_5
    iget v2, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_7

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_8

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    if-nez p2, :cond_6

    move v0, v1

    .line 221
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_9

    .line 222
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mScrollScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_7
    move v2, v0

    .line 218
    goto :goto_1

    :cond_8
    move v2, v0

    .line 219
    goto :goto_2

    .line 224
    :cond_9
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public scrollTo(II)V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 95
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mTransformer:Lcom/htc/lib1/cc/widget/au;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->invalidate()V

    .line 97
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/htc/lib1/cc/widget/au;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mTransformer:Lcom/htc/lib1/cc/widget/au;

    .line 51
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->removeView(Landroid/view/View;)V

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2

    .prologue
    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    iput p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mFadeDegree:F

    .line 195
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mFadeEnabled:Z

    .line 189
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 151
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_2
    iput p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mMode:I

    .line 158
    return-void
.end method

.method public setScrollScale(F)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mScrollScale:F

    .line 166
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->removeView(Landroid/view/View;)V

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->addView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 179
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->invalidate()V

    .line 180
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const v2, 0x102001d

    .line 410
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 412
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    .line 414
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    .line 416
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectedView:Landroid/view/View;

    const-string v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 417
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->invalidate()V

    .line 419
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    .line 429
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->refreshDrawableState()V

    .line 430
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mSelectorEnabled:Z

    .line 407
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->invalidate()V

    .line 175
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0

    .prologue
    .line 183
    iput p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mShadowWidth:I

    .line 184
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->invalidate()V

    .line 185
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mTouchMode:I

    .line 293
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->mWidthOffset:I

    .line 55
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/SlidingViewBehind;->requestLayout()V

    .line 56
    return-void
.end method
