.class public Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;
.super Landroid/view/View;
.source "RadialSelectorView.java"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDrawValuesReady:Z

.field private mForceDrawDot:Z

.field private mHasInnerCircle:Z

.field private mInnerNumbersRadiusMultiplier:F

.field private mInvalidateUpdateListener:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mLineLength:I

.field private mNumbersRadiusMultiplier:F

.field private mOuterNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSelectionDegrees:I

.field private mSelectionRadians:D

.field private mSelectionRadius:I

.field private mSelectionRadiusMultiplier:F

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 10

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v4, v4

    sub-float v4, p2, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 183
    iget-boolean v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    if-eqz v5, :cond_6

    .line 184
    if-eqz p3, :cond_4

    .line 187
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v0, v0

    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 188
    int-to-double v5, v0

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 189
    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 190
    int-to-double v5, v5

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 192
    if-gt v0, v5, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v2

    .line 230
    :cond_2
    :goto_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 231
    float-to-double v5, v0

    div-double v3, v5, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    .line 232
    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 235
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 236
    :goto_3
    iget v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_8

    .line 237
    :goto_4
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 238
    rsub-int/lit8 v0, v3, 0x5a

    goto :goto_0

    :cond_3
    move v0, v2

    .line 192
    goto :goto_1

    .line 197
    :cond_4
    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    sub-int/2addr v5, v6

    .line 199
    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    add-int/2addr v6, v7

    .line 201
    iget v7, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    iget v9, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 204
    int-to-double v8, v5

    cmpl-double v5, v3, v8

    if-ltz v5, :cond_5

    int-to-double v8, v7

    cmpg-double v5, v3, v8

    if-gtz v5, :cond_5

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v2

    goto :goto_2

    .line 207
    :cond_5
    int-to-double v5, v6

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_0

    int-to-double v5, v7

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_0

    .line 209
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p4, v2

    goto :goto_2

    .line 218
    :cond_6
    if-nez p3, :cond_2

    .line 219
    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double v5, v5

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 222
    iget v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 223
    if-le v5, v6, :cond_2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 235
    goto :goto_3

    :cond_8
    move v1, v2

    .line 236
    goto :goto_4

    .line 239
    :cond_9
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 240
    add-int/lit8 v0, v3, 0x5a

    goto/16 :goto_0

    .line 241
    :cond_a
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 242
    rsub-int v0, v3, 0x10e

    goto/16 :goto_0

    .line 243
    :cond_b
    if-nez v0, :cond_c

    if-eqz v1, :cond_c

    .line 244
    add-int/lit16 v0, v3, 0x10e

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto/16 :goto_0
.end method

.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 303
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v0, :cond_1

    .line 304
    :cond_0
    const-string v0, "RadialSelectorView"

    const-string v1, "RadialSelectorView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    .line 309
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    .line 310
    const/16 v1, 0x1f4

    .line 312
    invoke-static {v7, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 313
    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 314
    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v6, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 315
    const-string v4, "animationRadiusMultiplier"

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Keyframe;

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    aput-object v3, v5, v10

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 318
    invoke-static {v7, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 319
    invoke-static {v6, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    .line 320
    const-string v4, "alpha"

    new-array v5, v10, [Landroid/animation/Keyframe;

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 322
    new-array v3, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v8

    aput-object v2, v3, v9

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 330
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v0, :cond_1

    .line 331
    :cond_0
    const-string v0, "RadialSelectorView"

    const-string v1, "RadialSelectorView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    .line 336
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    .line 337
    const/16 v1, 0x1f4

    .line 342
    const/high16 v2, 0x3e800000    # 0.25f

    .line 344
    add-float v3, v8, v2

    .line 345
    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 346
    int-to-float v1, v1

    mul-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    .line 347
    sub-float v2, v8, v1

    mul-float/2addr v0, v2

    sub-float v0, v8, v0

    .line 349
    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v9, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 350
    iget v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mTransitionEndRadiusMultiplier:F

    invoke-static {v1, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 351
    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mTransitionMidRadiusMultiplier:F

    invoke-static {v0, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 352
    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 353
    const-string v6, "animationRadiusMultiplier"

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v2, v7, v10

    aput-object v4, v7, v11

    aput-object v0, v7, v12

    const/4 v0, 0x3

    aput-object v5, v7, v0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 356
    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 357
    invoke-static {v1, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 358
    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 359
    const-string v5, "alpha"

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v2, v6, v10

    aput-object v1, v6, v11

    aput-object v4, v6, v12

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 361
    new-array v2, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v10

    aput-object v1, v2, v11

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mInvalidateUpdateListener:Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView$InvalidateUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v2, 0x1

    .line 251
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->getWidth()I

    move-result v0

    .line 252
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    if-nez v0, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mXCenter:I

    .line 258
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    .line 259
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mXCenter:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadiusMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    .line 261
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mIs24HourMode:Z

    if-nez v0, :cond_2

    .line 265
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 266
    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    .line 269
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadiusMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    .line 271
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mDrawValuesReady:Z

    .line 275
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mCircleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mLineLength:I

    .line 276
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mXCenter:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double v3, v1

    iget-wide v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v1, v3

    add-int/2addr v1, v0

    .line 277
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mLineLength:I

    int-to-double v3, v3

    iget-wide v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v0, v3

    .line 280
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0x33

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 281
    int-to-float v3, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 283
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mForceDrawDot:Z

    iget v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionDegrees:I

    rem-int/lit8 v4, v4, 0x1e

    if-eqz v4, :cond_4

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 285
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x7

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v3, v1

    .line 297
    :goto_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 298
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 299
    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 283
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 290
    :cond_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mLineLength:I

    .line 291
    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadius:I

    sub-int/2addr v0, v1

    .line 292
    iget v1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mXCenter:I

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 293
    iget v2, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mYCenter:I

    int-to-double v3, v0

    iget-wide v5, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    sub-int v0, v2, v0

    move v3, v1

    goto :goto_2
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mAnimationRadiusMultiplier:F

    .line 171
    return-void
.end method

.method public setSelection(IZZ)V
    .locals 4

    .prologue
    .line 145
    iput p1, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionDegrees:I

    .line 146
    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mSelectionRadians:D

    .line 147
    iput-boolean p3, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mForceDrawDot:Z

    .line 149
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mHasInnerCircle:Z

    if-eqz v0, :cond_0

    .line 150
    if-eqz p2, :cond_1

    .line 151
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mInnerNumbersRadiusMultiplier:F

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mOuterNumbersRadiusMultiplier:F

    iput v0, p0, Lcom/htc/lib1/cc/widget/optdatetimepicker/time/RadialSelectorView;->mNumbersRadiusMultiplier:F

    goto :goto_0
.end method
