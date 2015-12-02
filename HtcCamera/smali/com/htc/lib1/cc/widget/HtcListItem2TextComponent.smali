.class Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;
.super Landroid/widget/FrameLayout;
.source "HtcListItem2TextComponent.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/al;


# instance fields
.field mBlackIconRightMargin:I

.field mBlackIconSize:I

.field protected mContext:Landroid/content/Context;

.field protected mFontSize:[I

.field mIsAutomotiveMode:Z

.field mIsFrontImageExist:Z

.field protected mIsMarqueeEnabled:Z

.field mItemMode:I

.field protected mMode:I

.field protected mText:[Landroid/widget/TextView;

.field mTextStyle:[I

.field protected mTextTopY:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mTextTopYUsed:Z

.field private mUseFontSizeInStyle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 33
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mMode:I

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    .line 45
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    .line 69
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM4()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    .line 70
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    .line 178
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 617
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 106
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 107
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 33
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mMode:I

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    .line 45
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    .line 69
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM4()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    .line 70
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    .line 178
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 617
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 150
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 151
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mMode:I

    .line 155
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 156
    return-void

    .line 153
    :cond_0
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mMode:I

    goto :goto_0

    .line 39
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 33
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mMode:I

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    .line 45
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    .line 69
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM4()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    .line 70
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    .line 178
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 617
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 33
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mMode:I

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    .line 45
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    .line 69
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM4()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    .line 70
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    .line 178
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 617
    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 75
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 77
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    .line 78
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    .line 81
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mFontSize:[I

    .line 82
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    if-eqz p2, :cond_0

    .line 86
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->HtcListItemTextComponentMode:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mMode:I

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->init(Landroid/content/Context;)V

    .line 96
    return-void

    .line 92
    :cond_0
    iput v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mMode:I

    .line 93
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    goto :goto_0
.end method

.method private setTextStyle(II)V
    .locals 3

    .prologue
    .line 165
    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    check-cast v0, Lcom/htc/lib1/cc/widget/x;

    invoke-virtual {v0, p2}, Lcom/htc/lib1/cc/widget/x;->a(I)V

    .line 167
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mFontSize:[I

    aget v2, v2, p1

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    aput p2, v0, p1

    .line 176
    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 586
    return-void
.end method

.method public enableMarquee(Z)V
    .locals 2

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsMarqueeEnabled:Z

    .line 446
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/lib1/cc/widget/x;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/x;->a(Z)V

    .line 447
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/htc/lib1/cc/widget/x;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/x;->a(Z)V

    .line 450
    return-void
.end method

.method public getPrimaryCharSequence()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    .line 605
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrimaryTextVisibility()I
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getSecondaryCharSequence()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 612
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    .line 614
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryTextVisibility()I
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method protected layoutText(IZI)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 522
    .line 523
    if-nez p1, :cond_1

    .line 524
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getPrimaryBaseLine(I)I

    move-result v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    sub-int/2addr v0, v2

    .line 530
    :goto_0
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_2

    :goto_1
    add-int v3, p3, v1

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    :goto_2
    add-int/2addr v1, p3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 535
    :cond_0
    return-void

    .line 525
    :cond_1
    if-ne p1, v3, :cond_0

    .line 526
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getSecondaryBaseLine(I)I

    move-result v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->getMeasuredWidth()I

    move-result v1

    goto :goto_2
.end method

.method protected layoutTextAtCenter(IZI)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 549
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v0, v0, v2

    if-eqz v0, :cond_1

    .line 550
    :cond_0
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    .line 552
    :cond_1
    if-gt p1, v2, :cond_2

    if-gez p1, :cond_3

    .line 575
    :cond_2
    :goto_0
    return-void

    .line 555
    :cond_3
    if-ne p1, v2, :cond_4

    .line 556
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 562
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 564
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopYUsed:Z

    if-eqz v2, :cond_5

    .line 565
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextTopY:[I

    aget v0, v0, p1

    .line 570
    :cond_5
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, p1

    if-eqz p2, :cond_6

    :goto_1
    add-int v3, p3, v1

    if-eqz p2, :cond_7

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    :goto_2
    add-int/2addr v1, p3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->getMeasuredWidth()I

    move-result v1

    goto :goto_2
.end method

.method public notifyItemMode(I)V
    .locals 2

    .prologue
    .line 624
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    .line 625
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsAutomotiveMode:Z

    .line 626
    return-void

    .line 625
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 458
    move v6, v5

    move v7, v8

    move v9, v5

    move v10, v5

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge v6, v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v11, :cond_9

    .line 465
    if-nez v6, :cond_1

    .line 466
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->measureChild(Landroid/view/View;II)V

    .line 467
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v10, v0

    .line 481
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v7

    move v3, v10

    .line 463
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    move v9, v2

    move v10, v3

    goto :goto_0

    .line 468
    :cond_1
    if-ne v6, v8, :cond_0

    .line 469
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mIsFrontImageExist:Z

    if-eqz v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v0, v6

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconSize:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mBlackIconRightMargin:I

    add-int v3, v0, v2

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 475
    :goto_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v8, :cond_2

    move v7, v5

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v10, v0

    goto :goto_1

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->measureChild(Landroid/view/View;II)V

    goto :goto_3

    .line 485
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    .line 486
    if-nez v7, :cond_5

    .line 488
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_6

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_6

    .line 490
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    move-result v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v10

    .line 492
    if-ge v1, v0, :cond_8

    .line 506
    :cond_5
    :goto_4
    invoke-static {v9, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setMeasuredDimension(II)V

    .line 509
    return-void

    .line 493
    :cond_6
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v11, :cond_7

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_5

    .line 495
    :cond_7
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mItemMode:I

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v10

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v1, v7

    move v2, v9

    move v3, v10

    goto/16 :goto_2
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 436
    :cond_0
    return-void

    .line 430
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 432
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 433
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 434
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final setPrimaryLinkTextColor(I)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 299
    return-void
.end method

.method public final setPrimaryLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 291
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final setPrimaryTextAutoLinkMask(I)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 283
    return-void
.end method

.method public setPrimaryTextStyle(I)V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 275
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    return-void
.end method

.method public final setSecondaryLinkTextColor(I)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 393
    return-void
.end method

.method public final setSecondaryLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 385
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public final setSecondaryTextAutoLinkMask(I)V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 377
    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 364
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    return-void
.end method

.method setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    if-nez p2, :cond_0

    .line 224
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    if-nez p2, :cond_0

    .line 205
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUseFontSizeInStyle(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mUseFontSizeInStyle:Z

    .line 185
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    aget v0, v0, v1

    invoke-direct {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 186
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->mTextStyle:[I

    aget v0, v0, v2

    invoke-direct {p0, v2, v0}, Lcom/htc/lib1/cc/widget/HtcListItem2TextComponent;->setTextStyle(II)V

    .line 187
    return-void
.end method
