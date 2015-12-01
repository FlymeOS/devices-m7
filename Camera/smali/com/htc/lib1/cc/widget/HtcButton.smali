.class Lcom/htc/lib1/cc/widget/HtcButton;
.super Landroid/widget/Button;
.source "HtcButton.java"


# static fields
.field private static final ANIMATION_DURATION_UP:I


# instance fields
.field private mBackgroundChange:Z

.field private mBackgroundMode:I

.field private mCategoryColor:I

.field private mCenterX:I

.field private mCenterY:I

.field private mColorOnPaint:Landroid/graphics/Paint;

.field private mDefaultContentMultiplySet:Z

.field private mDownAnimating:Z

.field private mDrawFocusIndicator:Z

.field private mExtAnimationMode:I

.field private mFocusIndicator:Landroid/graphics/drawable/Drawable;

.field private mGravity:I

.field private mIsAnimating:Z

.field private mIsColorOn:Z

.field private mIsContentMultiplyRequired:Z

.field private mIsRimMultiply:Z

.field private mIsSelectedColorOn:Z

.field private mMaskMode:Landroid/graphics/PorterDuff$Mode;

.field private mMinScaleHeight:F

.field private mMinScaleWidth:F

.field private mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOverlayColor:I

.field private mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

.field private mPressCanceledDueToMoveTooFar:Z

.field private mPressPaint:Landroid/graphics/Paint;

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mStayInPress:Z

.field private mUpAnimating:Z

