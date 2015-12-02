.class public Lcom/htc/lib1/cc/widget/HtcListItem;
.super Landroid/widget/FrameLayout;
.source "HtcListItem.java"


# instance fields
.field private bColorBar:Z

.field private bVerticalDivider:Z

.field private countOfStamp:I

.field private countOfText:I

.field private isPhotoFrameExist:Z

.field private mBottomSpace:I

.field mChildOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mColorBar:Landroid/graphics/drawable/ColorDrawable;

.field private mColorBarWidth:I

.field private mContext:Landroid/content/Context;

.field private mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

.field private mDesiredMinHeight:I

.field private mDeviceMode:I

.field private mFinalHeight:I

.field private mFirstComponentAlign:Z

.field private mFixedTopMargin:Z

.field private mLastComponentAlign:Z

.field private mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mLeftSpace:I

.field private mListItemEndMargin:I

.field private mListItemMargin:I

.field private mListItemStartMargin:I

.field private mMode:I

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mRightSpace:I

.field private mSegmentLength:F

.field private mStampTotalLength:I

.field private mTextStampWidth:I

.field private mTextTotalLength:I

.field private mTopSpace:I

.field private mUseCustomHeight:Z

.field private mVirticalDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;-><init>(Landroid/content/Context;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 121
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 129
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    .line 130
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mVirticalDivider:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 148
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    .line 154
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    .line 155
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mBottomSpace:I

    .line 156
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mRightSpace:I

    .line 157
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mSegmentLength:F

    .line 197
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    .line 199
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    .line 201
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 206
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 524
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcListItem$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/HtcListItem$1;-><init>(Lcom/htc/lib1/cc/widget/HtcListItem;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 661
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    .line 662
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    .line 663
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    .line 664
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    .line 665
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    .line 1430
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bColorBar:Z

    .line 1431
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBarWidth:I

    .line 1432
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->isPhotoFrameExist:Z

    .line 1477
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    .line 1492
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    .line 1507
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bVerticalDivider:Z

    .line 1520
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFixedTopMargin:Z

    .line 256
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 257
    invoke-direct {p0, p1, v2, p2}, Lcom/htc/lib1/cc/widget/HtcListItem;->initDrawablesAndItemMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 275
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initHeights()V

    .line 276
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initListener()V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 129
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    .line 130
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mVirticalDivider:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 148
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    .line 154
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    .line 155
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mBottomSpace:I

    .line 156
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mRightSpace:I

    .line 157
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mSegmentLength:F

    .line 197
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    .line 199
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    .line 201
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 206
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 524
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcListItem$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/HtcListItem$1;-><init>(Lcom/htc/lib1/cc/widget/HtcListItem;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 661
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    .line 662
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    .line 663
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    .line 664
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    .line 665
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    .line 1430
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bColorBar:Z

    .line 1431
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBarWidth:I

    .line 1432
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->isPhotoFrameExist:Z

    .line 1477
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    .line 1492
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    .line 1507
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bVerticalDivider:Z

    .line 1520
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFixedTopMargin:Z

    .line 239
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 240
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initDrawablesAndItemMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 242
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initHeights()V

    .line 243
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initListener()V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 291
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 129
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    .line 130
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mVirticalDivider:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 148
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    .line 154
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    .line 155
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mBottomSpace:I

    .line 156
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mRightSpace:I

    .line 157
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mSegmentLength:F

    .line 197
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    .line 199
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    .line 201
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 206
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 524
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcListItem$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/HtcListItem$1;-><init>(Lcom/htc/lib1/cc/widget/HtcListItem;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 661
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    .line 662
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    .line 663
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    .line 664
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    .line 665
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    .line 1430
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bColorBar:Z

    .line 1431
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBarWidth:I

    .line 1432
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->isPhotoFrameExist:Z

    .line 1477
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    .line 1492
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    .line 1507
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bVerticalDivider:Z

    .line 1520
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFixedTopMargin:Z

    .line 292
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    .line 293
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initDrawablesAndItemMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 296
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initHeights()V

    .line 297
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initListener()V

    .line 298
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/HtcListItem;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem;->onChildAdded(Landroid/view/View;)V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 457
    .line 458
    packed-switch p1, :pswitch_data_0

    .line 473
    const-string v0, "HtcListItem"

    const-string v1, "fail to getDrawable."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 467
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_b_div_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDrawablesAndItemMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 374
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcListItem:[I

    sget v1, Lcom/htc/lib1/cc/b;->htcListItemStyle:I

    sget v2, Lcom/htc/lib1/cc/k;->htcListItem:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 382
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 384
    const/4 v0, 0x5

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    .line 386
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    .line 407
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initVirticalDivider()V

    .line 409
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    return-void

    .line 391
    :cond_1
    if-eqz p3, :cond_2

    if-eq p3, v4, :cond_2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_3

    .line 393
    :cond_2
    iput p3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    goto :goto_0

    .line 395
    :cond_3
    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 397
    iput p3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    goto :goto_0

    .line 403
    :cond_4
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    goto :goto_0
.end method

.method private initHeights()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 437
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 438
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM1()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    .line 439
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM1()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    .line 446
    :goto_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 447
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDesiredMinHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    .line 448
    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    .line 443
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM1()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    goto :goto_0
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 453
    return-void
.end method

.method private initVirticalDivider()V
    .locals 2

    .prologue
    .line 415
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 416
    :cond_0
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mVirticalDivider:Landroid/graphics/drawable/Drawable;

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_1
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mVirticalDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private onChildAdded(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 549
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/HtcListItemQuickContactBadge;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/htc/lib1/cc/widget/HtcListItemTileImage;

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->isPhotoFrameExist:Z

    .line 554
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 555
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/ak;

    if-eqz v0, :cond_2

    .line 556
    check-cast p1, Lcom/htc/lib1/cc/widget/ak;

    invoke-interface {p1, v2}, Lcom/htc/lib1/cc/widget/ak;->setAutoMotiveMode(Z)V

    .line 563
    :cond_2
    :goto_0
    return-void

    .line 558
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 559
    :cond_4
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/al;

    if-eqz v0, :cond_2

    .line 560
    check-cast p1, Lcom/htc/lib1/cc/widget/al;

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-interface {p1, v0}, Lcom/htc/lib1/cc/widget/al;->notifyItemMode(I)V

    goto :goto_0
.end method

.method private setColorBarOpacityIfNeeded()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x66

    .line 1469
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bColorBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-nez v0, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0

    .line 1473
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private step0(II)V
    .locals 2

    .prologue
    .line 587
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem;->stepX(II)V

    .line 600
    :goto_0
    return-void

    .line 591
    :sswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem;->setMeasuredDimension(II)V

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem;->step1(II)V

    .line 593
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem;->step2(II)V

    goto :goto_0

    .line 587
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private step1(II)V
    .locals 13

    .prologue
    .line 675
    const/4 v5, 0x0

    .line 676
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mSegmentLength:F

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    .line 678
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    .line 679
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    .line 681
    const/4 v0, 0x0

    .line 682
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mRightSpace:I

    add-int/2addr v1, v2

    add-int v4, v0, v1

    .line 686
    const/4 v1, 0x0

    .line 687
    const/4 v0, 0x0

    move v6, v0

    move v0, p1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v2

    if-ge v6, v2, :cond_1d

    .line 688
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 690
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_2

    .line 692
    :cond_0
    if-nez v6, :cond_1

    .line 694
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    add-int/2addr v2, v4

    move v3, v5

    move v11, v0

    move-object v0, v1

    move v1, v11

    .line 687
    :goto_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_0

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v6, v2, :cond_28

    .line 696
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v4

    move v3, v5

    move v11, v0

    move-object v0, v1

    move v1, v11

    goto :goto_1

    .line 701
    :cond_2
    instance-of v3, v2, Lcom/htc/lib1/cc/widget/ao;

    if-nez v3, :cond_3

    instance-of v3, v2, Lcom/htc/lib1/cc/widget/an;

    if-eqz v3, :cond_27

    .line 703
    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 705
    :goto_2
    invoke-virtual {p0, v2, v3, p2}, Lcom/htc/lib1/cc/widget/HtcListItem;->measureChild(Landroid/view/View;II)V

    .line 707
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 709
    if-nez v6, :cond_4

    .line 710
    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    add-int/2addr v4, v7

    .line 712
    :cond_4
    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    add-int/2addr v4, v7

    .line 714
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5

    .line 715
    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 716
    iget-boolean v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    if-nez v7, :cond_5

    .line 717
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v9, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 722
    :cond_5
    instance-of v7, v2, Lcom/htc/lib1/cc/widget/ao;

    if-eqz v7, :cond_9

    .line 725
    instance-of v1, v2, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;

    if-eqz v1, :cond_8

    .line 726
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_7

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    :goto_3
    sub-int/2addr v4, v0

    .line 729
    :cond_6
    :goto_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    .line 730
    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v5, v0

    .line 731
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    move v0, v4

    move v1, v5

    :goto_5
    move-object v11, v2

    move v2, v0

    move-object v0, v11

    move v12, v3

    move v3, v1

    move v1, v12

    .line 875
    goto/16 :goto_1

    .line 726
    :cond_7
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    goto :goto_3

    .line 727
    :cond_8
    if-nez v6, :cond_6

    .line 728
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_4

    .line 732
    :cond_9
    instance-of v7, v2, Lcom/htc/lib1/cc/widget/an;

    if-eqz v7, :cond_a

    .line 737
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    .line 738
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v5, v0

    .line 739
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    move v0, v4

    move v1, v5

    goto :goto_5

    .line 740
    :cond_a
    instance-of v7, v2, Landroid/widget/EditText;

    if-eqz v7, :cond_b

    .line 746
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    .line 747
    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v5, v0

    .line 748
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    .line 749
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v0, v4

    move v1, v5

    goto :goto_5

    .line 759
    :cond_b
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_c

    .line 761
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-nez v7, :cond_e

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    :goto_6
    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    if-nez v8, :cond_f

    iget v8, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    :goto_7
    iget v10, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v7, v9, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 772
    :cond_c
    instance-of v7, v2, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_10

    .line 775
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v7

    const/4 v8, 0x0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v8, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v2, v7, v0}, Landroid/view/View;->measure(II)V

    .line 794
    :goto_8
    if-nez v6, :cond_15

    .line 796
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    if-eqz v0, :cond_13

    .line 800
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    sub-int v0, v4, v0

    .line 801
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int/2addr v0, v4

    .line 804
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_12

    .line 805
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v4, v7, v8}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getActionButtonWidth(Landroid/content/Context;II)I

    move-result v4

    add-int/2addr v0, v4

    .line 850
    :goto_9
    instance-of v4, v2, Lcom/htc/lib1/cc/widget/HtcCompoundButton;

    if-eqz v4, :cond_1a

    .line 851
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v7}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/view/View;->measure(II)V

    .line 857
    instance-of v4, v1, Lcom/htc/lib1/cc/widget/HtcCompoundButton;

    if-nez v4, :cond_d

    instance-of v1, v1, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    if-eqz v1, :cond_1b

    .line 858
    :cond_d
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    add-int/2addr v0, v1

    move v1, v5

    goto/16 :goto_5

    .line 761
    :cond_e
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    :cond_f
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_7

    .line 779
    :cond_10
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v8

    iget v9, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDesiredMinHeight:I

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_11

    const/high16 v7, 0x40000000    # 2.0f

    :goto_a
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v7, v9, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {v2, v8, v0}, Landroid/view/View;->measure(II)V

    goto :goto_8

    :cond_11
    const/high16 v7, -0x80000000

    goto :goto_a

    .line 807
    :cond_12
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v4, v7}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getPhotoFrameWidth(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_9

    .line 809
    :cond_13
    instance-of v0, v2, Lcom/htc/lib1/cc/widget/am;

    if-eqz v0, :cond_14

    .line 811
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 813
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    sub-int/2addr v0, v4

    goto :goto_9

    .line 818
    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_9

    .line 822
    :cond_15
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_17

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    if-eqz v0, :cond_17

    .line 824
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    sub-int v0, v4, v0

    .line 825
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    iget v8, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v4, v7, v8}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getActionButtonWidth(Landroid/content/Context;II)I

    move-result v4

    add-int/2addr v0, v4

    .line 826
    iget-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bVerticalDivider:Z

    if-eqz v4, :cond_16

    .line 827
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getVerticalDividerWidth()I

    move-result v4

    add-int/2addr v0, v4

    goto/16 :goto_9

    .line 830
    :cond_16
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int/2addr v0, v4

    goto/16 :goto_9

    .line 834
    :cond_17
    instance-of v0, v2, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_19

    .line 836
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int v0, v4, v0

    .line 837
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v6, v4, :cond_18

    .line 838
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    sub-int/2addr v0, v4

    .line 839
    :cond_18
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v0, v4

    goto/16 :goto_9

    .line 843
    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v4

    goto/16 :goto_9

    .line 860
    :cond_1a
    instance-of v1, v2, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    if-eqz v1, :cond_1b

    .line 864
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v6, v1, :cond_1c

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    :goto_b
    add-int/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v4}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/view/View;->measure(II)V

    :cond_1b
    move v1, v5

    goto/16 :goto_5

    :cond_1c
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    goto :goto_b

    .line 879
    :cond_1d
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 882
    :cond_1e
    const/4 v0, 0x0

    .line 883
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    const/16 v2, 0x7d1

    if-eq v1, v2, :cond_1f

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    const/16 v2, 0x7d3

    if-ne v1, v2, :cond_25

    .line 885
    :cond_1f
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM1()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 892
    :cond_20
    :goto_c
    if-eqz v0, :cond_24

    .line 894
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 895
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_21

    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    if-nez v2, :cond_22

    instance-of v1, v1, Lcom/htc/lib1/cc/widget/am;

    if-nez v1, :cond_22

    .line 896
    :cond_21
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int v1, v0, v1

    add-int/2addr v4, v1

    .line 898
    :cond_22
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 899
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_23

    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    if-nez v1, :cond_24

    .line 900
    :cond_23
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 905
    :cond_24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_26

    .line 906
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mSegmentLength:F

    .line 910
    :goto_d
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    .line 912
    return-void

    .line 887
    :cond_25
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    const/16 v2, 0x7d2

    if-ne v1, v2, :cond_20

    .line 889
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM2()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 908
    :cond_26
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mSegmentLength:F

    goto :goto_d

    :cond_27
    move v3, v0

    goto/16 :goto_2

    :cond_28
    move v2, v4

    move v3, v5

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto/16 :goto_1
.end method

.method private step2(II)V
    .locals 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 918
    .line 920
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mSegmentLength:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 921
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mSegmentLength:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    float-to-int v3, v2

    .line 934
    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 941
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    if-gt v2, v3, :cond_2

    .line 943
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    sub-int/2addr v0, v2

    .line 945
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    if-nez v2, :cond_0

    move v0, v1

    .line 946
    :goto_0
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    if-nez v2, :cond_1

    move v2, v1

    .line 948
    :goto_1
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 949
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v2, v0

    :goto_2
    move v6, v1

    move v4, v1

    .line 988
    :goto_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_f

    .line 990
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 992
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-ne v0, v8, :cond_b

    move v0, v4

    move v4, v5

    .line 988
    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v0

    goto :goto_3

    .line 945
    :cond_0
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    goto :goto_0

    .line 946
    :cond_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    div-int/2addr v2, v3

    goto :goto_1

    .line 951
    :cond_2
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    if-lt v2, v0, :cond_3

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    if-le v2, v3, :cond_3

    .line 953
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 954
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 956
    :cond_3
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    if-ge v2, v0, :cond_a

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    if-le v0, v3, :cond_a

    .line 958
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    if-gt v0, v2, :cond_6

    .line 960
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    sub-int/2addr v0, v2

    .line 961
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    if-nez v2, :cond_4

    move v0, v1

    .line 962
    :goto_5
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    if-nez v2, :cond_5

    move v2, v1

    .line 964
    :goto_6
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 965
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v2, v0

    .line 966
    goto :goto_2

    .line 961
    :cond_4
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    div-int/2addr v0, v3

    add-int/2addr v0, v2

    goto :goto_5

    .line 962
    :cond_5
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    div-int/2addr v2, v3

    goto :goto_6

    .line 967
    :cond_6
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    if-le v0, v2, :cond_9

    .line 970
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextStampWidth:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    sub-int v2, v0, v2

    .line 971
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    if-nez v0, :cond_7

    move v0, v1

    .line 972
    :goto_7
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    if-nez v3, :cond_8

    move v2, v1

    .line 974
    :goto_8
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 975
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v2, v0

    .line 976
    goto/16 :goto_2

    .line 971
    :cond_7
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTextTotalLength:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfText:I

    div-int/2addr v0, v3

    goto :goto_7

    .line 972
    :cond_8
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mStampTotalLength:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->countOfStamp:I

    div-int/2addr v2, v4

    add-int/2addr v2, v3

    goto :goto_8

    .line 979
    :cond_9
    const-string v0, "HtcListItem"

    const-string v2, " onMeasure error."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    move v3, v1

    goto/16 :goto_2

    .line 984
    :cond_a
    const-string v0, "HtcListItem"

    const-string v2, " onMeasure error.."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    move v3, v1

    goto/16 :goto_2

    .line 995
    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 998
    instance-of v8, v7, Lcom/htc/lib1/cc/widget/ao;

    if-nez v8, :cond_c

    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_e

    .line 1000
    :cond_c
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v1, v8}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v7, v3, v8}, Landroid/view/View;->measure(II)V

    .line 1009
    :cond_d
    :goto_9
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v4, v8

    .line 1010
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v7

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v4

    move v4, v0

    move v0, v9

    goto/16 :goto_4

    .line 1002
    :cond_e
    instance-of v8, v7, Lcom/htc/lib1/cc/widget/an;

    if-eqz v8, :cond_d

    .line 1004
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v1, v8}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/view/View;->measure(II)V

    goto :goto_9

    .line 1020
    :cond_f
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mBottomSpace:I

    add-int/2addr v0, v1

    add-int/2addr v0, v5

    .line 1022
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_11

    .line 1025
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mUseCustomHeight:Z

    if-eqz v1, :cond_10

    .line 1026
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v4, v1}, Lcom/htc/lib1/cc/widget/HtcListItem;->setMeasuredDimension(II)V

    .line 1036
    :goto_a
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    .line 1037
    return-void

    .line 1028
    :cond_10
    invoke-virtual {p0, v4, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->setMeasuredDimension(II)V

    goto :goto_a

    .line 1030
    :cond_11
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mUseCustomHeight:Z

    if-eqz v1, :cond_12

    .line 1031
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItem;->setMeasuredDimension(II)V

    goto :goto_a

    .line 1033
    :cond_12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->setMeasuredDimension(II)V

    goto :goto_a

    :cond_13
    move v0, v4

    move v4, v5

    goto/16 :goto_4
.end method

.method private stepX(II)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 605
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 607
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v3

    .line 610
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDesiredMinHeight:I

    move v2, v0

    move v7, v1

    move v1, v0

    move v0, v7

    .line 611
    :goto_0
    if-ge v2, v3, :cond_6

    .line 613
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 615
    if-nez v4, :cond_0

    .line 611
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 619
    if-nez v2, :cond_3

    .line 621
    iget-boolean v5, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    if-eqz v5, :cond_1

    .line 623
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v4}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 633
    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_2

    .line 634
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 629
    :cond_1
    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    add-int/2addr v1, v5

    .line 630
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2

    .line 636
    :cond_2
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 638
    :cond_3
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_5

    .line 640
    iget-boolean v5, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    if-eqz v5, :cond_4

    .line 641
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    iget v6, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v4, v5, v6}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getActionButtonWidth(Landroid/content/Context;II)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    .line 644
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 646
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemEndMargin:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 651
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 652
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 656
    :cond_6
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    .line 657
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->setMeasuredDimension(II)V

    .line 658
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1205
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1209
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bColorBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 1211
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->isPhotoFrameExist:Z

    if-eqz v0, :cond_2

    .line 1212
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBarWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v3}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 1216
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1219
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bVerticalDivider:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mVirticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1221
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v1, v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getActionButtonWidth(Landroid/content/Context;II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getVerticalDividerWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1222
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v2, v3, v4}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getActionButtonWidth(Landroid/content/Context;II)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1223
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM1()I

    move-result v2

    .line 1224
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM1()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1226
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mVirticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1227
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mVirticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1229
    :cond_1
    return-void

    .line 1214
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBarWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public enableTexture(Z)V
    .locals 0

    .prologue
    .line 1343
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x2

    .line 492
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 494
    :goto_0
    return-object v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public getBackgroundMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1366
    const/4 v0, 0x0

    return-object v0
