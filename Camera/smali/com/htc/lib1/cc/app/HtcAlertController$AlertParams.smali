.class public Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAutoLinkMask:I

.field public mCancelable:Z

.field public mCheckBoxDefault:Z

.field public mCheckBoxEnabled:Z

.field public mCheckBoxLabel:Ljava/lang/CharSequence;

.field public mCheckBoxListener:Lcom/htc/lib1/cc/widget/u;

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsAutoMotive:Z

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonDisabled:Z

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonDisabled:Z

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/htc/lib1/cc/app/a;

.field public mPositiveButtonDisabled:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleCenter:Z

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    iput v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIconId:I

    .line 1369
    iput-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1385
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    .line 1406
    iput-boolean v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1435
    iput-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mTitleCenter:Z

    .line 1440
    iput v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    .line 1444
    iput-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    .line 1485
    iput-object p1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1486
    iput-boolean v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCancelable:Z

    .line 1487
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1488
    return-void
.end method

.method private createListView(Lcom/htc/lib1/cc/app/HtcAlertController;)V
    .locals 9

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mListLayout:I
    invoke-static {p1}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$1000(Lcom/htc/lib1/cc/app/HtcAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 1579
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1581
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_5

    .line 1582
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 1583
    new-instance v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$1;-><init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/htc/lib1/cc/app/HtcAlertController;Landroid/widget/ListView;)V

    .line 1675
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/lib1/cc/app/a;

    if-eqz v1, :cond_0

    .line 1676
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/htc/lib1/cc/app/a;

    invoke-interface {v1, v7}, Lcom/htc/lib1/cc/app/a;->a(Landroid/widget/ListView;)V

    .line 1682
    :cond_0
    # setter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$1402(Lcom/htc/lib1/cc/app/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1683
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckedItem:I

    # setter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mCheckedItem:I
    invoke-static {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$1502(Lcom/htc/lib1/cc/app/HtcAlertController;I)I

    .line 1685
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_9

    .line 1686
    new-instance v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$5;-><init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Lcom/htc/lib1/cc/app/HtcAlertController;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1707
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 1708
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1711
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_a

    .line 1712
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1716
    :cond_3
    :goto_2
    # setter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v7}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$1602(Lcom/htc/lib1/cc/app/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1717
    return-void

    .line 1604
    :cond_4
    new-instance v2, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;

    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$2;-><init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/htc/lib1/cc/app/HtcAlertController;)V

    move-object v0, v2

    goto :goto_0

    .line 1632
    :cond_5
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_6

    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mSingleChoiceItemLayout:I
    invoke-static {p1}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$1200(Lcom/htc/lib1/cc/app/HtcAlertController;)I

    move-result v6

    .line 1634
    :goto_3
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 1635
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 1632
    :cond_6
    # getter for: Lcom/htc/lib1/cc/app/HtcAlertController;->mListItemLayout:I
    invoke-static {p1}, Lcom/htc/lib1/cc/app/HtcAlertController;->access$1300(Lcom/htc/lib1/cc/app/HtcAlertController;)I

    move-result v6

    goto :goto_3

    .line 1635
    :cond_7
    new-instance v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$3;

    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$3;-><init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 1650
    :cond_8
    new-instance v1, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;

    iget-object v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$4;-><init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZI)V

    move-object v0, v1

    goto :goto_0

    .line 1694
    :cond_9
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_1

    .line 1695
    new-instance v0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;

    invoke-direct {v0, p0, v7, p1}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams$6;-><init>(Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;Landroid/widget/ListView;Lcom/htc/lib1/cc/app/HtcAlertController;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1713
    :cond_a
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_3

    .line 1714
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/htc/lib1/cc/app/HtcAlertController;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 1497
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIsAutoMotive:Z

    if-eqz v0, :cond_0

    .line 1498
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setIsAutoMotive(Z)V

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1503
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1515
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1517
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    if-nez v0, :cond_f

    .line 1518
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1523
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1524
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v5, v0, v1, v2}, Lcom/htc/lib1/cc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1527
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1528
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/htc/lib1/cc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1531
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 1532
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/htc/lib1/cc/app/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1536
    :cond_5
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    if-eqz v0, :cond_6

    .line 1537
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    invoke-virtual {p1, v5, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1539
    :cond_6
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    if-eqz v0, :cond_7

    .line 1540
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNeutralButtonDisabled:Z

    invoke-virtual {p1, v3, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1542
    :cond_7
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    if-eqz v0, :cond_8

    .line 1543
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    invoke-virtual {p1, v4, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setButtonDisabled(IZ)V

    .line 1546
    :cond_8
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 1549
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 1550
    :cond_9
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->createListView(Lcom/htc/lib1/cc/app/HtcAlertController;)V

    .line 1552
    :cond_a
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1553
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_10

    .line 1554
    iget-object v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/app/HtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 1561
    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mTitleCenter:Z

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setTitleCenterEnabled(Z)V

    .line 1570
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckBoxLabel:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckBoxDefault:Z

    iget-object v2, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckBoxListener:Lcom/htc/lib1/cc/widget/u;

    iget-boolean v3, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mCheckBoxEnabled:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/htc/lib1/cc/app/HtcAlertController;->setCheckBox(Ljava/lang/CharSequence;ZLcom/htc/lib1/cc/widget/u;Z)V

    .line 1571
    return-void

    .line 1505
    :cond_c
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 1506
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1508
    :cond_d
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 1509
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1511
    :cond_e
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_1

    .line 1512
    iget v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1520
    :cond_f
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mAutoLinkMask:I

    invoke-virtual {p1, v0, v1}, Lcom/htc/lib1/cc/app/HtcAlertController;->setMessage(Ljava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 1557
    :cond_10
    iget-object v0, p0, Lcom/htc/lib1/cc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/htc/lib1/cc/app/HtcAlertController;->setView(Landroid/view/View;)V

    goto :goto_2
.end method
