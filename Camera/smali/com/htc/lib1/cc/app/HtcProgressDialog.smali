.class public Lcom/htc/lib1/cc/app/HtcProgressDialog;
.super Lcom/htc/lib1/cc/widget/HtcAlertDialog;
.source "HtcProgressDialog.java"


# instance fields
.field private mAllCaps:Z

.field private mDismissTime:J

.field private mHasMessage:Z

.field private mHasStarted:Z

.field private mHasTitle:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mShowTime:J

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 64
    iput v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressStyle:I

    .line 83
    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasMessage:Z

    .line 84
    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasTitle:Z

    .line 95
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->initFormats()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/app/HtcProgressDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 552
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressStyle:I

    if-eq v6, v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasTitle:Z

    if-nez v0, :cond_5

    .line 554
    sget v0, Lcom/htc/lib1/cc/g;->parentPanel:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 555
    instance-of v1, v0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;

    if-eqz v1, :cond_0

    .line 556
    check-cast v0, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;

    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/ShadowLinearLayout;->setFixedWidth(Z)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_4

    move-object v0, v2

    .line 562
    :goto_0
    if-eqz v0, :cond_2

    .line 564
    invoke-virtual {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 565
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 566
    sget v4, Lcom/htc/lib1/cc/d;->margin_m:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 567
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 569
    invoke-virtual {v0, v3, v1, v4, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 576
    :cond_2
    :goto_1
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressStyle:I

    if-eq v6, v0, :cond_6

    .line 617
    :cond_3
    :goto_2
    return-void

    .line 561
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 571
    :cond_5
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressStyle:I

    if-eq v6, v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v0, :cond_2

    .line 572
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 573
    sget v0, Lcom/htc/lib1/cc/g;->message:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 574
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 578
    :cond_6
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasMessage:Z

    if-eqz v0, :cond_7

    .line 580
    sget v0, Lcom/htc/lib1/cc/g;->customPanel:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 581
    if-eqz v3, :cond_7

    .line 582
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 583
    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 584
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 585
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 591
    :cond_7
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasMessage:Z

    if-eqz v0, :cond_8

    .line 593
    sget v0, Lcom/htc/lib1/cc/g;->contentPanel:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 594
    invoke-virtual {v0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 603
    :goto_3
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasMessage:Z

    if-nez v0, :cond_3

    .line 607
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_9

    move-object v0, v2

    .line 608
    :goto_4
    if-eqz v0, :cond_3

    .line 609
    invoke-virtual {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 610
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 611
    sget v3, Lcom/htc/lib1/cc/d;->margin_m_2:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 612
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 613
    sget v5, Lcom/htc/lib1/cc/d;->margin_l:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 614
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_2

    .line 597
    :cond_8
    sget v0, Lcom/htc/lib1/cc/g;->custom:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 598
    invoke-virtual {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->getDefaultListItemHeight(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_3

    .line 607
    :cond_9
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_4
.end method

.method private initFormats()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 111
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 112
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setInverseBackgroundForced(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/lib1/cc/util/res/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mAllCaps:Z

    .line 117
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 496
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 529
    const/16 v0, 0x12c

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mDismissTime:J

    .line 531
    iget-wide v1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mDismissTime:J

    iget-wide v3, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mShowTime:J

    sub-long/2addr v1, v3

    .line 532
    int-to-long v3, v0

    sub-long/2addr v3, v1

    .line 533
    cmp-long v0, v5, v1

    if-gez v0, :cond_0

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    .line 535
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->dismiss()V

    .line 542
    iput-wide v5, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mShowTime:J

    .line 543
    iput-wide v5, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mDismissTime:J

    .line 544
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 367
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->onProgressChanged()V

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 382
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->onProgressChanged()V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 186
    iget v1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 191
    new-instance v1, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog$1;-><init>(Lcom/htc/lib1/cc/app/HtcProgressDialog;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 214
    sget v1, Lcom/htc/lib1/cc/i;->alert_dialog_progress:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 215
    sget v0, Lcom/htc/lib1/cc/g;->progress:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 216
    const v0, 0x1020015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 217
    sget v0, Lcom/htc/lib1/cc/g;->progress_percent:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 218
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setView(Landroid/view/View;)V

    .line 232
    :goto_0
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMax:I

    if-lez v0, :cond_0

    .line 233
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMax:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setMax(I)V

    .line 235
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressVal:I

    if-lez v0, :cond_1

    .line 236
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setProgress(I)V

    .line 238
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_2

    .line 239
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setSecondaryProgress(I)V

    .line 241
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIncrementBy:I

    if-lez v0, :cond_3

    .line 242
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 244
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_4

    .line 245
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 256
    :cond_7
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 257
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->onProgressChanged()V

    .line 258
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->adjustLayout()V

    .line 260
    return-void

    .line 220
    :cond_8
    iget-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasTitle:Z

    if-nez v1, :cond_9

    .line 221
    sget v1, Lcom/htc/lib1/cc/i;->progress_dialog:I

    .line 222
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 223
    const v0, 0x102000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 224
    const v0, 0x102000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 225
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0

    .line 227
    :cond_9
    iput-object v3, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 228
    iput-object v3, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->onStart()V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasStarted:Z

    .line 270
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->onStop()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasStarted:Z

    .line 280
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 354
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->onProgressChanged()V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 445
    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasMessage:Z

    .line 447
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressStyle:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v0, :cond_2

    .line 449
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 458
    :goto_0
    return-void

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 455
    :cond_3
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->onProgressChanged()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_1
    iput p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 478
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->onProgressChanged()V

    .line 479
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .prologue
    .line 465
    iput p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgressStyle:I

    .line 466
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 306
    invoke-direct {p0}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->onProgressChanged()V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 509
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasTitle:Z

    .line 511
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mHasTitle:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/app/HtcProgressDialog;->setInverseBackgroundForced(Z)V

    .line 514
    :cond_0
    return-void

    .line 510
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/lib1/cc/app/HtcProgressDialog;->mShowTime:J

    .line 522
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAlertDialog;->show()V

    .line 523
    return-void
.end method
