.class Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HtcRimButton.java"


# instance fields
.field private mCenterXP:I

.field private mCenterYP:I

.field private mColorModeBorderColor:I

.field private mColorModeBorderWidth:I

.field private mColorModePaint:Landroid/graphics/Paint;

.field private mDefaultPressed:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mPressed:Landroid/graphics/drawable/Drawable;

.field private mRest:Landroid/graphics/drawable/Drawable;

.field private mSelectorColor:I

.field private mWidth:I

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcRimButton;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/HtcRimButton;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 284
    const/4 v0, 0x0

    sget v1, Lcom/htc/lib1/cc/k;->HtcButton:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;-><init>(Lcom/htc/lib1/cc/widget/HtcRimButton;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 285
    return-void
.end method

.method public constructor <init>(Lcom/htc/lib1/cc/widget/HtcRimButton;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 279
    const v0, -0x212122

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModeBorderColor:I

    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModeBorderWidth:I

    .line 289
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getBackgroundMode()I

    move-result v0

    .line 290
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->isDarkMode(I)Z

    move-result v1

    .line 292
    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getSelectorColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mSelectorColor:I

    .line 294
    if-eqz v1, :cond_1

    invoke-static {p2, p3, p4, v3}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    .line 298
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mSelectorColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mDefaultPressed:Landroid/graphics/drawable/Drawable;

    .line 299
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mDefaultPressed:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    .line 301
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getBackgroundMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 302
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->color_button_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModeBorderWidth:I

    .line 303
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModeBorderColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 304
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModePaint:Landroid/graphics/Paint;

    .line 306
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 307
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getCategoryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    :cond_0
    return-void

    .line 294
    :cond_1
    invoke-static {p2, p3, p4, v2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getButtonDrawable(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private drawPressed(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 390
    :cond_0
    return-void
.end method

.method private drawRest(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getBackgroundMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 382
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModeBorderWidth:I

    .line 383
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 386
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->drawRest(Landroid/graphics/Canvas;)V

    .line 374
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->drawPressed(Landroid/graphics/Canvas;)V

    .line 375
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 443
    :goto_0
    return v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 443
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 436
    :goto_0
    return v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 360
    if-nez p1, :cond_0

    .line 366
    :goto_0
    return v0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 365
    :cond_2
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public getRestDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 409
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 411
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 414
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mCenterXP:I

    .line 415
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mCenterYP:I

    .line 416
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mWidth:I

    .line 417
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mHeight:I

    .line 418
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 404
    :cond_0
    return-void
.end method

.method public setRestDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 314
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    .line 315
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->this$0:Lcom/htc/lib1/cc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcRimButton;->getBackgroundMode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mRest:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcRimButton$BackgroundDrawable;->mColorModeBorderColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 317
    :cond_0
    return-void
.end method
