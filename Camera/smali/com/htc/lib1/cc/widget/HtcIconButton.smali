.class public Lcom/htc/lib1/cc/widget/HtcIconButton;
.super Lcom/htc/lib1/cc/widget/HtcButton;
.source "HtcIconButton.java"


# instance fields
.field private mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

.field private mContentShift:I

.field private mPreDrawRegistered:Z

.field private mUseSelectorWhenPressed:Z

.field private methodGetVerticalOffset:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;-><init>(Landroid/content/Context;IZI)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcButton;-><init>(Landroid/content/Context;IZI)V

    .line 28
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mContentShift:I

    .line 30
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mUseSelectorWhenPressed:Z

    .line 237
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mPreDrawRegistered:Z

    .line 105
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->init()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mContentShift:I

    .line 30
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mUseSelectorWhenPressed:Z

    .line 237
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mPreDrawRegistered:Z

    .line 83
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->init()V

    .line 84
    return-void
.end method

.method private computeHorizontalOffset(Landroid/text/Layout;Landroid/graphics/drawable/Drawable;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p2, :cond_0

    .line 150
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getCompoundDrawablePadding()I

    move-result v4

    .line 134
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    move v2, v1

    .line 136
    :goto_1
    if-ge v2, v5, :cond_1

    .line 137
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v0, v6

    .line 138
    if-le v0, v1, :cond_2

    .line 136
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 146
    :cond_1
    add-int v0, v3, v4

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 147
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 148
    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    .line 150
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private computeShift()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 118
    aget-object v3, v1, v0

    if-nez v3, :cond_0

    aget-object v3, v1, v5

    if-eqz v3, :cond_3

    .line 119
    :cond_0
    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    aget-object v0, v1, v0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->computeHorizontalOffset(Landroid/text/Layout;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 125
    :cond_1
    :goto_1
    return v0

    .line 119
    :cond_2
    aget-object v0, v1, v5

    goto :goto_0

    .line 120
    :cond_3
    aget-object v3, v1, v4

    if-nez v3, :cond_4

    aget-object v3, v1, v6

    if-eqz v3, :cond_1

    .line 121
    :cond_4
    aget-object v0, v1, v4

    if-eqz v0, :cond_5

    aget-object v0, v1, v4

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->computeVerticalShift(Landroid/text/Layout;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    goto :goto_1

    :cond_5
    aget-object v0, v1, v6

    goto :goto_2
.end method

.method private computeVerticalShift(Landroid/text/Layout;Landroid/graphics/drawable/Drawable;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 154
    .line 156
    if-eqz p2, :cond_4

    .line 157
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, v1

    .line 158
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v2, v0

    .line 161
    :goto_0
    if-eqz p1, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getExtendedPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getScrollY()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 163
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getExtendedPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getScrollY()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    .line 164
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getLineCount()I

    move-result v0

    .line 165
    invoke-virtual {p1}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v5

    .line 166
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr v0, v5

    .line 168
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 173
    :cond_1
    int-to-float v2, v2

    sub-float v3, v4, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 176
    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    .line 177
    :goto_2
    return v0

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method private findTheValidCompoundDrawable([Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 390
    .line 392
    if-nez p1, :cond_0

    .line 393
    const/4 v1, 0x4

    new-array p1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, p1, v0

    const/4 v1, 0x1

    aput-object v2, p1, v1

    const/4 v1, 0x2

    aput-object v2, p1, v1

    const/4 v1, 0x3

    aput-object v2, p1, v1

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setGravityByDrawable([Landroid/graphics/drawable/Drawable;)V

    move v1, v0

    move-object v0, v2

    .line 397
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 398
    if-nez v0, :cond_1

    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    aget-object v0, p1, v1

    .line 397
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_1
    aput-object v2, p1, v1

    goto :goto_1

    .line 402
    :cond_2
    return-object p1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setGravity(I)V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->useSelectorWhenPressed(Z)V

    .line 111
    return-void
.end method

.method private initReflectionComponents()V
    .locals 5

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 219
    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Landroid/widget/TextView;

    if-eq v0, v1, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_0
    if-eqz v0, :cond_1

    .line 224
    :try_start_0
    const-string v1, "getVerticalOffset"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->methodGetVerticalOffset:Ljava/lang/reflect/Method;

    .line 225
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->methodGetVerticalOffset:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_1
    :goto_1
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setGravityByDrawable(I)V
    .locals 1

    .prologue
    .line 329
    packed-switch p1, :pswitch_data_0

    .line 343
    const/16 v0, 0x11

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setGravity(I)V

    .line 346
    :goto_0
    return-void

    .line 331
    :pswitch_0
    const/16 v0, 0x13

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setGravity(I)V

    goto :goto_0

    .line 334
    :pswitch_1
    const/16 v0, 0x31

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setGravity(I)V

    goto :goto_0

    .line 337
    :pswitch_2
    const/16 v0, 0x15

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setGravity(I)V

    goto :goto_0

    .line 340
    :pswitch_3
    const/16 v0, 0x51

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setGravity(I)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setGravityByDrawable([Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 320
    if-nez p1, :cond_1

    move v0, v1

    .line 322
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    .line 323
    aget-object v3, p1, v2

    if-eqz v3, :cond_2

    .line 325
    :cond_0
    if-gez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setGravityByDrawable(I)V

    .line 326
    return-void

    .line 320
    :cond_1
    array-length v0, p1

    goto :goto_0

    .line 322
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 325
    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->computeShift()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mContentShift:I

    .line 280
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->draw(Landroid/graphics/Canvas;)V

    .line 281
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->invalidate()V

    .line 308
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onDetachedFromWindow()V

    .line 262
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mPreDrawRegistered:Z

    .line 266
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 286
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    .line 289
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mContentShift:I

    .line 293
    :goto_0
    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mContentShift:I

    .line 297
    :cond_0
    :goto_1
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 298
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 299
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 300
    return-void

    .line 290
    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mContentShift:I

    neg-int v1, v1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 291
    goto :goto_0

    .line 294
    :cond_3
    const/16 v3, 0x50

    if-ne v2, v3, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mContentShift:I

    neg-int v0, v0

    goto :goto_1
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcButton;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    :try_start_0
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->onPreDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 255
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mPreDrawRegistered:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mPreDrawRegistered:Z

    throw v0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->onRtlPropertiesChanged(I)V

    .line 246
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mPreDrawRegistered:Z

    .line 250
    :cond_0
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic performClick()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic performLongClick()Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcButton;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mUseSelectorWhenPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    if-eqz v0, :cond_0

    .line 455
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 456
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    .line 460
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mUseSelectorWhenPressed:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;->setRestDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bridge synthetic setColorOn(Z)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setColorOn(Z)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 372
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    aput-object p3, v0, v3

    aput-object p4, v0, v4

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->findTheValidCompoundDrawable([Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 373
    aget-object v1, v0, v1

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    aget-object v0, v0, v4

    invoke-super {p0, v1, v2, v3, v0}, Lcom/htc/lib1/cc/widget/HtcButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 374
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 387
    return-void
.end method

.method public bridge synthetic setCustomCategoryColor(I)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setCustomCategoryColor(I)V

    return-void
.end method

.method public bridge synthetic setCustomOverlayColor(I)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setCustomOverlayColor(I)V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setEnabled(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setGravityByDrawable([Landroid/graphics/drawable/Drawable;)V

    .line 317
    return-void
.end method

.method setGravityJustForText(I)V
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 355
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 356
    if-eqz v3, :cond_0

    .line 360
    :goto_1
    return-void

    .line 355
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setGravity(I)V

    goto :goto_1
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setHorizontalFadingEdgeEnabled(Z)V

    .line 234
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->methodGetVerticalOffset:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->initReflectionComponents()V

    .line 235
    :cond_0
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 412
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 425
    return-void
.end method

.method public setIconResource(I)V
    .locals 1

    .prologue
    .line 433
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    return-void

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic setOnPressAnimationListener(Lcom/htc/lib1/cc/widget/s;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setOnPressAnimationListener(Lcom/htc/lib1/cc/widget/s;)V

    return-void
.end method

.method public bridge synthetic setShadowLayer(FFFI)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcButton;->setShadowLayer(FFFI)V

    return-void
.end method

.method public bridge synthetic setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic stayInPress(Z)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcButton;->stayInPress(Z)V

    return-void
.end method

.method public useSelectorWhenPressed(Z)V
    .locals 3

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 467
    instance-of v1, v0, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    if-eqz v1, :cond_0

    .line 468
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    .line 476
    :goto_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mUseSelectorWhenPressed:Z

    .line 477
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 478
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getDefaultContentMultiplyOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setContentMultiplyOn(Z)V

    .line 479
    return-void

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    if-nez v1, :cond_1

    .line 470
    new-instance v1, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;-><init>(Lcom/htc/lib1/cc/widget/HtcIconButton;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    .line 471
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;->setRestDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;->setRestDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcIconButton;->mBackground:Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton$BackgroundDrawable;->getRestDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 478
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
