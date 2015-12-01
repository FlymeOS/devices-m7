.class public Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;
.super Landroid/widget/FrameLayout;
.source "HtcListItemMessageBody.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/al;
.implements Lcom/htc/lib1/cc/widget/ao;


# static fields
.field static MAX_BADGES:I


# instance fields
.field private mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

.field private mBody:Landroid/widget/TextView;

.field mItemMode:I

.field private mMode:I

.field private mText:[Landroid/widget/TextView;

.field private mTextStyles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x7

    sput v0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->MAX_BADGES:I

    return-void
.end method

.method private compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 530
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v0

    .line 531
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultTextStyle()V
    .locals 2

    .prologue
    .line 946
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 947
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mMode:I

    if-nez v0, :cond_2

    .line 948
    sget v0, Lcom/htc/lib1/cc/k;->list_primary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 949
    sget v0, Lcom/htc/lib1/cc/k;->info_primary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 950
    sget v0, Lcom/htc/lib1/cc/k;->separator_secondary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 951
    sget v0, Lcom/htc/lib1/cc/k;->list_secondary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    .line 972
    :cond_1
    :goto_0
    return-void

    .line 953
    :cond_2
    sget v0, Lcom/htc/lib1/cc/k;->darklist_primary_m_bold:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setPrimaryTextStyle(I)V

    .line 954
    sget v0, Lcom/htc/lib1/cc/k;->info_primary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setSecondaryTextStyle(I)V

    .line 955
    sget v0, Lcom/htc/lib1/cc/k;->b_separator_secondary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setStampTextStyle(I)V

    .line 956
    sget v0, Lcom/htc/lib1/cc/k;->list_secondary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setBodyTextStyle(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    if-nez p2, :cond_1

    .line 555
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 556
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 559
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->compareText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    if-nez p2, :cond_1

    .line 541
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 542
    :cond_1
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 545
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextStyle(II)V
    .locals 1

    .prologue
    .line 520
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mTextStyles:[I

    aput p2, v0, p1

    .line 522
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    check-cast v0, Lcom/htc/lib1/cc/widget/x;

    invoke-virtual {v0, p2}, Lcom/htc/lib1/cc/widget/x;->a(I)V

    .line 527
    :cond_0
    return-void
.end method


# virtual methods
.method public get7Badges1LineBottomStamp()Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    return-object v0
.end method

.method public getBodyTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getColorBarImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 275
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 278
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 279
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getPrimaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextVisibility()I
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getSecondaryText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryTextVisibility()I
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getStampVisibility()I
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public getTextStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    const-string v0, ""

    return-object v0
.end method

.method public notifyItemMode(I)V
    .locals 2

    .prologue
    .line 992
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    .line 993
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 994
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setDefaultTextStyle()V

    .line 995
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 435
    .line 440
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 441
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredBottomGap(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 443
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 444
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v4, v0, v3, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 449
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getPrimaryBaseLine(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    sub-int/2addr v0, v1

    .line 450
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v4

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_2

    .line 457
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getSecondaryBaseLine(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    sub-int/2addr v0, v1

    .line 459
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v4

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 462
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getVisibility()I

    move-result v0

    if-eq v0, v6, :cond_3

    .line 469
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->layout(IIII)V

    .line 473
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 324
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 329
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM2()I

    move-result v1

    .line 331
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM1()I

    move-result v3

    .line 333
    sub-int v4, v2, v3

    .line 340
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 343
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_7

    .line 346
    sub-int v0, v2, v3

    sub-int/2addr v0, v1

    .line 348
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0, v6, v7, p2}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 352
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    iget-object v7, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v7}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v6, v1, p2}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 355
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->isBadgesVerticalCenter()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 357
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredBadgesWidth()I

    move-result v1

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredStampWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 358
    if-eqz v3, :cond_9

    .line 360
    sub-int v1, v0, v3

    .line 361
    sub-int/2addr v0, v3

    .line 379
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_1

    .line 380
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v3, v3, v8

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v3, v1, v5}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v9, :cond_2

    .line 389
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    aget-object v1, v1, v11

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v0, v5}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 397
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1, v5}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->measureChild(Landroid/view/View;II)V

    .line 404
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredTopGap(I)I

    .line 406
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    .line 414
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v9, :cond_4

    .line 416
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    :cond_4
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 424
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mItemMode:I

    invoke-static {v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredListItemHeight(I)I

    move-result v0

    .line 426
    :cond_5
    invoke-virtual {p0, v2, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setMeasuredDimension(II)V

    .line 427
    return-void

    .line 366
    :cond_6
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredBadgesWidth()I

    move-result v1

    if-eqz v1, :cond_8

    .line 367
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredBadgesWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 368
    :goto_1
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredStampWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBadgeStamp:Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/widget/HtcListItem7Badges1LineBottomStamp;->getMeasuredStampWidth()I

    move-result v3

    sub-int/2addr v0, v3

    goto/16 :goto_0

    .line 375
    :cond_7
    sub-int v0, v2, v3

    move v1, v0

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto :goto_1

    :cond_9
    move v1, v0

    goto/16 :goto_0
.end method

.method public setBodyText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 820
    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method public setBodyTextLine(I)V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 876
    return-void
.end method

.method public setBodyTextMaxLines(I)V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 894
    return-void
.end method

.method public setBodyTextMinLines(I)V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 886
    return-void
.end method

.method public setBodyTextResource(I)V
    .locals 1

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setBodyText(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public setBodyTextStyle(I)V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mTextStyles:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 864
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mBody:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/lib1/cc/widget/x;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/x;->a(I)V

    .line 868
    return-void
.end method

.method public setBodyVisibility(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 856
    return-void
.end method

.method public setColorBarImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 500
    return-void
.end method

.method public setColorBarImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public setColorBarImageResource(I)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 917
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 919
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 920
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 921
    if-eqz v1, :cond_0

    .line 923
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 924
    invoke-static {v1, p1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setViewOpacity(Landroid/view/View;Z)V

    .line 919
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    :cond_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 260
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 262
    :cond_0
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 263
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 3

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 581
    return-void
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public setPrimaryTextStyle(I)V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setTextStyle(II)V

    .line 608
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 600
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 3

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->mText:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public setSecondaryTextStyle(I)V
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setTextStyle(II)V

    .line 671
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 663
    return-void
.end method

.method public setStampTextStyle(I)V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method public setStampVisibility(I)V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method public setTextStamp(I)V
    .locals 1

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItemMessageBody;->setTextStamp(Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method public setTextStamp(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 747
    return-void
.end method

.method public setTextStamp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 737
    return-void
.end method