.end method

.method getBottomSpace()I
    .locals 1

    .prologue
    .line 1253
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mBottomSpace:I

    return v0
.end method

.method getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method getTopSpace()I
    .locals 1

    .prologue
    .line 1249
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    .prologue
    .line 1051
    iget v7, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    .line 1052
    iget v8, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 1053
    const/4 v0, 0x0

    .line 1055
    const/4 v4, 0x0

    .line 1057
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    add-int/2addr v0, v1

    .line 1062
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1064
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v1, v2}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getPhotoFrameWidth(Landroid/content/Context;I)I

    move-result v10

    .line 1065
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v1, v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getActionButtonWidth(Landroid/content/Context;II)I

    move-result v11

    .line 1078
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    if-eqz v1, :cond_2

    .line 1082
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1083
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1109
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 1111
    const/4 v1, 0x0

    move v6, v1

    move v5, v0

    :goto_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_15

    .line 1112
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1113
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1115
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v12, 0x8

    if-ne v1, v12, :cond_9

    move-object v2, v3

    move v0, v4

    move v1, v5

    .line 1111
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v0

    move v5, v1

    move-object v3, v2

    goto :goto_1

    .line 1085
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 1087
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    instance-of v1, v9, Lcom/htc/lib1/cc/widget/am;

    if-nez v1, :cond_0

    .line 1093
    :cond_3
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 1095
    :cond_4
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    const/16 v2, 0x7d1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    const/16 v2, 0x7d3

    if-ne v1, v2, :cond_6

    .line 1096
    :cond_5
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM1()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 1097
    :cond_6
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    const/16 v2, 0x7d2

    if-ne v1, v2, :cond_7

    .line 1098
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM2()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    .line 1100
    :cond_7
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1104
    :cond_8
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemStartMargin:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1118
    :cond_9
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFixedTopMargin:Z

    if-eqz v1, :cond_b

    if-nez v6, :cond_b

    .line 1119
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    add-int/2addr v1, v8

    iget v12, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mBottomSpace:I

    sub-int/2addr v1, v12

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iget v13, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x2

    move v14, v4

    move v4, v1

    move v1, v14

    .line 1133
    :goto_3
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v0

    .line 1135
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_10

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    if-eqz v0, :cond_10

    .line 1137
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bVerticalDivider:Z

    if-eqz v0, :cond_f

    .line 1138
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getVerticalDividerWidth()I

    move-result v0

    add-int/2addr v0, v5

    .line 1141
    :goto_4
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDeviceMode:I

    iget v12, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    invoke-static {v3, v5, v12}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getActionButtonWidth(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int v5, v0, v3

    .line 1155
    :cond_a
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 1157
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v5

    .line 1167
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_14

    if-nez v6, :cond_14

    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    if-eqz v3, :cond_14

    .line 1171
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 1172
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v11, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    :goto_6
    move v14, v1

    move v1, v0

    move v0, v14

    .line 1179
    goto/16 :goto_2

    .line 1120
    :cond_b
    instance-of v1, v2, Lcom/htc/lib1/cc/widget/am;

    if-eqz v1, :cond_c

    .line 1122
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    move v14, v4

    move v4, v1

    move v1, v14

    goto :goto_3

    .line 1124
    :cond_c
    instance-of v1, v2, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    if-eqz v1, :cond_d

    move-object v1, v2

    check-cast v1, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->isBadgesVerticalCenter()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1125
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    move v14, v4

    move v4, v1

    move v1, v14

    goto :goto_3

    .line 1126
    :cond_d
    instance-of v1, v2, Lcom/htc/lib1/cc/widget/HtcListItem2LineStamp;

    if-eqz v1, :cond_e

    instance-of v1, v3, Lcom/htc/lib1/cc/widget/HtcListItem2LineText;

    if-eqz v1, :cond_e

    move v1, v4

    .line 1127
    goto/16 :goto_3

    .line 1130
    :cond_e
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    add-int/2addr v1, v7

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mBottomSpace:I

    sub-int/2addr v1, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v12, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v12

    iget v12, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v12

    sub-int/2addr v1, v4

    div-int/lit8 v4, v1, 0x2

    move v1, v4

    .line 1131
    goto/16 :goto_3

    .line 1140
    :cond_f
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int v0, v5, v0

    goto/16 :goto_4

    .line 1143
    :cond_10
    instance-of v0, v2, Lcom/htc/lib1/cc/widget/HtcCompoundButton;

    if-nez v0, :cond_12

    if-eqz v3, :cond_11

    instance-of v0, v3, Lcom/htc/lib1/cc/widget/HtcCompoundButton;

    if-nez v0, :cond_12

    :cond_11
    instance-of v0, v2, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    if-nez v0, :cond_12

    instance-of v0, v2, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_a

    .line 1145
    :cond_12
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    sub-int/2addr v5, v0

    goto/16 :goto_5

    .line 1174
    :cond_13
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v10, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_6

    .line 1176
    :cond_14
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mListItemMargin:I

    add-int/2addr v0, v3

    goto :goto_6

    .line 1181
    :cond_15
    return-void

    :cond_16
    move-object v2, v3

    move v0, v4

    move v1, v5

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFinalHeight:I

    .line 583
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem;->step0(II)V

    .line 584
    return-void
.end method

.method public setAutoMotiveMode(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1382
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->setAutoMotiveMode(ZZ)V

    .line 1383
    return-void
.end method

.method public setAutoMotiveMode(ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 1398
    if-eqz p1, :cond_2

    .line 1400
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    if-eq v1, v2, :cond_0

    .line 1404
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    .line 1406
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initHeights()V

    .line 1416
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1417
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1419
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1420
    instance-of v3, v0, Lcom/htc/lib1/cc/widget/ak;

    if-eqz v3, :cond_1

    .line 1422
    check-cast v0, Lcom/htc/lib1/cc/widget/ak;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/widget/ak;->setAutoMotiveMode(Z)V

    .line 1417
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1412
    :cond_2
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mMode:I

    .line 1413
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initHeights()V

    .line 1414
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem;->enableTexture(Z)V

    goto :goto_0

    .line 1426
    :cond_3
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->initVirticalDivider()V

    .line 1427
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->requestLayout()V

    .line 1428
    return-void
.end method

.method setBottomSpace(I)V
    .locals 0

    .prologue
    .line 1244
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mBottomSpace:I

    .line 1245
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->requestLayout()V

    .line 1246
    return-void
.end method

.method public setColorBarEnabled(Z)V
    .locals 1

    .prologue
    .line 1439
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bColorBar:Z

    .line 1440
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bColorBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    .line 1441
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mColorBar:Landroid/graphics/drawable/ColorDrawable;

    .line 1442
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->setColorBarOpacityIfNeeded()V

    .line 1443
    return-void
.end method

.method setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1274
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1275
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 1276
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->requestLayout()V

    .line 1277
    return-void
.end method

.method setCustomLayoutParamsWithoutReLayout(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1282
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1283
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mCustomLayoutParam:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mDesiredMinHeight:I

    .line 1284
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 1292
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1293
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1294
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1295
    if-eqz v1, :cond_0

    .line 1296
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1298
    :cond_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->setColorBarOpacityIfNeeded()V

    .line 1300
    :cond_2
    return-void
.end method

.method public setFirstComponentAlign(Z)V
    .locals 1

    .prologue
    .line 1485
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    if-eq v0, p1, :cond_0

    .line 1487
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFirstComponentAlign:Z

    .line 1488
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->requestLayout()V

    .line 1490
    :cond_0
    return-void
.end method

.method public setFirstComponentTopMarginFixed(Z)V
    .locals 0

    .prologue
    .line 1528
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mFixedTopMargin:Z

    .line 1529
    return-void
.end method

.method public setLastComponentAlign(Z)V
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    if-eq v0, p1, :cond_0

    .line 1502
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLastComponentAlign:Z

    .line 1503
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->requestLayout()V

    .line 1505
    :cond_0
    return-void
.end method

.method public setLeftIndent(Z)V
    .locals 1

    .prologue
    .line 1546
    if-eqz p1, :cond_0

    .line 1547
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getLeftIndentSpace()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLeftSpace(I)V

    .line 1551
    :goto_0
    return-void

    .line 1549
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLeftSpace(I)V

    goto :goto_0
.end method

.method setLeftSpace(I)V
    .locals 0

    .prologue
    .line 1261
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mLeftSpace:I

    .line 1262
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mChildOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 522
    return-void
.end method

.method public setPortrait(Z)V
    .locals 0

    .prologue
    .line 1538
    return-void
.end method

.method setRightSpace(I)V
    .locals 0

    .prologue
    .line 1257
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mRightSpace:I

    .line 1258
    return-void
.end method

.method setTopSpace(I)V
    .locals 0

    .prologue
    .line 1239
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mTopSpace:I

    .line 1240
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem;->requestLayout()V

    .line 1241
    return-void
.end method

.method setUseCustomHeight(Z)V
    .locals 0

    .prologue
    .line 1269
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->mUseCustomHeight:Z

    .line 1270
    return-void
.end method

.method public setVerticalDividerEnabled(Z)V
    .locals 0

    .prologue
    .line 1516
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem;->bVerticalDivider:Z

    .line 1517
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem;->setLastComponentAlign(Z)V

    .line 1518
    return-void
.end method
