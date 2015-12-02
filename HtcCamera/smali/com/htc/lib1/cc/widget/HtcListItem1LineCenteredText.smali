.class public Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;
.super Landroid/widget/FrameLayout;
.source "HtcListItem1LineCenteredText.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/ak;
.implements Lcom/htc/lib1/cc/widget/al;
.implements Lcom/htc/lib1/cc/widget/ao;


# instance fields
.field private mAllCaps:Z

.field private mImage:Landroid/view/View;

.field private mIsAutomotiveMode:Z

.field private mIsMarqueeEnabled:Z

.field private mIsNoContentText:Z

.field mItemMode:I

.field private mLeftMargin:I

.field protected mMode:I

.field private mRightMargin:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 23
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 25
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 26
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 31
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mMode:I

    .line 32
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    .line 34
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    .line 35
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsNoContentText:Z

    .line 36
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mAllCaps:Z

    .line 335
    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 84
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 54
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    invoke-static {p1, v0}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 56
    new-instance v0, Lcom/htc/lib1/cc/widget/x;

    invoke-direct {v0, p1}, Lcom/htc/lib1/cc/widget/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    .line 57
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->enableMarquee(Z)V

    .line 59
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsNoContentText:Z

    .line 60
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mAllCaps:Z

    .line 62
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    .line 64
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getDesiredChildrenGap()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    .line 67
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 69
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    .line 71
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void
.end method

.method private setDefaultTextStyle()V
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsNoContentText:Z

    if-nez v0, :cond_4

    .line 290
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 291
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mMode:I

    if-nez v0, :cond_1

    .line 293
    sget v0, Lcom/htc/lib1/cc/k;->list_primary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    .line 314
    :goto_0
    return-void

    .line 295
    :cond_1
    sget v0, Lcom/htc/lib1/cc/k;->darklist_primary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_0

    .line 297
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 298
    sget v0, Lcom/htc/lib1/cc/k;->darklist_primary_s:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_0

    .line 309
    :cond_3
    sget v0, Lcom/htc/lib1/cc/k;->fixed_automotive_darklist_primary_m:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_0

    .line 312
    :cond_4
    sget v0, Lcom/htc/lib1/cc/k;->list_body_secondary_l:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    goto :goto_0
.end method


# virtual methods
.method public enableMarquee(Z)V
    .locals 1

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsMarqueeEnabled:Z

    .line 284
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/lib1/cc/widget/x;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/x;->a(Z)V

    .line 286
    return-void
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 147
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 150
    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 151
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public notifyItemMode(I)V
    .locals 2

    .prologue
    .line 342
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 343
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 344
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    .line 345
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    .line 346
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 200
    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM3()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 202
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 204
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 205
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 206
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    .line 207
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 215
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 165
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->getM3()I

    move-result v1

    sub-int/2addr v0, v1

    .line 168
    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getMeasuredWidth()I

    move-result v0

    .line 174
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    goto :goto_0
.end method

.method public setAutoMotiveMode(Z)V
    .locals 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    if-ne v0, p1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 323
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mIsAutomotiveMode:Z

    .line 324
    if-eqz p1, :cond_1

    .line 325
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 326
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 327
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    goto :goto_0

    .line 329
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    .line 330
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mItemMode:I

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItemUtil;->setContextForMargins(Landroid/content/Context;I)V

    .line 331
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 272
    :cond_0
    return-void

    .line 266
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 267
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 267
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setGravityCenterHorizontal(Z)V
    .locals 2

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 128
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 129
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mLeftMargin:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mRightMargin:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 131
    :cond_0
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 132
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public setText(I)V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mAllCaps:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void

    .line 239
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTextStyle(I)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/htc/lib1/cc/widget/x;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/x;->a(I)V

    .line 227
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 367
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    if-nez v0, :cond_1

    .line 369
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    .line 370
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    sget v0, Lcom/htc/lib1/cc/k;->fixed_list_primary_xxs:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    if-nez p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->removeView(Landroid/view/View;)V

    .line 378
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->mImage:Landroid/view/View;

    .line 379
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcListItem1LineCenteredText;->setDefaultTextStyle()V

    goto :goto_0
.end method
