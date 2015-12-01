.class public Lcom/htc/lib1/cc/widget/HtcImageButton;
.super Landroid/widget/ImageButton;
.source "HtcImageButton.java"


# static fields
.field private static final ANIMATION_DURATION_UP:I

.field private static mScaleTypes:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBackground:Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;

.field private mBackgroundChange:Z

.field private mBackgroundMode:I

.field private mCategoryColor:I

.field private mCenterX:I

.field private mCenterY:I

.field private mColorOnPaint:Landroid/graphics/Paint;

.field private mDefaultContentMultiplySet:Z

.field private mDownAnimating:Z

.field private mDrawFocusIndicator:Z

.field private mFocusIndicator:Landroid/graphics/drawable/Drawable;

.field private mIsAnimating:Z

.field private mIsColorOn:Z

.field private mIsContentMultiplyRequired:Z

.field private mIsGreenOn:Z

.field private mMaskMode:Landroid/graphics/PorterDuff$Mode;

.field private mMinScaleHeight:F

.field private mMinScaleWidth:F

.field private mMultiplyPaint:Landroid/graphics/Paint;

.field private mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOriginalAlpha:F

.field private mOverlayColor:I

.field private mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

.field private mPressCanceledDueToMoveTooFar:Z

.field private mUpAnimating:Z

.field private mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mUseDynamicScale:Z

