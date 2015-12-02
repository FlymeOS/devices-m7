.class public Lcom/htc/lib1/cc/widget/HtcFooter;
.super Landroid/view/ViewGroup;
.source "HtcFooter.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private dividerM2:I

.field private enableDivider:Z

.field private footerArea:Landroid/graphics/Rect;

.field private mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDisplayMode:I

.field private mDividerLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mLandScapreDefWidth:I

.field private mLocation:[I

.field private mOneChildHeight:I

.field private mOneChildWidth:I

.field private mPortraitDefHeight:I

.field private mReverseEnabled:Z

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeperatorHeight:I

.field private mSeperatorWidth:I

.field private mShrinkTouchAreaEnabled:Z

.field private mShrinkTouchAreaOffsetLeft:I

.field private mShrinkTouchAreaOffsetRight:I

.field private mStyleMode:I

.field private mTransparent:Z

.field private transparent_ratio:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/lib1/cc/widget/HtcFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 245
    sget v0, Lcom/htc/lib1/cc/b;->footerStyle:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;I)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 297
    invoke-direct {p0, p1, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    const v0, 0x43658000    # 229.5f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->transparent_ratio:I

    .line 119
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    .line 120
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mStyleMode:I

    .line 136
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    .line 138
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    .line 143
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mLocation:[I

    .line 1180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    .line 1212
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mReverseEnabled:Z

    .line 1270
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->enableDivider:Z

    .line 298
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mContext:Landroid/content/Context;

    .line 299
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mStyleMode:I

    .line 300
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mConfiguration:Landroid/content/res/Configuration;

    .line 301
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcFooter:[I

    sget v1, Lcom/htc/lib1/cc/k;->FooterBarStyle:I

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 303
    const/4 v0, 0x4

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    .line 304
    const/4 v0, 0x6

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mStyleMode:I

    .line 305
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDividerLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 306
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 309
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/htc/lib1/cc/e;->footerbkg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 312
    :cond_0
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 313
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 315
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/htc/lib1/cc/d;->htc_footer_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcFooter;->ensureIntEven(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mPortraitDefHeight:I

    .line 316
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/htc/lib1/cc/d;->htc_footer_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcFooter;->ensureIntEven(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mLandScapreDefWidth:I

    .line 318
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    .line 319
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 321
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mShrinkTouchAreaOffsetLeft:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mShrinkTouchAreaOffsetRight:I

    .line 323
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 223
    sget v0, Lcom/htc/lib1/cc/b;->footerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 272
    const/4 v0, 0x0

    sget v1, Lcom/htc/lib1/cc/b;->footerStyle:I

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/htc/lib1/cc/widget/HtcFooter;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;I)V

    .line 273
    return-void
.end method

.method private ensureIntEven(I)I
    .locals 1

    .prologue
    .line 326
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private getChildWeight(Landroid/view/View;)I
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 383
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 384
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v0, v1

    :goto_0
    float-to-int v0, v0

    .line 390
    :goto_1
    return v0

    .line 384
    :cond_0
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    const/4 v0, 0x1

    goto :goto_1

    .line 390
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getChildrenTotalWeight()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildCount()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 398
    :goto_0
    if-ge v2, v4, :cond_1

    .line 399
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    .line 400
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v0

    if-lez v5, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    .line 398
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 400
    :cond_0
    float-to-int v0, v0

    goto :goto_1

    .line 402
    :cond_1
    return v3
.end method

.method private getSeparatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getVisibleChildCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildCount()I

    move-result v2

    move v1, v0

    .line 371
    :goto_0
    if-ge v1, v2, :cond_1

    .line 372
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 373
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 374
    add-int/lit8 v0, v0, 0x1

    .line 371
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    :cond_1
    return v0
.end method

.method private initFooter()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDividerLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :goto_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isInRight()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setShrinkTouchAreaEnabled(Z)V

    .line 350
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isShrinkTouchAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 353
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 354
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 356
    const/16 v3, 0x140

    if-gt v2, v3, :cond_0

    const/16 v2, 0x1e0

    if-gt v0, v2, :cond_0

    .line 357
    const-string v0, "HtcFooter"

    const-string v2, "force disable footerbar shrink"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcFooter;->setShrinkTouchAreaEnabled(Z)V

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 364
    return-void

    .line 343
    :cond_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mStyleMode:I

    if-nez v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDividerLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDividerLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 348
    goto :goto_1
.end method

.method private isHorizontal()Z
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1080
    const/4 v0, 0x1

    .line 1082
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInRight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 330
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    if-ne v1, v0, :cond_0

    .line 335
    :goto_0
    return v0

    .line 332
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 333
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v0

    goto :goto_0
.end method

.method private isShrinkTouchAreaEnabled()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mShrinkTouchAreaEnabled:Z

    return v0
.end method

.method private setSeparatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1021
    if-nez p1, :cond_1

    .line 1022
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorWidth(I)V

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 1026
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    .line 1036
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1028
    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1032
    :pswitch_1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1039
    :cond_2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1044
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 1045
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v0, :pswitch_data_1

    .line 1055
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1056
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1047
    :pswitch_2
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1051
    :pswitch_3
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorHeight(I)V

    goto :goto_0

    .line 1058
    :cond_4
    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setSeperatorWidth(I)V

    goto :goto_0

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1045
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setShrinkTouchAreaEnabled(Z)V
    .locals 0

    .prologue
    .line 678
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mShrinkTouchAreaEnabled:Z

    .line 679
    return-void
.end method


# virtual methods
.method public SetDisplayMode(I)V
    .locals 1

    .prologue
    .line 1154
    packed-switch p1, :pswitch_data_0

    .line 1161
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    .line 1165
    :goto_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->initFooter()V

    .line 1166
    return-void

    .line 1157
    :pswitch_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    goto :goto_0

    .line 1154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isShrinkTouchAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mLocation:[I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getLocationOnScreen([I)V

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 670
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mLocation:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mShrinkTouchAreaOffsetLeft:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mLocation:[I

    aget v1, v1, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mShrinkTouchAreaOffsetRight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 671
    :cond_0
    const/4 v0, 0x1

    .line 674
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 888
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 889
    return-void
.end method

.method public enableTransparentBckground(Z)V
    .locals 9

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 898
    .line 900
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    .line 904
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingLeft()I

    move-result v4

    .line 905
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingRight()I

    move-result v5

    .line 906
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingTop()I

    move-result v6

    .line 907
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingBottom()I

    move-result v7

    .line 911
    iget v8, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v8, :pswitch_data_0

    .line 929
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 930
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    if-nez v0, :cond_3

    move v0, v2

    .line 947
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 949
    const-string v1, "HtcFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layerDrawableIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_5

    .line 951
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mBackgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 984
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    :cond_1
    invoke-virtual {p0, v4, v6, v5, v7}, Lcom/htc/lib1/cc/widget/HtcFooter;->setPadding(IIII)V

    .line 991
    return-void

    .line 913
    :pswitch_0
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 919
    goto :goto_0

    .line 921
    :pswitch_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    if-nez v0, :cond_2

    move v0, v2

    .line 922
    goto :goto_0

    :cond_2
    move v0, v3

    .line 927
    goto :goto_0

    :cond_3
    move v0, v3

    .line 933
    goto :goto_0

    .line 936
    :cond_4
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mTransparent:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 939
    goto :goto_0

    .line 953
    :cond_5
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_app_bkg_down_src:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 734
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 736
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcFooter;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 784
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 786
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v1, -0x2

    .line 756
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 760
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/htc/lib1/cc/R$styleable;->LinearLayout_Layout:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 763
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 764
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 766
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 767
    return-object v1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1176
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    return v0
.end method

.method public getFooterArea()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getWidth()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getHeight()I

    move-result v0

    if-gez v0, :cond_1

    .line 1192
    :cond_0
    const/4 v0, 0x0

    .line 1207
    :goto_0
    return-object v0

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 1195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    .line 1197
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1200
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getLocationOnScreen([I)V

    .line 1202
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1203
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1204
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1205
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1207
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->footerArea:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getOneChildHeight()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mOneChildHeight:I

    return v0
.end method

.method public getOneChildWidth()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mOneChildWidth:I

    return v0
.end method

.method public getSeperatorHeight()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mSeperatorHeight:I

    return v0
.end method

.method public getSeperatorWidth()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mSeperatorWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1075
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1076
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const/4 v7, 0x1

    .line 799
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 801
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->enableDivider:Z

    if-nez v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v6

    .line 805
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 807
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildCount()I

    move-result v9

    .line 808
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v2

    .line 809
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getSeparatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 810
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getSeperatorWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v11

    double-to-int v0, v0

    .line 811
    if-ge v0, v7, :cond_1

    move v0, v7

    .line 812
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getSeperatorHeight()I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr v3, v11

    double-to-int v1, v3

    .line 813
    if-ge v1, v7, :cond_9

    move v4, v7

    .line 815
    :goto_1
    if-ne v7, v2, :cond_3

    if-eqz v10, :cond_3

    .line 876
    :cond_2
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 833
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    move-object v2, v5

    :goto_2
    if-ge v3, v9, :cond_2

    .line 834
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 835
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_8

    .line 836
    if-eqz v2, :cond_4

    .line 837
    if-eqz v10, :cond_4

    .line 838
    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v5, :pswitch_data_0

    .line 853
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 854
    iget-boolean v5, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mReverseEnabled:Z

    if-eqz v5, :cond_6

    .line 855
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v8, v5, v7, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 865
    :goto_3
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 866
    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 833
    :cond_4
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_2

    .line 840
    :pswitch_0
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    iget v11, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v7, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v8, v5, v7, v2, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 845
    :pswitch_1
    iget-boolean v5, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mReverseEnabled:Z

    if-eqz v5, :cond_5

    .line 846
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v8, v5, v7, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 848
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v8, v5, v7, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 857
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v5, v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v8, v5, v7, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 860
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    iget v11, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    add-int/2addr v7, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    iget v12, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->dividerM2:I

    sub-int/2addr v11, v12

    invoke-virtual {v8, v5, v7, v2, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    :cond_8
    move-object v1, v2

    goto/16 :goto_4

    :cond_9
    move v4, v1

    goto/16 :goto_1

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildCount()I

    move-result v5

    .line 414
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v0

    .line 416
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingLeft()I

    move-result v1

    .line 417
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 419
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingTop()I

    move-result v3

    .line 420
    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v4, v6

    .line 423
    packed-switch v0, :pswitch_data_0

    .line 433
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingLeft()I

    move-result v3

    .line 434
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingTop()I

    move-result v2

    .line 437
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingTop()I

    .line 438
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingLeft()I

    move-result v1

    .line 439
    const/4 v0, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v4, v5, :cond_3

    .line 440
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mReverseEnabled:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 441
    sub-int v3, v5, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 446
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4

    .line 447
    iget v6, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v6, :pswitch_data_1

    .line 461
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 464
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 465
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 439
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v9, v0

    move v0, v2

    move v2, v1

    move v1, v9

    goto :goto_0

    .line 425
    :pswitch_0
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_3

    .line 426
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 427
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 428
    invoke-virtual {v6, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 425
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 443
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 450
    :pswitch_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v0, v2, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 451
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    move v9, v2

    move v2, v1

    move v1, v9

    .line 453
    goto :goto_2

    .line 456
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 457
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 459
    goto :goto_2

    .line 468
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v0, v2, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 469
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_2

    .line 478
    :cond_3
    return-void

    :cond_4
    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    goto :goto_2

    .line 423
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 447
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17

    .prologue
    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingLeft()I

    move-result v3

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingRight()I

    move-result v4

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingTop()I

    move-result v5

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getPaddingBottom()I

    move-result v6

    .line 493
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 494
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 497
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v1, :pswitch_data_0

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 518
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 519
    if-eqz v7, :cond_0

    iget v2, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_0

    const/4 v2, -0x2

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v8, :cond_0

    const/4 v2, -0x1

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v7, :cond_1

    .line 520
    :cond_0
    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 522
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/HtcFooter;->mLandScapreDefWidth:I

    move/from16 v0, p1

    invoke-static {v2, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    .line 536
    :goto_0
    sget-boolean v7, Lcom/htc/lib1/cc/widget/HtcFooter;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 537
    const-string v7, "HtcFooter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Horizontal ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v7, "HtcFooter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Width ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v7, "HtcFooter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_2
    sub-int v5, v1, v5

    sub-int v10, v5, v6

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildCount()I

    move-result v13

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getVisibleChildCount()I

    move-result v5

    .line 545
    sub-int v3, v2, v3

    sub-int v12, v3, v4

    .line 552
    packed-switch v5, :pswitch_data_1

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildrenTotalWeight()I

    move-result v4

    .line 567
    if-lez v4, :cond_c

    div-int v3, v12, v4

    move v11, v3

    .line 568
    :goto_1
    if-lez v4, :cond_d

    div-int v3, v10, v4

    move v9, v3

    .line 569
    :goto_2
    if-lez v4, :cond_e

    rem-int v5, v12, v4

    .line 570
    :goto_3
    if-lez v4, :cond_f

    rem-int v3, v10, v4

    .line 575
    :goto_4
    const/4 v4, 0x0

    move v8, v4

    move v4, v3

    :goto_5
    if-ge v8, v13, :cond_14

    .line 576
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 577
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildWeight(Landroid/view/View;)I

    move-result v15

    .line 579
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_16

    .line 580
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/widget/HtcFooter;->mDisplayMode:I

    packed-switch v3, :pswitch_data_2

    .line 611
    invoke-direct/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->isHorizontal()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 612
    mul-int v3, v15, v9

    .line 614
    if-lez v4, :cond_3

    if-lez v15, :cond_3

    .line 615
    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v3, v6

    .line 618
    :cond_3
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v12, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 619
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 621
    if-lez v4, :cond_15

    if-lez v15, :cond_15

    .line 622
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    .line 640
    :goto_6
    invoke-virtual {v14, v6, v5}, Landroid/view/View;->measure(II)V

    .line 575
    :goto_7
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v4

    move v4, v3

    goto :goto_5

    .line 499
    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 500
    if-eqz v7, :cond_4

    iget v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    const/4 v1, -0x2

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v8, :cond_4

    const/4 v1, -0x1

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v7, :cond_5

    .line 501
    :cond_4
    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 503
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/HtcFooter;->mPortraitDefHeight:I

    move/from16 v0, p2

    invoke-static {v1, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    goto/16 :goto_0

    .line 508
    :pswitch_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 509
    if-eqz v7, :cond_6

    iget v2, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_6

    const/4 v2, -0x2

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v8, :cond_6

    const/4 v2, -0x1

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v7, :cond_7

    .line 510
    :cond_6
    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 512
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/HtcFooter;->mLandScapreDefWidth:I

    move/from16 v0, p1

    invoke-static {v2, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    goto/16 :goto_0

    .line 525
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 526
    if-eqz v7, :cond_9

    iget v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_9

    const/4 v1, -0x2

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v8, :cond_9

    const/4 v1, -0x1

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v7, :cond_a

    .line 527
    :cond_9
    const/4 v1, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 529
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/HtcFooter;->mPortraitDefHeight:I

    move/from16 v0, p2

    invoke-static {v1, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    goto/16 :goto_0

    .line 554
    :pswitch_2
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v13, :cond_14

    .line 555
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/HtcFooter;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 556
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_b

    .line 557
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 558
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 559
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 554
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    move v11, v12

    .line 567
    goto/16 :goto_1

    :cond_d
    move v9, v10

    .line 568
    goto/16 :goto_2

    .line 569
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 570
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 582
    :pswitch_3
    mul-int v3, v15, v11

    .line 584
    if-lez v5, :cond_10

    if-lez v15, :cond_10

    .line 585
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v3, v6

    .line 588
    :cond_10
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 589
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 590
    if-lez v5, :cond_15

    if-lez v15, :cond_15

    .line 591
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v5

    move v5, v6

    move v6, v7

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_6

    .line 596
    :pswitch_4
    mul-int v3, v15, v9

    .line 598
    if-lez v4, :cond_11

    if-lez v15, :cond_11

    .line 599
    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v3, v6

    .line 602
    :cond_11
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v12, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 603
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 605
    if-lez v4, :cond_15

    if-lez v15, :cond_15

    .line 606
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_6

    .line 625
    :cond_12
    mul-int v3, v15, v11

    .line 627
    if-lez v5, :cond_13

    if-lez v15, :cond_13

    .line 628
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v3, v6

    .line 631
    :cond_13
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 632
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 633
    if-lez v5, :cond_15

    if-lez v15, :cond_15

    .line 634
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v5

    move v5, v6

    move v6, v7

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    goto/16 :goto_6

    .line 652
    :cond_14
    move/from16 v0, p1

    invoke-static {v2, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    move/from16 v0, p2

    invoke-static {v1, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/htc/lib1/cc/widget/HtcFooter;->setMeasuredDimension(II)V

    .line 656
    return-void

    :cond_15
    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_6

    :cond_16
    move v3, v4

    move v4, v5

    goto/16 :goto_7

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 552
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 580
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 1095
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1096
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->initFooter()V

    .line 1097
    return-void
.end method

.method public setDividerEnabled(Z)V
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->enableDivider:Z

    if-ne v0, p1, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1283
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->enableDivider:Z

    .line 1284
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcFooter;->invalidate()V

    goto :goto_0
.end method

.method public setOneChildHeight(I)V
    .locals 1

    .prologue
    .line 174
    if-gez p1, :cond_0

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mOneChildHeight:I

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mOneChildHeight:I

    goto :goto_0
.end method

.method public setOneChildWidth(I)V
    .locals 1

    .prologue
    .line 163
    if-gez p1, :cond_0

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mOneChildWidth:I

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mOneChildWidth:I

    goto :goto_0
.end method

.method public setSeperatorHeight(I)V
    .locals 1

    .prologue
    .line 714
    if-gez p1, :cond_0

    .line 715
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mSeperatorHeight:I

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mSeperatorHeight:I

    goto :goto_0
.end method

.method public setSeperatorWidth(I)V
    .locals 1

    .prologue
    .line 703
    if-gez p1, :cond_0

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mSeperatorWidth:I

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->mSeperatorWidth:I

    goto :goto_0
.end method

.method public setTranparentBckground(Z)V
    .locals 0

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcFooter;->enableTransparentBckground(Z)V

    .line 1001
    return-void
.end method

.method public setTransparentRatio(F)V
    .locals 2

    .prologue
    .line 1260
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1262
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->transparent_ratio:I

    if-ne v1, v0, :cond_0

    .line 1268
    :goto_0
    return-void

    .line 1266
    :cond_0
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcFooter;->transparent_ratio:I

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1247
    const/4 v0, 0x0

    return v0
.end method