.field private mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mUseDynamicScale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/htc/lib1/cc/widget/HtcButton;->ANIMATION_DURATION_UP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/HtcButton;-><init>(Landroid/content/Context;IZI)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    const v3, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    .line 33
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    .line 40
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsColorOn:Z

    .line 43
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    .line 44
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCategoryColor:I

    .line 45
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mGravity:I

    .line 47
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mExtAnimationMode:I

    .line 57
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundChange:Z

    .line 58
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsRimMultiply:Z

    .line 60
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 61
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 62
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleWidth:F

    .line 63
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleHeight:F

    .line 64
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUseDynamicScale:Z

    .line 65
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 146
    invoke-direct {p0, p3, p2, p4}, Lcom/htc/lib1/cc/widget/HtcButton;->initWhenCreateFromJava(ZII)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    const v3, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    .line 33
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    .line 40
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsColorOn:Z

    .line 43
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    .line 44
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCategoryColor:I

    .line 45
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mGravity:I

    .line 47
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mExtAnimationMode:I

    .line 57
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundChange:Z

    .line 58
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 59
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsRimMultiply:Z

    .line 60
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 61
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 62
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleWidth:F

    .line 63
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleHeight:F

    .line 64
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUseDynamicScale:Z

    .line 65
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 121
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcButton;->initWhenInflateFromXml(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-direct {p0, v4, v1, v1}, Lcom/htc/lib1/cc/widget/HtcButton;->initWhenCreateFromJava(ZII)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/HtcButton;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/HtcButton;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/widget/HtcButton;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationCancel()V

    return-void
.end method

.method private calculateScaleRate(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3dccccd0    # 0.100000024f

    .line 382
    if-lt p1, p2, :cond_0

    .line 383
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleHeight:F

    .line 384
    int-to-float v0, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleWidth:F

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleWidth:F

    .line 387
    int-to-float v0, p1

    mul-float/2addr v0, v1

    int-to-float v1, p2

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleHeight:F

    goto :goto_0
.end method

.method private cancelAnimations()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onDownAnimationCancel()V

    .line 480
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelEvent()V

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationCancel()V

    .line 483
    :cond_1
    return-void
.end method

.method private cancelEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 621
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    .line 622
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setScaleWidth(F)V

    .line 623
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setScaleHeight(F)V

    .line 624
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 625
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->invalidate()V

    .line 626
    return-void
.end method

.method private cancelPropertyMove()V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelAnimations()V

    .line 506
    return-void
.end method

.method private handelUpEventWithAnimation()V
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onDownAnimationEnd()V

    .line 438
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationStart()V

    .line 439
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationEnd()V

    .line 440
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->invalidate()V

    .line 442
    :cond_0
    return-void
.end method

.method private handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 452
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressCanceledDueToMoveTooFar:Z

    .line 454
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->removePropertyDown()V

    goto :goto_0

    .line 449
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->handelUpEventWithAnimation()V

    goto :goto_0

    .line 458
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelAnimations()V

    goto :goto_0

    .line 461
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 465
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 466
    rsub-int/lit8 v3, v2, 0x0

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    rsub-int/lit8 v0, v2, 0x0

    if-lt v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    .line 468
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelAnimations()V

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressCanceledDueToMoveTooFar:Z

    goto :goto_0

    .line 447
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
    .line 509
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 512
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->removePropertyUp()V

    goto :goto_0

    .line 517
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->removePropertyDown()V

    goto :goto_0

    .line 522
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelPropertyMove()V

    goto :goto_0

    .line 525
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 528
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 529
    rsub-int/lit8 v3, v2, 0x0

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    rsub-int/lit8 v0, v2, 0x0

    if-lt v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    .line 531
    :cond_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelPropertyMove()V

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->setExtendAnimationFlag()V

    .line 195
    invoke-static {p1, p2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getOverlayColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    .line 196
    invoke-static {p1, p2}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getCategoryColor(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCategoryColor:I

    .line 198
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mGravity:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setGravity(I)V

    .line 200
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->initMultiplyAnimation()V

    .line 202
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    .line 203
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 205
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 206
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    .line 209
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCategoryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 212
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mStayInPress:Z

    .line 213
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsSelectedColorOn:Z

    .line 214
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDownAnimating:Z

    .line 215
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpAnimating:Z

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_focused:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 223
    :cond_0
    return-void
.end method

.method private initMultiplyAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 325
    const-string v0, "scaleWidth"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 326
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v1, Lcom/htc/lib1/cc/widget/HtcButton;->ANIMATION_DURATION_UP:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 329
    const-string v0, "scaleHeight"

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 330
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 331
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    sget v1, Lcom/htc/lib1/cc/widget/HtcButton;->ANIMATION_DURATION_UP:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 333
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 334
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 336
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMultiplyUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcButton$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcButton$1;-><init>(Lcom/htc/lib1/cc/widget/HtcButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    return-void

    .line 325
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 329
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initWhenCreateFromJava(ZII)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 177
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDefaultContentMultiplySet:Z

    .line 178
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    .line 179
    iput p3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mExtAnimationMode:I

    .line 181
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcButton;->setFocusable(Z)V

    .line 182
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcButton;->setClickable(Z)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setMinWidth(I)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setMinHeight(I)V

    .line 188
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method private initWhenInflateFromXml(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    if-eqz p2, :cond_0

    .line 151
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcCompoundButtonMode:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDefaultContentMultiplySet:Z

    .line 153
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDefaultContentMultiplySet:Z

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcAnimationButtonMode:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    .line 158
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mExtAnimationMode:I

    .line 159
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->View:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 162
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcButton;->setFocusable(Z)V

    .line 163
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcButton;->setClickable(Z)V

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcButton;->setMinWidth(I)V

    .line 168
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcButton;->setMinHeight(I)V

    .line 169
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mGravity:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mGravity:I

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    :cond_0
    return-void
.end method

.method private onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDownAnimating:Z

    .line 290
    return-void
.end method

.method private onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDownAnimating:Z

    .line 286
    return-void
.end method

.method private onDownAnimationStart()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    .line 279
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDownAnimating:Z

    .line 280
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsSelectedColorOn:Z

    .line 281
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 282
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onUpAnimationCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpAnimating:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/widget/s;->c(Landroid/view/View;)V

    .line 319
    :cond_0
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    .line 320
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpAnimating:Z

    .line 321
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDownAnimating:Z

    .line 322
    return-void
.end method

.method private onUpAnimationEnd()V
    .locals 4

    .prologue
    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 299
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 301
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsColorOn:Z

    if-eqz v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 307
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpAnimating:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/widget/s;->b(Landroid/view/View;)V

    .line 310
    :cond_1
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    .line 311
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpAnimating:Z

    .line 312
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDownAnimating:Z

    .line 313
    return-void

    .line 303
    :cond_2
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mStayInPress:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpAnimating:Z

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsSelectedColorOn:Z

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private onUpAnimationStart()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpAnimating:Z

    .line 294
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    invoke-interface {v0, p0}, Lcom/htc/lib1/cc/widget/s;->a(Landroid/view/View;)V

    .line 296
    :cond_0
    return-void
.end method

.method private removePropertyDown()V
    .locals 2

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationEnd()V

    .line 488
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onDownAnimationStart()V

    .line 489
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 490
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->invalidate()V

    .line 491
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleWidth:F

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setScaleWidth(F)V

    .line 492
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleHeight:F

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setScaleHeight(F)V

    .line 493
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onDownAnimationEnd()V

    .line 494
    return-void
.end method

.method private removePropertyUp()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onDownAnimationEnd()V

    .line 499
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationStart()V

    .line 501
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onUpAnimationEnd()V

    .line 502
    return-void
.end method

.method private resetScaleAnimation(II)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 392
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcButton;->calculateScaleRate(II)V

    .line 394
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleWidth:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 395
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleHeight:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 396
    const-string v0, "scaleWidth"

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleWidth:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpXScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 397
    const-string v0, "scaleHeight"

    new-array v1, v6, [F

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMinScaleHeight:F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUpYScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 398
    return-void
.end method

.method private setExtendAnimationFlag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 235
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mExtAnimationMode:I

    if-nez v0, :cond_1

    .line 236
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsRimMultiply:Z

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mExtAnimationMode:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsRimMultiply:Z

    goto :goto_0
.end method


# virtual methods
.method protected final getBackgroundMode()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    return v0
.end method

.method protected final getCategoryColor()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCategoryColor:I

    return v0
.end method

.method final getContentMultiplyOn()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    return v0
.end method

.method protected final getDefaultContentMultiplyOn()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDefaultContentMultiplySet:Z

    return v0
.end method

.method protected final getOverlayColor()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    return v0
.end method

.method protected final getOverlayPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected final isAnimating()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    return v0
.end method

.method protected final isColorOnSet()Z
    .locals 1

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsColorOn:Z

    return v0
.end method

.method protected final isPressCanceledDueToMoveTooFar()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressCanceledDueToMoveTooFar:Z

    return v0
.end method

.method protected final isStayInPress()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mStayInPress:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 658
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_6

    .line 660
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsColorOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v0, :cond_7

    .line 661
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 662
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 663
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowRadius:F

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowDx:F

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowDy:F

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 666
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 668
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsColorOn:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v1, :cond_3

    .line 669
    :cond_2
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    :goto_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 670
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowRadius:F

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowDx:F

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowDy:F

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 671
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 677
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDrawFocusIndicator:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 678
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 679
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mFocusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 681
    :cond_4
    return-void

    .line 669
    :cond_5
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCategoryColor:I

    goto :goto_1

    .line 674
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    move v0, v7

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 691
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelEvent()V

    .line 692
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDrawFocusIndicator:Z

    .line 693
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 694
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 695
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mDrawFocusIndicator:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_5

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setAlpha(F)V

    .line 697
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Button;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 698
    return-void

    .line 694
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 695
    :cond_5
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 546
    sparse-switch p1, :sswitch_data_0

    .line 558
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 549
    :sswitch_0
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->removePropertyDown()V

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->removePropertyDown()V

    goto :goto_0

    .line 546
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 568
    sparse-switch p1, :sswitch_data_0

    .line 580
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 571
    :sswitch_0
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->handelUpEventWithAnimation()V

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->removePropertyUp()V

    goto :goto_0

    .line 568
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 633
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onScrollChanged(IIII)V

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundChange:Z

    .line 635
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 408
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 409
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCenterX:I

    .line 410
    int-to-float v0, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCenterY:I

    .line 411
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mUseDynamicScale:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcButton;->resetScaleAnimation(II)V

    .line 413
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 414
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->setEnableAnimation(Z)V

    .line 611
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcButtonUtil;->getEnableAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->handleTouchEventWithAnimation(Landroid/view/MotionEvent;)V

    .line 617
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->handleTouchEventWithoutAnimation(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelEvent()V

    .line 686
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onWindowFocusChanged(Z)V

    .line 687
    return-void
.end method

.method public performClick()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 600
    invoke-super {p0}, Landroid/widget/Button;->performLongClick()Z

    move-result v0

    return v0
.end method

.method protected final setBackgroundMode(I)V
    .locals 4

    .prologue
    .line 245
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    if-ne v0, p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 247
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    .line 249
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 252
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mMaskMode:Landroid/graphics/PorterDuff$Mode;

    .line 253
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->invalidate()V

    goto :goto_0
.end method

.method public setColorOn(Z)V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 716
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 717
    :goto_0
    if-eq v0, p1, :cond_0

    .line 718
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 720
    :goto_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->invalidate()V

    .line 723
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsColorOn:Z

    .line 724
    return-void

    :cond_1
    move v0, v1

    .line 716
    goto :goto_0

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1
.end method

.method final setContentMultiplyOn(Z)V
    .locals 0

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mIsContentMultiplyRequired:Z

    return-void
.end method

.method public setCustomCategoryColor(I)V
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 741
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCategoryColor:I

    .line 742
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mCategoryColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 743
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mColorOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 744
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->invalidate()V

    .line 745
    return-void
.end method

.method public setCustomOverlayColor(I)V
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 732
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    .line 733
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mOverlayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 734
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 735
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->invalidate()V

    .line 736
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 423
    :cond_0
    if-nez p1, :cond_3

    .line 424
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->cancelAnimations()V

    .line 425
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mBackgroundMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    .line 427
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setAlpha(F)V

    .line 431
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 425
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    .line 429
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setAlpha(F)V

    goto :goto_2
.end method

.method protected setMultiplyAlpha(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    return-void
.end method

.method public setOnPressAnimationListener(Lcom/htc/lib1/cc/widget/s;)V
    .locals 0

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mPressAnimationListener:Lcom/htc/lib1/cc/widget/s;

    .line 232
    :cond_0
    return-void
.end method

.method setScaleHeight(F)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method setScaleWidth(F)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 0

    .prologue
    .line 645
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowRadius:F

    .line 646
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowDx:F

    .line 647
    iput p3, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowDy:F

    .line 648
    iput p4, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mShadowColor:I

    .line 650
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 651
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 375
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setTextColor(I)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public stayInPress(Z)V
    .locals 0

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcButton;->mStayInPress:Z

    .line 706
    return-void
.end method
