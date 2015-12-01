.class public Lcom/htc/lib1/cc/widget/HtcScroller;
.super Ljava/lang/Object;
.source "HtcScroller.java"


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrX:I

.field private mCurrY:I

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mEasingFunction:Lcom/htc/lib1/cc/widget/k;

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCoeffX:F

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCoeffY:F

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinished:Z

    .line 82
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 84
    const v1, 0x43c0e9ba

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDeceleration:F

    .line 88
    return-void
.end method

.method private viscousFluid(F)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 436
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mViscousFluidScale:F

    mul-float/2addr v0, p1

    .line 437
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 438
    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 444
    :goto_0
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mViscousFluidNormalize:F

    mul-float/2addr v0, v1

    .line 445
    return v0

    .line 440
    :cond_0
    const v1, 0x3ebc5ab2

    .line 441
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 442
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 218
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    .line 222
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v7, v2

    .line 224
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDuration:I

    if-ge v7, v0, :cond_4

    .line 225
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v6

    .line 273
    goto :goto_0

    .line 227
    :pswitch_0
    int-to-float v0, v7

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDurationReciprocal:F

    mul-float/2addr v0, v2

    .line 228
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mEasingFunction:Lcom/htc/lib1/cc/widget/k;

    if-eqz v2, :cond_2

    .line 229
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mEasingFunction:Lcom/htc/lib1/cc/widget/k;

    int-to-float v2, v7

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDeltaX:F

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/k;->a(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    .line 230
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mEasingFunction:Lcom/htc/lib1/cc/widget/k;

    int-to-float v2, v7

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDeltaY:F

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDuration:I

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/k;->a(FFFFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    goto :goto_1

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_3

    .line 234
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcScroller;->viscousFluid(F)F

    move-result v0

    .line 238
    :goto_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartX:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDeltaX:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    .line 239
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartY:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDeltaY:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    .line 240
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 241
    iput-boolean v6, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinished:Z

    goto :goto_1

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    .line 247
    :pswitch_1
    int-to-float v0, v7

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 248
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mVelocity:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v2, v0

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 251
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartX:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCoeffX:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    .line 253
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMaxX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    .line 254
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMinX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    .line 256
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartY:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCoeffY:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    .line 258
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    .line 259
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    .line 261
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 262
    iput-boolean v6, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinished:Z

    goto/16 :goto_1

    .line 269
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalX:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    .line 270
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalY:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    .line 271
    iput-boolean v6, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinished:Z

    goto/16 :goto_1

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fling(IIIIIIII)V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 397
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMode:I

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinished:Z

    .line 400
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 402
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mVelocity:F

    .line 403
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDeceleration:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDuration:I

    .line 405
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartTime:J

    .line 406
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartX:I

    .line 407
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mStartY:I

    .line 409
    cmpl-float v0, v2, v6

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCoeffX:F

    .line 410
    cmpl-float v0, v2, v6

    if-nez v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCoeffY:F

    .line 412
    mul-float v0, v2, v2

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 414
    iput p5, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMinX:I

    .line 415
    iput p6, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMaxX:I

    .line 416
    iput p7, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMinY:I

    .line 417
    iput p8, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMaxY:I

    .line 420
    int-to-float v1, v0

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCoeffX:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalX:I

    .line 422
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalX:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMaxX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalX:I

    .line 423
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalX:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMinX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalX:I

    .line 425
    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCoeffY:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalY:I

    .line 427
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalY:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalY:I

    .line 428
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalY:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mFinalY:I

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mEasingFunction:Lcom/htc/lib1/cc/widget/k;

    .line 430
    return-void

    .line 409
    :cond_0
    int-to-float v0, p3

    div-float/2addr v0, v2

    goto :goto_0

    .line 410
    :cond_1
    int-to-float v0, p4

    div-float v1, v0, v2

    goto :goto_1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcScroller;->mCurrY:I

    return v0
.end method
