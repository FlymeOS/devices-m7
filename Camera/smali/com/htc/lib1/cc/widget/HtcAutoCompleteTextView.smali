.class public Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "HtcAutoCompleteTextView.java"


# static fields
.field private static MIN_DROPDOWN_WIDTH:I


# instance fields
.field private mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

.field private mAllBackgroundResourceIds:[I

.field private mBackground:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingLeft:I

.field private mDefaultPaddingRight:I

.field private mDefaultPaddingTop:I

.field private mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mInit:Z

.field private mIsCustomBackground:Z

.field private mIsDown:Z

.field private mIsDownAnimating:Z

.field private mIsDropDownMinWidthEnabled:Z

.field private mIsMove:Z

.field private mIsUserSetAlpha:Z

.field private mIsUserSetDropDown:Z

.field private mMode:I

.field private mMultiplyColor:I

.field private mTouchSlop:I

.field private mUserPadding:I

.field private mUserPaddingBottom:I

.field private mUserPaddingLeft:I

.field private mUserPaddingRight:I

.field private mUserPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x154

    sput v0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->MIN_DROPDOWN_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/htc/lib1/cc/b;->htcAutoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 59
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mInit:Z

    .line 60
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    .line 67
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z

    .line 69
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    .line 70
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    .line 71
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    .line 72
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    .line 73
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    .line 74
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    .line 75
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    .line 76
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    .line 77
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    .line 80
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 82
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDropDownMinWidthEnabled:Z

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->onDownAnimationStart()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->onDownAnimationEnd()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->checkBackgroundAssets(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMultiplyColor:I

    return v0
.end method

.method private checkBackgroundAssets(I)V
    .locals 5

    .prologue
    .line 284
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 294
    add-int/lit8 v2, v0, 0x2

    .line 295
    :goto_1
    if-ge v0, v2, :cond_2

    .line 296
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    :cond_0
    if-nez p1, :cond_1

    .line 287
    const/4 v0, 0x2

    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 299
    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 178
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 181
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcAutoCompleteTextView:[I

    sget v4, Lcom/htc/lib1/cc/k;->htcAutoCompleteTextViewStyleDefault:I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 184
    invoke-virtual {v4, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    .line 185
    invoke-virtual {v4, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    .line 186
    const/4 v0, 0x3

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    .line 187
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    .line 188
    const/4 v0, 0x5

    invoke-virtual {v4, v0, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    .line 190
    const/16 v0, 0x9

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 191
    const/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    .line 192
    const/4 v6, 0x7

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    .line 193
    if-ne v0, v7, :cond_0

    if-ne v5, v7, :cond_0

    if-eq v6, v7, :cond_1

    .line 196
    :cond_0
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 199
    :cond_1
    if-ne v0, v7, :cond_2

    invoke-super {p0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 200
    :cond_2
    if-ne v5, v7, :cond_3

    invoke-super {p0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 202
    :cond_3
    const/16 v0, 0xc

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->mapXMLMode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 203
    sget v0, Lcom/htc/lib1/cc/a;->autocompletetextview_backgrounds:I

    invoke-virtual {v4, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    iget-boolean v5, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    if-nez v5, :cond_4

    .line 207
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->initBackgroundIdList(Landroid/content/res/TypedArray;)V

    .line 210
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    if-nez v0, :cond_7

    .line 213
    const/16 v0, 0xb

    invoke-virtual {v4, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMultiplyColor:I

    .line 214
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMultiplyColor:I

    if-nez v0, :cond_5

    .line 215
    sget v0, Lcom/htc/lib1/cc/c;->overlay_color:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMultiplyColor:I

    .line 218
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme_text_selection_color:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getHighlightColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "|theme_overlay_color:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMultiplyColor:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "|theme_category_color:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_6
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 227
    :cond_7
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 229
    if-nez v0, :cond_8

    sget v0, Lcom/htc/lib1/cc/e;->common_dropdown_background:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 230
    :cond_8
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    sget v0, Lcom/htc/lib1/cc/h;->min_dropdown_width:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->MIN_DROPDOWN_WIDTH:I

    .line 250
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->setMode(I)V

    .line 252
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    if-nez v0, :cond_9

    .line 253
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mTouchSlop:I

    .line 255
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 256
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 257
    const-string v0, "drawableAlpha"

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 258
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAlphaAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 260
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 262
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$1;-><init>(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 280
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 178
    goto/16 :goto_0

    .line 257
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private initBackgroundIdList(Landroid/content/res/TypedArray;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    if-nez v1, :cond_0

    .line 128
    const/4 v1, 0x6

    .line 129
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    .line 130
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    .line 133
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/htc/lib1/cc/e;->common_b_inputfield_pressed:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2

    .line 136
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    sget v4, Lcom/htc/lib1/cc/e;->common_b_inputfield_rest:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2

    .line 140
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    const/4 v2, 0x2

    const/4 v3, 0x2

    sget v4, Lcom/htc/lib1/cc/e;->common_inputfield_pressed:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2

    .line 143
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    const/4 v2, 0x3

    const/4 v3, 0x3

    sget v4, Lcom/htc/lib1/cc/e;->common_inputfield_rest:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2

    .line 147
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    const/4 v2, 0x4

    const/4 v3, 0x4

    sget v4, Lcom/htc/lib1/cc/e;->common_inputfield_full_pressed:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2

    .line 150
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget v4, Lcom/htc/lib1/cc/e;->common_inputfield_full_rest:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    const/4 v1, 0x6

    .line 171
    :goto_1
    if-ge v0, v1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundAssets:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :catch_0
    move-exception v1

    .line 154
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    sget v2, Lcom/htc/lib1/cc/e;->common_b_inputfield_pressed:I

    aput v2, v1, v0

    .line 156
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    sget v2, Lcom/htc/lib1/cc/e;->common_b_inputfield_rest:I

    aput v2, v1, v5

    .line 159
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    sget v2, Lcom/htc/lib1/cc/e;->common_inputfield_pressed:I

    aput v2, v1, v6

    .line 161
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    sget v2, Lcom/htc/lib1/cc/e;->common_inputfield_rest:I

    aput v2, v1, v7

    .line 164
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    sget v2, Lcom/htc/lib1/cc/e;->common_inputfield_full_pressed:I

    aput v2, v1, v8

    .line 166
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mAllBackgroundResourceIds:[I

    const/4 v2, 0x5

    sget v3, Lcom/htc/lib1/cc/e;->common_inputfield_full_rest:I

    aput v3, v1, v2

    goto :goto_0

    .line 174
    :cond_1
    return-void
.end method

.method private onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 652
    return-void
.end method

.method private onDownAnimationStart()V
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 646
    return-void
.end method

.method private startDownAnimation()V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 390
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 394
    return-void
.end method

.method private startMoveAnimation()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 403
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->invalidate()V

    .line 404
    return-void
.end method

.method private startUpAnimation()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDown:Z

    .line 398
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->invalidate()V

    .line 399
    return-void
.end method


# virtual methods
.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDownAnimating:Z

    .line 658
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onSizeChanged(IIII)V

    .line 456
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    if-nez v0, :cond_0

    .line 457
    sget v0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->MIN_DROPDOWN_WIDTH:I

    if-ge p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsDropDownMinWidthEnabled:Z

    if-eqz v0, :cond_1

    .line 458
    invoke-super {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 459
    sget v0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->MIN_DROPDOWN_WIDTH:I

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 464
    :goto_0
    invoke-super {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 467
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->showDropDown()V

    .line 469
    :cond_0
    return-void

    .line 461
    :cond_1
    invoke-super {p0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 462
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 362
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    .line 366
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->startDownAnimation()V

    .line 385
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 367
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 369
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    if-nez v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->startUpAnimation()V

    goto :goto_0

    .line 372
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 373
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    if-nez v0, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 376
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mTouchSlop:I

    .line 377
    rsub-int/lit8 v3, v2, 0x0

    if-lt v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_4

    rsub-int/lit8 v0, v2, 0x0

    if-lt v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    .line 379
    :cond_4
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsMove:Z

    .line 380
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->startMoveAnimation()V

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 503
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    if-eqz v0, :cond_0

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    goto :goto_0
.end method

.method protected setDrawableAlpha(I)V
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetAlpha:Z

    if-eqz v0, :cond_0

    .line 417
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->invalidate()V

    .line 418
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mBackground:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;->getMutiplyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1

    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 478
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1

    .prologue
    .line 484
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 486
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsUserSetDropDown:Z

    .line 494
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 425
    if-nez p1, :cond_1

    .line 426
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 427
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->setAlpha(F)V

    .line 434
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 435
    return-void

    .line 429
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->setAlpha(F)V

    goto :goto_0

    .line 432
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 315
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mInit:Z

    if-eqz v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 318
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 321
    :cond_1
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mInit:Z

    .line 322
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    .line 323
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mIsCustomBackground:Z

    if-nez v0, :cond_3

    .line 324
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;-><init>(Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mBackground:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    .line 325
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mBackground:Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView$ScaleDimDrawable;

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    if-ltz v0, :cond_4

    .line 328
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPadding:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 338
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mMode:I

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcInputFieldUtil;->getDefaultFontStyleByMode(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 340
    :cond_3
    iput-boolean v4, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mInit:Z

    goto :goto_0

    .line 329
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    if-gez v0, :cond_5

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    if-gez v0, :cond_5

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    if-gez v0, :cond_5

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    if-ltz v0, :cond_2

    .line 331
    :cond_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    :goto_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    :goto_3
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    if-ltz v2, :cond_8

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    :goto_4
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    if-ltz v3, :cond_9

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    :goto_5
    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingLeft:I

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingTop:I

    goto :goto_3

    :cond_8
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingRight:I

    goto :goto_4

    :cond_9
    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mDefaultPaddingBottom:I

    goto :goto_5
.end method

.method public setPadding(IIII)V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 515
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mInit:Z

    if-eqz v0, :cond_0

    .line 516
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingLeft:I

    .line 517
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingTop:I

    .line 518
    iput p3, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingRight:I

    .line 519
    iput p4, p0, Lcom/htc/lib1/cc/widget/HtcAutoCompleteTextView;->mUserPaddingBottom:I

    .line 521
    :cond_0
    return-void
.end method
