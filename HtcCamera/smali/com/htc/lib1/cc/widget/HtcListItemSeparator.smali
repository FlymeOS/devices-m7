.class public Lcom/htc/lib1/cc/widget/HtcListItemSeparator;
.super Landroid/widget/FrameLayout;
.source "HtcListItemSeparator.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static HEIGHT_AUTOMOTIVE_DARK:I

.field private static HEIGHT_DEFAULT:I

.field private static M1:I

.field private static M2:I

.field private static M3:I

.field private static M4:I

.field private static M5:I


# instance fields
.field private bEnableDivider:Z

.field private mActionButtonWidth:I

.field private mAllCaps:Z

.field private mAllCapsConfirmed:Z

.field private mBottomSpace:I

.field private mButtonFound:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentBackground:I

.field private mCustomTextStyle:[I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

.field private mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

.field private mImageView:[Landroid/widget/ImageView;

.field private mIsIconButton:Z

.field private mIsImageButton:Z

.field private mIsSeparatorWithPowerBy:Z

.field private mIsToggleButtonLight:Z

.field private mItemMode:I

.field private mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mSeparatorEndMargin:I

.field private mSeparatorStartMargin:I

.field private mTextMode:I

.field private mTextView:[Landroid/widget/TextView;

.field private mToggleButtonLight:Landroid/widget/ToggleButton;

.field private mTopSpace:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->HEIGHT_DEFAULT:I

    .line 111
    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    .line 114
    const/16 v0, 0x1e

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M1:I

    .line 115
    const/16 v0, 0x14

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M2:I

    .line 116
    const/16 v0, 0xe

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M3:I

    .line 117
    const/16 v0, 0xc

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M4:I

    .line 118
    const/16 v0, 0x9

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M5:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 60
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 67
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsSeparatorWithPowerBy:Z

    .line 71
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->bEnableDivider:Z

    .line 93
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    .line 108
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mItemMode:I

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCustomTextStyle:[I

    .line 125
    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 144
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mAllCapsConfirmed:Z

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mAllCaps:Z

    .line 149
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTopSpace:I

    .line 150
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mBottomSpace:I

    .line 152
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    .line 153
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    .line 984
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    .line 343
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->init(Landroid/content/Context;)V

    .line 344
    return-void
.end method

.method private findButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 407
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getChildCount()I

    move-result v0

    .line 409
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 410
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 411
    instance-of v2, v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v2, :cond_1

    .line 412
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcIconButton;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 413
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 414
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 415
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    .line 416
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setButtonStyle()V

    .line 437
    :cond_0
    :goto_1
    return-void

    .line 418
    :cond_1
    instance-of v2, v0, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_2

    .line 419
    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    .line 420
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    .line 421
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 422
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 423
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    goto :goto_1

    .line 427
    :cond_2
    instance-of v2, v0, Lcom/htc/lib1/cc/widget/HtcImageButton;

    if-eqz v2, :cond_3

    .line 428
    check-cast v0, Lcom/htc/lib1/cc/widget/HtcImageButton;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    .line 429
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 430
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 431
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    .line 432
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsImageButton:Z

    goto :goto_1

    .line 409
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 259
    .line 260
    packed-switch p1, :pswitch_data_0

    .line 293
    :pswitch_0
    const-string v0, "HtcListItemSeparator"

    const-string v1, "fail to getDrawable."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->common_b_div:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->section_divider_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 281
    :pswitch_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->section_b_divider_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 287
    :pswitch_5
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/e;->section_b_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTextView(I)Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 889
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 891
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 892
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 894
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mItemMode:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackgroundImage(II)V

    .line 898
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setTextAppearance(II)V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->initSize(Landroid/content/Context;)V

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    .line 158
    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    .line 159
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mAllCapsConfirmed:Z

    .line 161
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mAllCaps:Z

    .line 163
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->initDrawables(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 166
    return-void
.end method

.method private initDrawables(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 247
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcListItemSeparator:[I

    sget v1, Lcom/htc/lib1/cc/b;->htcListItemSeparatorStyle:I

    sget v2, Lcom/htc/lib1/cc/k;->HtcListItemSeparatorStyle:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_0

    .line 252
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mLayerDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 253
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    :cond_0
    return-void
.end method

.method private initSize(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 320
    sget v1, Lcom/htc/lib1/cc/d;->htc_list_item_separator_with_text_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->HEIGHT_DEFAULT:I

    .line 321
    sget v1, Lcom/htc/lib1/cc/d;->htc_list_item_separator_automotive_dark_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    .line 323
    invoke-static {p1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getPortraitWindowWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e16872b    # 0.147f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mActionButtonWidth:I

    .line 325
    sget v1, Lcom/htc/lib1/cc/d;->margin_l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M1:I

    .line 326
    sget v1, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M2:I

    .line 327
    sget v1, Lcom/htc/lib1/cc/d;->margin_s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M3:I

    .line 328
    sget v1, Lcom/htc/lib1/cc/d;->margin_xs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M4:I

    .line 329
    sget v1, Lcom/htc/lib1/cc/d;->spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M5:I

    .line 332
    sget v0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M1:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    goto :goto_0
.end method

.method private setBackgroundImage(II)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x3ed

    const/16 v2, 0x3eb

    const/16 v1, 0x3ec

    .line 990
    if-nez p1, :cond_4

    .line 992
    if-nez p2, :cond_1

    .line 994
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    if-eq v0, v2, :cond_0

    .line 996
    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 997
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1002
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    if-eq v0, v1, :cond_0

    .line 1004
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    goto :goto_0

    .line 1007
    :cond_2
    if-ne p2, v4, :cond_3

    .line 1008
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    if-eq v0, v1, :cond_0

    .line 1009
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    goto :goto_0

    .line 1013
    :cond_3
    const-string v0, "HtcListItemSeparator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundImage: unknown text mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1016
    :cond_4
    if-ne p1, v4, :cond_5

    .line 1018
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    if-eq v0, v3, :cond_0

    .line 1020
    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    iput v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    goto :goto_0

    .line 1024
    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1026
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    if-eq v0, v1, :cond_0

    .line 1028
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1029
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mCurrentBackground:I

    goto :goto_0

    .line 1034
    :cond_6
    const-string v0, "HtcListItemSeparator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundImage: unknown item mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setButtonStyle()V
    .locals 3

    .prologue
    .line 967
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    if-nez v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 974
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_b_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 977
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 979
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->automotive_b_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private setDivider(I)V
    .locals 2

    .prologue
    const/16 v1, 0x3e9

    .line 306
    if-nez p1, :cond_1

    .line 307
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 309
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 310
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 311
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setTextAppearance(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1046
    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    if-nez p1, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 1054
    :cond_2
    if-ne p1, v1, :cond_3

    .line 1056
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_b_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 1059
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_automotive_b_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 821
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 823
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->bEnableDivider:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mActionButtonWidth:I

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getVerticalDividerWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M5:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mActionButtonWidth:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    sget v5, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M5:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 830
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 832
    :cond_0
    return-void
.end method

.method getBottomSpace()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mBottomSpace:I

    return v0
.end method

.method getTopSpace()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTopSpace:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 449
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-nez v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->findButton()V

    .line 453
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 661
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-eqz v0, :cond_4

    .line 664
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 666
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getMeasuredWidth()I

    move-result v0

    .line 667
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->getMeasuredHeight()I

    move-result v2

    .line 669
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v4

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->layout(IIII)V

    .line 702
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 705
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 707
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v3, v1

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 811
    :cond_1
    :goto_1
    return-void

    .line 677
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 679
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getMeasuredWidth()I

    move-result v0

    .line 680
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcImageButton;->getMeasuredHeight()I

    move-result v2

    .line 682
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v4

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/htc/lib1/cc/widget/HtcImageButton;->layout(IIII)V

    goto :goto_0

    .line 689
    :cond_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 691
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v0

    .line 692
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getMeasuredHeight()I

    move-result v2

    .line 694
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v4

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v0, v4, v5, v2}, Landroid/widget/ToggleButton;->layout(IIII)V

    goto/16 :goto_0

    .line 716
    :cond_4
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsSeparatorWithPowerBy:Z

    if-eqz v0, :cond_6

    .line 721
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 723
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 724
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 725
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    .line 732
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 737
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 738
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 740
    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    add-int/2addr v0, v4

    sget v4, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M5:I

    add-int/2addr v0, v4

    .line 742
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v4, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 750
    :cond_5
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v1, v3, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_1

    .line 762
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_a

    .line 764
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 765
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 766
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 773
    :goto_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    .line 775
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 776
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 777
    if-nez v0, :cond_9

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    .line 779
    :goto_3
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v4, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTopSpace:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mBottomSpace:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTopSpace:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mBottomSpace:I

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 786
    :cond_7
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    if-eqz v0, :cond_8

    .line 788
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 791
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v8

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 798
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v9

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 801
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 803
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    sub-int/2addr v3, v4

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTopSpace:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mBottomSpace:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTopSpace:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mBottomSpace:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    .line 777
    :cond_9
    sget v4, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M3:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    add-int/2addr v0, v4

    goto/16 :goto_3

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/high16 v8, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 481
    .line 482
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 498
    :goto_0
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 500
    sget v2, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->HEIGHT_DEFAULT:I

    .line 508
    :goto_1
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTopSpace:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mBottomSpace:I

    add-int/2addr v3, v4

    add-int v4, v2, v3

    .line 511
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    if-eqz v2, :cond_6

    .line 513
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    if-eqz v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/ToggleButton;->measure(II)V

    .line 521
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    sub-int/2addr v2, v3

    .line 525
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 652
    :cond_0
    :goto_2
    invoke-virtual {p0, v0, v4}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setMeasuredDimension(II)V

    .line 653
    return-void

    .line 486
    :sswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 490
    goto :goto_0

    .line 505
    :cond_1
    sget v2, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->HEIGHT_AUTOMOTIVE_DARK:I

    goto :goto_1

    .line 531
    :cond_2
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    if-eqz v2, :cond_4

    .line 533
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    if-eqz v2, :cond_3

    .line 535
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mActionButtonWidth:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/htc/lib1/cc/widget/HtcIconButton;->measure(II)V

    .line 538
    iput-boolean v10, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->bEnableDivider:Z

    .line 541
    :cond_3
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 544
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mActionButtonWidth:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    sub-int/2addr v2, v3

    sget v3, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M2:I

    sub-int/2addr v2, v3

    .line 545
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    goto :goto_2

    .line 549
    :cond_4
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsImageButton:Z

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    if-eqz v2, :cond_5

    .line 553
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mActionButtonWidth:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/htc/lib1/cc/widget/HtcImageButton;->measure(II)V

    .line 556
    iput-boolean v10, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->bEnableDivider:Z

    .line 559
    :cond_5
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 562
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mActionButtonWidth:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    sub-int/2addr v2, v3

    sget v3, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M2:I

    sub-int/2addr v2, v3

    .line 563
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    goto :goto_2

    .line 570
    :cond_6
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsSeparatorWithPowerBy:Z

    if-eqz v2, :cond_8

    .line 573
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    sget v3, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M5:I

    add-int/2addr v3, v2

    .line 575
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_f

    .line 577
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 578
    :goto_3
    add-int/2addr v2, v3

    .line 580
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 584
    :goto_4
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 586
    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    sub-int/2addr v2, v3

    .line 587
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    :cond_7
    move v2, v1

    .line 577
    goto :goto_3

    .line 594
    :cond_8
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    .line 596
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_a

    .line 598
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 599
    :goto_5
    if-eqz v3, :cond_9

    .line 602
    add-int/2addr v2, v3

    sget v3, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M3:I

    add-int/2addr v2, v3

    .line 604
    :cond_9
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageView:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 608
    :cond_a
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v10

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    if-eqz v3, :cond_c

    .line 611
    sget v2, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M2:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    sub-int/2addr v2, v3

    .line 612
    int-to-float v3, v2

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 613
    int-to-float v5, v2

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 614
    int-to-float v2, v2

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 615
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Landroid/widget/TextView;->measure(II)V

    .line 617
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v10

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 619
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    :cond_b
    move v3, v1

    .line 598
    goto :goto_5

    .line 623
    :cond_c
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    if-eqz v3, :cond_d

    .line 626
    sget v2, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->M2:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    sub-int/2addr v2, v3

    .line 627
    int-to-float v3, v2

    const v5, 0x3f2b851f    # 0.67f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 628
    int-to-float v2, v2

    const v5, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 629
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->measure(II)V

    .line 631
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 635
    :cond_d
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-eqz v3, :cond_e

    .line 638
    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    sub-int/2addr v2, v3

    .line 639
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    .line 642
    :cond_e
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v9

    if-eqz v2, :cond_0

    .line 645
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorStartMargin:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mSeparatorEndMargin:I

    sub-int/2addr v2, v3

    .line 646
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextView:[Landroid/widget/TextView;

    aget-object v3, v3, v9

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    goto/16 :goto_2

    :cond_f
    move v2, v3

    goto/16 :goto_4

    .line 482
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setBackgroundStyle(I)V
    .locals 2

    .prologue
    .line 953
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 963
    :cond_0
    return-void

    .line 955
    :cond_1
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    .line 956
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mItemMode:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    invoke-direct {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setBackgroundImage(II)V

    .line 957
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setDivider(I)V

    .line 959
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 960
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    invoke-direct {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setTextAppearance(II)V

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setBottomSpace(I)V
    .locals 0

    .prologue
    .line 461
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mBottomSpace:I

    .line 462
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->requestLayout()V

    .line 463
    return-void
.end method

.method public setIconButton(Lcom/htc/lib1/cc/widget/HtcIconButton;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1097
    if-eqz p1, :cond_0

    .line 1098
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    .line 1100
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 1101
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 1103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    .line 1105
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    if-nez v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    if-ne v0, v3, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->fixed_b_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 1111
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTextMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIconButton:Lcom/htc/lib1/cc/widget/HtcIconButton;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    sget v2, Lcom/htc/lib1/cc/k;->automotive_b_separator_primary_m:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/lib1/cc/widget/HtcIconButton;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setImageButton(Lcom/htc/lib1/cc/widget/HtcImageButton;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1126
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mImageButton:Lcom/htc/lib1/cc/widget/HtcImageButton;

    .line 1127
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 1128
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 1129
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsImageButton:Z

    .line 1131
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    .line 1134
    :cond_0
    return-void
.end method

.method public setText(II)V
    .locals 1

    .prologue
    .line 860
    packed-switch p1, :pswitch_data_0

    .line 867
    :goto_0
    return-void

    .line 864
    :pswitch_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 860
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 840
    packed-switch p1, :pswitch_data_0

    .line 852
    :goto_0
    return-void

    .line 844
    :pswitch_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mAllCapsConfirmed:Z

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mAllCaps:Z

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mAllCapsConfirmed:Z

    .line 848
    :cond_0
    if-nez p2, :cond_1

    .line 849
    const-string p2, ""

    .line 850
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mAllCaps:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 840
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setText(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 878
    const-string v0, "whichText"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 879
    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 880
    const-string v2, "resId"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 882
    if-eqz v2, :cond_0

    .line 883
    invoke-virtual {p0, v0, v2}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setText(II)V

    .line 886
    :goto_0
    return-void

    .line 885
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setToggleButton(Landroid/widget/ToggleButton;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1143
    if-eqz p1, :cond_0

    .line 1144
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1145
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mToggleButtonLight:Landroid/widget/ToggleButton;

    .line 1146
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mButtonFound:Z

    .line 1147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsIconButton:Z

    .line 1148
    iput-boolean v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mIsToggleButtonLight:Z

    .line 1151
    :cond_0
    return-void
.end method

.method setTopSpace(I)V
    .locals 0

    .prologue
    .line 456
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->mTopSpace:I

    .line 457
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemSeparator;->requestLayout()V

    .line 458
    return-void
.end method
