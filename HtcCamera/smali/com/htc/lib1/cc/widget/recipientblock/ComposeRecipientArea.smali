.class public Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;
.super Landroid/widget/LinearLayout;
.source "ComposeRecipientArea.java"


# instance fields
.field private bIsFooterExist:Z

.field private bIsInputFieldVisible:Z

.field private bIsLabelVisible:Z

.field private mComposeRecipientCallBack:Lcom/htc/lib1/cc/widget/recipientblock/a;

.field private mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

.field private mConfigMode:I

.field private mContext:Landroid/content/Context;

.field private mIsAreaVisibilityChanged:Z

.field private mIsPortMode:Z

.field private mRecipientContainerMaxWidth:I

.field private mRecipientHeight:I

.field private mRecipientWidthMax:I

.field private mRecipientWidthMin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mConfigMode:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsPortMode:Z

    .line 23
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsFooterExist:Z

    .line 24
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsInputFieldVisible:Z

    .line 25
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsLabelVisible:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsAreaVisibilityChanged:Z

    .line 29
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientContainerMaxWidth:I

    .line 30
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMin:I

    .line 31
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    .line 32
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientHeight:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientCallBack:Lcom/htc/lib1/cc/widget/recipientblock/a;

    .line 47
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mConfigMode:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsPortMode:Z

    .line 23
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsFooterExist:Z

    .line 24
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsInputFieldVisible:Z

    .line 25
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsLabelVisible:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsAreaVisibilityChanged:Z

    .line 29
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientContainerMaxWidth:I

    .line 30
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMin:I

    .line 31
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    .line 32
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientHeight:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientCallBack:Lcom/htc/lib1/cc/widget/recipientblock/a;

    .line 52
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mConfigMode:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsPortMode:Z

    .line 23
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsFooterExist:Z

    .line 24
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsInputFieldVisible:Z

    .line 25
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsLabelVisible:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsAreaVisibilityChanged:Z

    .line 29
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientContainerMaxWidth:I

    .line 30
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMin:I

    .line 31
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    .line 32
    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientHeight:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientCallBack:Lcom/htc/lib1/cc/widget/recipientblock/a;

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private getGroupWidth()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private hasRecipientButtons()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getReceiverLists()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getReceiverLists()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private setComposeRecipientAreaVisibility()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 357
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsAreaVisibilityChanged:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->hasRecipientButtons()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsAreaVisibilityChanged:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->setVisibility(I)V

    .line 360
    :cond_2
    if-eqz v0, :cond_3

    .line 361
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsLabelVisible:Z

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM2(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 430
    :cond_3
    :goto_0
    return-void

    .line 378
    :cond_4
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsInputFieldVisible:Z

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 395
    :cond_5
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->setVisibility(I)V

    .line 396
    :cond_6
    if-eqz v0, :cond_3

    .line 397
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsLabelVisible:Z

    if-eqz v1, :cond_7

    .line 412
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM2(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 414
    :cond_7
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsInputFieldVisible:Z

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM1(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setConfigMode()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mConfigMode:I

    .line 68
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mConfigMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsPortMode:Z

    .line 70
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getGroupWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getRecipientContainerPadding(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientContainerMaxWidth:I

    .line 71
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsFooterExist:Z

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientContainerMaxWidth:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenHtcFooterBarHeight(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientContainerMaxWidth:I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsPortMode:Z

    .line 76
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getGroupWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getRecipientContainerPadding(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientContainerMaxWidth:I

    goto :goto_0
.end method


# virtual methods
.method protected getBtnWidth(Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;)I
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getButtonWidth()I

    move-result v0

    .line 191
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsPortMode:Z

    if-eqz v1, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getGroupWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getRecipientContainerPadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM2(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    .line 202
    :goto_0
    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMin:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientHeight:I

    if-nez v1, :cond_1

    .line 204
    :cond_0
    new-instance v1, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;-><init>(Landroid/content/Context;)V

    .line 205
    const-string v2, "WW"

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getButtonWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM2(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMin:I

    .line 207
    iget v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMin:I

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getButtonHeight(I)I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientHeight:I

    .line 211
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    .line 212
    :cond_2
    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMin:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMin:I

    .line 214
    :cond_3
    return v0

    .line 194
    :cond_4
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getGroupWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getRecipientContainerPadding(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM2(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    .line 195
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->bIsFooterExist:Z

    if-eqz v1, :cond_5

    .line 196
    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenHtcFooterBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    .line 198
    :cond_5
    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientWidthMax:I

    goto :goto_0
.end method

.method public getReceivers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    if-nez v0, :cond_0

    .line 455
    const-string v0, "ComposeRecipientArea"

    const-string v1, "get receivers: mComposeRecipientHelper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getReceiverLists()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRecipientContainerMaxWidth()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientContainerMaxWidth:I

    return v0
.end method

.method protected getRecipientHeight()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mRecipientHeight:I

    return v0
.end method

.method public getShowAllPreviewLinesNum()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getShowAllPreviewLinesNum()I

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mConfigMode:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->setConfigMode()V

    .line 141
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->onConfigurationChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 435
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->hasRecipientButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsAreaVisibilityChanged:Z

    .line 438
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->setComposeRecipientAreaVisibility()V

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mIsAreaVisibilityChanged:Z

    .line 442
    :cond_0
    return-void
.end method

.method public setComposeRecipientCallBack(Lcom/htc/lib1/cc/widget/recipientblock/a;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientCallBack:Lcom/htc/lib1/cc/widget/recipientblock/a;

    .line 526
    return-void
.end method

.method public setShowAllPreviewLinesNum(I)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->mComposeRecipientHelper:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->setShowAllPreviewLinesNum(I)V

    .line 102
    :cond_0
    return-void
.end method
