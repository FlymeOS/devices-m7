.class public Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;
.super Ljava/lang/Object;
.source "ComposeRecipientHelper.java"


# instance fields
.field private mChildIndex:I

.field private mChildIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCustomizeActionButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupIndex:I

.field private mGroupIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNeedAddShowAll:Z

.field private mNonRecipientBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;",
            ">;"
        }
    .end annotation
.end field

.field mParaComposeRecipientArea:Landroid/widget/LinearLayout$LayoutParams;

.field private mReceiverLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;",
            ">;"
        }
    .end annotation
.end field

.field private mRecipientListener:Landroid/view/View$OnClickListener;

.field private mRemoveActionButton:Z

.field private mRemoveMultipleReceivers:Z

.field private mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

.field private mShowAllListener:Landroid/view/View$OnClickListener;

.field private mShowAllStatus:Z

.field private mStrHide:Ljava/lang/String;

.field private mStrShowAll:Ljava/lang/String;

.field private mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;",
            ">;"
        }
    .end annotation
.end field

.field private sShowAllPreviewLinesNum:I


# direct methods
.method static synthetic access$000(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)I
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getRecipientBtnWidth(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNeedAddShowAll:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)I
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getRecipientLines()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->sShowAllPreviewLinesNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addCustomizeActionBtn()V
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 694
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->createCustomizeBtn()V

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    .line 698
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->addRecipientBtnToValidGroup(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)Z

    .line 699
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 701
    :cond_2
    const-string v0, "ComposeRecipientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add custom action button to UI: recipient size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method private addMultipleReceiversToUI(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 384
    if-nez v0, :cond_0

    .line 385
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "add multiple receivers to UI: composeRecipientArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void

    .line 389
    :cond_0
    if-nez p1, :cond_1

    .line 390
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "add multiple receivers to UI: receivers is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;

    .line 396
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getNewRecipientBtn(Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;)Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;

    move-result-object v0

    .line 398
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->breakForHideAll(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 406
    :cond_3
    const-string v0, "ComposeRecipientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add multiple receivers to UI: recipient size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_4
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->addRecipientBtnToValidGroup(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private addRecipientBtnToValidGroup(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 262
    if-nez v0, :cond_0

    .line 263
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "add recipient button to valid group: composeRecipientArea is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 311
    :goto_0
    return v0

    .line 267
    :cond_0
    if-nez p1, :cond_1

    move v0, v3

    goto :goto_0

    .line 269
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getRecipientBtnWidth(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)I

    move-result v6

    .line 271
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getChildCount()I

    move-result v1

    .line 272
    const/4 v4, 0x0

    .line 275
    add-int/lit8 v1, v1, -0x1

    move v5, v1

    :goto_1
    if-ltz v5, :cond_6

    .line 276
    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 277
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 279
    if-gtz v2, :cond_2

    .line 275
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move-object v4, v1

    goto :goto_1

    .line 286
    :cond_2
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->isBeginNextLine()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v4

    .line 295
    :goto_2
    if-nez v0, :cond_3

    .line 296
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getNewGroup()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 297
    instance-of v1, p1, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    if-nez v1, :cond_3

    .line 298
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getParentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getRecipientContainerPadding(Landroid/content/Context;)I

    move-result v2

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getDimenMarginM2(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v2, v4, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_3
    move-object v1, v0

    .line 301
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    add-int/2addr v0, v6

    .line 304
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getParentLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mGroupIndexMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getViewHashKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 309
    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->setGroupIndex(I)V

    .line 311
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :cond_4
    add-int/2addr v2, v6

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getRecipientContainerMaxWidth()I

    move-result v0

    if-le v2, v0, :cond_5

    move-object v0, v4

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 292
    goto :goto_2

    :cond_6
    move-object v0, v4

    goto :goto_2
.end method

.method private breakForHideAll(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 525
    if-nez v0, :cond_0

    .line 526
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "break for hide all: composeRecipientArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 559
    :goto_0
    return v0

    .line 532
    :cond_0
    const/4 v2, -0x1

    .line 534
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getChildCount()I

    move-result v7

    move v6, v4

    move v3, v4

    .line 536
    :goto_1
    if-ge v6, v7, :cond_3

    .line 537
    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 538
    if-nez v1, :cond_1

    move v1, v2

    move v2, v3

    .line 536
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 540
    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 541
    if-gtz v1, :cond_2

    move v1, v2

    move v2, v3

    goto :goto_2

    .line 543
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .line 544
    goto :goto_2

    .line 547
    :cond_3
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getParentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getRecipientContainerMaxWidth()I

    move-result v0

    if-le v1, v0, :cond_4

    .line 548
    add-int/lit8 v3, v3, 0x1

    .line 551
    :cond_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->sShowAllPreviewLinesNum:I

    if-le v3, v0, :cond_5

    .line 552
    iput-boolean v5, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNeedAddShowAll:Z

    .line 555
    :cond_5
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAllStatus:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->sShowAllPreviewLinesNum:I

    if-le v3, v0, :cond_6

    move v0, v5

    .line 556
    goto :goto_0

    :cond_6
    move v0, v4

    .line 559
    goto :goto_0
.end method

.method private createCustomizeBtn()V
    .locals 15

    .prologue
    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 705
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 706
    if-nez v0, :cond_1

    .line 707
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "create custom button: composeRecipientArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mCustomizeActionButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v2, v12

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;

    .line 713
    if-eqz v1, :cond_0

    .line 714
    add-int/lit8 v13, v2, 0x1

    .line 715
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mCustomizeActionButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v13, v0, :cond_2

    move v11, v12

    .line 716
    :goto_1
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getNewRecipientBtnParentLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 717
    sget v0, Lcom/htc/lib1/cc/g;->recipientBtn:I

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    .line 718
    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;->getButtonOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    new-instance v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    const/16 v5, 0xc8

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;->getButtonText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;->getButtonText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$CustomizedActionButton;->isNeedShowInNextLine()Z

    move-result v10

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;-><init>(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;Ljava/lang/ref/WeakReference;Landroid/widget/LinearLayout;Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;ILcom/htc/lib1/cc/widget/recipientblock/ReceiverList;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 728
    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->setChildIndex(I)V

    .line 729
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    .line 730
    goto :goto_0

    :cond_2
    move v11, v7

    .line 715
    goto :goto_1
.end method

.method private createShowAllBtn()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 751
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 752
    if-nez v0, :cond_0

    .line 753
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "create show all button: composeRecipientArea is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getNewRecipientBtnParentLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 758
    sget v0, Lcom/htc/lib1/cc/g;->recipientBtn:I

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    .line 759
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    new-instance v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAllStatus:Z

    iget-object v8, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mStrHide:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mStrShowAll:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v10, 0x1

    :goto_1
    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;-><init>(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;Ljava/lang/ref/WeakReference;Landroid/widget/LinearLayout;Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;ILcom/htc/lib1/cc/widget/recipientblock/ReceiverList;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    .line 765
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->setChildIndex(I)V

    goto :goto_0

    :cond_2
    move v10, v11

    .line 761
    goto :goto_1
.end method

.method private getNewGroup()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x2

    .line 315
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 316
    if-nez v0, :cond_0

    .line 317
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "get new group: composeRecipientArea is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    .line 321
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 324
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mGroupIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mGroupIndex:I

    .line 328
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mGroupIndexMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getViewHashKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mGroupIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 333
    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 335
    goto :goto_0
.end method

.method private getNewRecipientBtn(Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;)Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;
    .locals 8

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 178
    if-nez v0, :cond_0

    .line 179
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "get new recipient button: composeRecipientArea is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getNewRecipientBtnParentLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 185
    sget v1, Lcom/htc/lib1/cc/g;->recipientBtn:I

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    .line 187
    iget-object v1, p1, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->name:Ljava/lang/String;

    .line 188
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 189
    :cond_1
    iget-object v1, p1, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->addr:Ljava/lang/String;

    .line 191
    :cond_2
    invoke-virtual {v4, v1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v1}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getBtnWidth(Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;)I

    move-result v0

    .line 197
    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setWidth(I)V

    .line 199
    iput-object v3, p1, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;->view:Landroid/view/View;

    .line 203
    new-instance v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    const/16 v5, 0x64

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;-><init>(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;Ljava/lang/ref/WeakReference;Landroid/widget/LinearLayout;Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;ILcom/htc/lib1/cc/widget/recipientblock/ReceiverList;Z)V

    .line 205
    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->setChildIndex(I)V

    .line 207
    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getNewRecipientBtnParentLayout()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/htc/lib1/cc/i;->recipient_item:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 215
    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndex:I

    .line 216
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndexMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getViewHashKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-object v0
.end method

.method private getRecipientBtnWidth(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)I
    .locals 2

    .prologue
    .line 563
    if-nez p1, :cond_1

    .line 564
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "get recipient button width: recipientBtn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v0, 0x0

    .line 580
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getHtcRecipientButton()Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/HtcRecipientButton;->getBtnWidth()I

    move-result v0

    .line 572
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getParentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getParentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getRightDivider()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getRightDivider()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getRightDivider()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getRightDivider()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getRightDivider()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getRecipientLines()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 969
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 970
    if-nez v0, :cond_1

    .line 971
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "get recipient lines: composeRecipientArea is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    return v3

    .line 977
    :cond_1
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getChildCount()I

    move-result v5

    move v4, v3

    .line 980
    :goto_0
    if-ge v4, v5, :cond_0

    .line 981
    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 982
    if-nez v1, :cond_2

    move v1, v3

    .line 980
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_0

    .line 984
    :cond_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mGroupIndexMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getViewHashKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 985
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 987
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->getGroupIndex()I

    move-result v1

    if-ne v1, v6, :cond_7

    .line 988
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->getParentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v2, v1

    .line 991
    :goto_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 992
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    .line 993
    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->getGroupIndex()I

    move-result v8

    if-ne v8, v6, :cond_6

    .line 994
    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;->getParentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v2, v1

    :goto_4
    move v2, v1

    .line 996
    goto :goto_3

    :cond_3
    move v1, v2

    .line 999
    :cond_4
    if-gtz v1, :cond_5

    move v1, v3

    goto :goto_1

    .line 1001
    :cond_5
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private getViewHashKey(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeCustomizeBtn()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    .line 771
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeSingleReceiverByRecipientBtn(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V

    goto :goto_1

    .line 773
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private removeMultipleReceiversFromUI(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 916
    if-nez p1, :cond_0

    .line 917
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "remove multiple receivers from UI: receivers is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    return-void

    .line 921
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRemoveMultipleReceivers:Z

    .line 922
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 923
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;

    .line 925
    if-nez v0, :cond_1

    .line 922
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 927
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeSingleReceiverFromUI(Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;)V

    goto :goto_2

    .line 929
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRemoveMultipleReceivers:Z

    .line 930
    const-string v0, "ComposeRecipientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove multiple receivers from UI: recipient size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeShowAllBtn()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    if-nez v0, :cond_0

    .line 782
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeSingleReceiverByRecipientBtn(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V

    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    goto :goto_0
.end method

.method private removeSingleReceiverByRecipientBtn(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V
    .locals 2

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "remove single receiver by recipient button: recipientBtn is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_0
    return-void

    .line 829
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeSingleRecipientBtnFromUI(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V

    .line 832
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeSingleRecipientBtnFromData(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V

    goto :goto_0
.end method

.method private removeSingleReceiverFromUI(Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;)V
    .locals 1

    .prologue
    .line 811
    if-nez p1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getRecipientBtnByReceiverList(Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;)Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_0

    .line 816
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeSingleRecipientBtnFromUI(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V

    goto :goto_0
.end method

.method private removeSingleRecipientBtnFromData(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mReceiverLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getReceiverList()Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 902
    return-void
.end method

.method private removeSingleRecipientBtnFromUI(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)V
    .locals 13

    .prologue
    const/4 v6, 0x0

    .line 836
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 837
    if-nez v0, :cond_1

    .line 838
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "remove single receiver from UI : composeRecipientArea is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    if-nez p1, :cond_2

    .line 843
    const-string v0, "ComposeRecipientHelper"

    const-string v1, "remove single receiver from UI: recipientBtn is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    :cond_2
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getGroupIndex()I

    move-result v8

    .line 850
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getChildIndex()I

    move-result v9

    .line 854
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getChildCount()I

    move-result v10

    move v5, v6

    move v4, v6

    .line 855
    :goto_1
    if-ge v5, v10, :cond_8

    .line 856
    invoke-virtual {v0, v5}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    .line 857
    if-nez v3, :cond_4

    .line 855
    :cond_3
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 859
    :cond_4
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mGroupIndexMap:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getViewHashKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 861
    if-ne v1, v8, :cond_3

    .line 863
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    move v7, v6

    .line 864
    :goto_3
    if-ge v7, v11, :cond_b

    .line 865
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 866
    if-nez v1, :cond_6

    .line 864
    :cond_5
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_3

    .line 867
    :cond_6
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndexMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getViewHashKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 868
    if-ne v2, v9, :cond_5

    .line 870
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getRecipientBtnWidth(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)I

    move-result v4

    .line 871
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 873
    sub-int/2addr v2, v4

    .line 875
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 877
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 879
    const/4 v1, 0x1

    .line 884
    :goto_4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 885
    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->removeView(Landroid/view/View;)V

    .line 887
    :cond_7
    if-eqz v1, :cond_a

    .line 890
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mChildIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getParentLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getViewHashKey(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 893
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRemoveActionButton:Z

    if-eqz v0, :cond_9

    .line 894
    const-string v0, "ComposeRecipientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove action buttons from UI: recipient size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 895
    :cond_9
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRemoveMultipleReceivers:Z

    if-nez v0, :cond_0

    .line 896
    const-string v0, "ComposeRecipientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove single receiver from UI: recipient size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move v4, v1

    goto/16 :goto_2

    :cond_b
    move v1, v4

    goto :goto_4
.end method


# virtual methods
.method protected addAllRecipientActionBarBtn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 602
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->addCustomizeActionBtn()V

    .line 603
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->addShowAllBtn()V

    .line 605
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mWeakComposeRecipientArea:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;

    .line 606
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNonRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    if-nez v1, :cond_1

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mParaComposeRecipientArea:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getRecipientContainerPadding(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getRecipientContainerPadding(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 641
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mParaComposeRecipientArea:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 663
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mParaComposeRecipientArea:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/lib1/cc/widget/recipientblock/ResUtils;->getRecipientContainerPadding(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 661
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mParaComposeRecipientArea:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientArea;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected addShowAllBtn()V
    .locals 3

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNeedAddShowAll:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->getRecipientLines()I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->sShowAllPreviewLinesNum:I

    if-gt v0, v1, :cond_0

    .line 684
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->createShowAllBtn()V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->addRecipientBtnToValidGroup(Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;)Z

    .line 682
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAll:Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$NonRecipientBtn;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    const-string v0, "ComposeRecipientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add show all button to UI: recipient size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getReceiverLists()Ljava/util/ArrayList;
    .locals 1
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
    .line 158
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mReceiverLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getRecipientBtnByReceiverList(Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;)Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 941
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 962
    :goto_0
    return-object v1

    .line 943
    :cond_0
    if-nez p1, :cond_1

    .line 944
    const-string v0, "ComposeRecipientHelper"

    const-string v2, "get recipient button: receiver is null "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRecipientBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;

    .line 950
    if-eqz v0, :cond_2

    .line 952
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper$RecipientBtn;->getReceiverList()Lcom/htc/lib1/cc/widget/recipientblock/ReceiverList;

    move-result-object v3

    .line 954
    if-eqz v3, :cond_2

    .line 956
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v1, v0

    .line 962
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected getShowAllPreviewLinesNum()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->sShowAllPreviewLinesNum:I

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mShowAllStatus:Z

    .line 173
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->relayoutAllUI()V

    .line 174
    return-void
.end method

.method protected relayoutAllUI()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mNeedAddShowAll:Z

    .line 353
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeAllRecipientActionBarBtn()V

    .line 355
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mReceiverLists:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeMultipleReceiversFromUI(Ljava/util/ArrayList;)V

    .line 357
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mReceiverLists:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mReceiverLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mReceiverLists:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->addMultipleReceiversToUI(Ljava/util/ArrayList;)V

    .line 361
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->addAllRecipientActionBarBtn()V

    .line 364
    :cond_0
    return-void
.end method

.method protected removeAllRecipientActionBarBtn()V
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRemoveActionButton:Z

    .line 669
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeCustomizeBtn()V

    .line 670
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->removeShowAllBtn()V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->mRemoveActionButton:Z

    .line 672
    return-void
.end method

.method protected setShowAllPreviewLinesNum(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/htc/lib1/cc/widget/recipientblock/ComposeRecipientHelper;->sShowAllPreviewLinesNum:I

    .line 101
    return-void
.end method