.field private mUseSelectorWhenPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/htc/lib1/cc/widget/HtcImageButton;->ANIMATION_DURATION_UP:I

    .line 77
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mScaleTypes:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private calculateScaleRate(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3dccccd0    # 0.100000024f

    .line 335
    if-lt p1, p2, :cond_0

    .line 336
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMinScaleHeight:F

    .line 337
    int-to-float v0, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMinScaleWidth:F

    .line 340
    int-to-float v0, p1

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMinScaleHeight:F

    goto :goto_0
.end method

.method private cancelAnimations()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->onDownAnimationCancel()V

    .line 436
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelEvent()V

    .line 437
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->onUpAnimationCancel()V

    .line 439
    :cond_0
    return-void
.end method

.method private cancelEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 604
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    .line 605
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setScaleWidth(F)V

    .line 606
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setScaleHeight(F)V

    .line 607
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 608
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->invalidate()V

    .line 609
    return-void
.end method

.method private cancelPropertyMove()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelAnimations()V

    .line 457
    return-void
.end method

.method private handelUpEventWithAnimation()V
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->onDownAnimationEnd()V

    .line 396
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 398
    :cond_0
    return-void
.end method

.method private handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 408
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mPressCanceledDueToMoveTooFar:Z

    .line 410
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->removePropertyDown()V

    goto :goto_0

    .line 405
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->handelUpEventWithAnimation()V

    goto :goto_0

    .line 414
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelAnimations()V

    goto :goto_0

    .line 417
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 421
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 422
    rsub-int/lit8 v3, v2, 0x0

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    rsub-int/lit8 v0, v2, 0x0

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    .line 424
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelAnimations()V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mPressCanceledDueToMoveTooFar:Z

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 463
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->removePropertyUp()V

    goto :goto_0

    .line 468
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->removePropertyDown()V

    goto :goto_0

    .line 473
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelPropertyMove()V

    goto :goto_0

    .line 476
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 479
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 480
    rsub-int/lit8 v3, v2, 0x0

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    rsub-int/lit8 v0, v2, 0x0

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    .line 482
    :cond_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelPropertyMove()V

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private removePropertyDown()V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 443
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->onDownAnimationStart()V

    .line 444
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMinScaleWidth:F

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setScaleWidth(F)V

    .line 445
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMinScaleHeight:F

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setScaleHeight(F)V

    .line 446
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->onDownAnimationEnd()V

    .line 447
    return-void
.end method

.method private removePropertyUp()V
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->onDownAnimationEnd()V

    .line 451
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 452
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 453
    return-void
.end method

.method private resetScaleAnimation(II)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcImageButton;->calculateScaleRate(II)V

    .line 346
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMinScaleWidth:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 347
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMinScaleHeight:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 348
    return-void
.end method


# virtual methods
.method protected final getBackgroundMode()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackgroundMode:I

    return v0
.end method

.method protected final getContentMultiplyOn()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    return v0
.end method

.method protected final getDefaultContentMultiplyOn()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mDefaultContentMultiplySet:Z

    return v0
.end method

.method protected final isAnimating()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    return v0
.end method

.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mDownAnimating:Z

    .line 258
    return-void
.end method

.method onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mDownAnimating:Z

    .line 254
    return-void
.end method

.method onDownAnimationStart()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    .line 245
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mDownAnimating:Z

    .line 246
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsGreenOn:Z

    .line 247
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setMultiplyAlpha(I)V

    .line 248
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_0
    return-void

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_5

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsColorOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_4

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v1

    .line 629
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 630
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mOverlayColor:I

    :goto_0
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 631
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 639
    :goto_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mDrawFocusIndicator:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 641
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 643
    :cond_2
    return-void

    .line 630
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mCategoryColor:I

    goto :goto_0

    .line 633
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 636
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 651
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelEvent()V

    .line 652
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mDrawFocusIndicator:Z

    .line 653
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 654
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackgroundMode:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 655
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mDrawFocusIndicator:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_5

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setAlpha(F)V

    .line 657
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageButton;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 658
    return-void

    .line 654
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 655
    :cond_5
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 497
    sparse-switch p1, :sswitch_data_0

    .line 511
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 500
    :sswitch_0
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->removePropertyDown()V

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->removePropertyDown()V

    goto :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 521
    sparse-switch p1, :sswitch_data_0

    .line 539
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 524
    :sswitch_0
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->handelUpEventWithAnimation()V

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->removePropertyUp()V

    goto :goto_0

    .line 521
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onScrollChanged(IIII)V

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackgroundChange:Z

    .line 618
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 355
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 356
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mCenterX:I

    .line 357
    int-to-float v0, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mCenterY:I

    .line 358
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mUseDynamicScale:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcImageButton;->resetScaleAnimation(II)V

    .line 361
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 362
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->setEnableAnimation(Z)V

    .line 595
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcImageButton;->handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V

    .line 600
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 598
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcImageButton;->handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method onUpAnimationCancel()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    .line 287
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mUpAnimating:Z

    .line 288
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mDownAnimating:Z

    .line 289
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/widget/s;->c(Landroid/view/View;)V

    .line 291
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelEvent()V

    .line 647
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onWindowFocusChanged(Z)V

    .line 648
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 550
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 585
    invoke-super {p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getAlpha()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mOriginalAlpha:F

    .line 389
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 391
    :cond_0
    return-void
.end method

.method public setAutoStartAnim(Z)V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mUseSelectorWhenPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    .line 731
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 732
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;

    .line 736
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mUseSelectorWhenPressed:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    return-void

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcImageButton$BackgroundDrawable;->setRestDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setColorOn(Z)V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 676
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 677
    :goto_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsColorOn:Z

    .line 679
    if-eq v0, p1, :cond_1

    .line 680
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mColorOnPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 681
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->invalidate()V

    .line 683
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 676
    goto :goto_0
.end method

.method protected final setContentMultiplyOn(Z)V
    .locals 0

    .prologue
    .line 719
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsContentMultiplyRequired:Z

    return-void
.end method

.method public setCustomCategoryColor(I)V
    .locals 3

    .prologue
    .line 768
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 769
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mCategoryColor:I

    .line 770
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mColorOnPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mCategoryColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 771
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 772
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->invalidate()V

    .line 773
    return-void
.end method

.method public setCustomOverlayColor(I)V
    .locals 3

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 760
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mOverlayColor:I

    .line 761
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mOverlayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 762
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 763
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->invalidate()V

    .line 764
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 370
    :cond_0
    if-nez p1, :cond_4

    .line 371
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mIsAnimating:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->cancelAnimations()V

    .line 372
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const v0, 0x3ecccccd    # 0.4f

    .line 374
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setAlpha(F)V

    .line 378
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 372
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 376
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mOriginalAlpha:F

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_2
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 693
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    return-void
.end method

.method public setIconResource(I)V
    .locals 0

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setImageResource(I)V

    .line 702
    return-void
.end method

.method setMultiplyAlpha(I)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mMultiplyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 323
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->invalidate()V

    .line 324
    return-void
.end method

.method public setMutateIconResource(I)V
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 712
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 713
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 714
    :cond_0
    return-void

    .line 712
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setOnPressAnimationListener(Lcom/htc/lib1/cc/widget/s;)V
    .locals 0

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcImageButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    .line 239
    :cond_0
    return-void
.end method

.method setScaleHeight(F)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method setScaleWidth(F)V
    .locals 0

    .prologue
    .line 328
    return-void
.end method
