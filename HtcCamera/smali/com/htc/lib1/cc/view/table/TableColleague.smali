.class public abstract Lcom/htc/lib1/cc/view/table/TableColleague;
.super Ljava/lang/Object;
.source "TableColleague.java"


# instance fields
.field protected mCloseBouncing:Z

.field protected mGravity:I

.field protected mHorizontalSpacing:I

.field protected mMultiStop:Z

.field protected mNewScroll:Z

.field protected mNumColumnRows:I

.field protected mOrnWidth:I

.field protected mReferenceView:Landroid/view/View;

.field protected mReferenceViewInSelectedRow:Landroid/view/View;

.field protected mRepeatEnable:Z

.field protected mStopExcept:I

.field mStops:[I

.field protected mVerticalSpacing:I

.field protected tableView:Lcom/htc/lib1/cc/view/table/TableView;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/view/table/TableView;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 53
    iput v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mHorizontalSpacing:I

    .line 58
    iput v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mVerticalSpacing:I

    .line 68
    iput-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 73
    iput-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mCloseBouncing:Z

    .line 90
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mRepeatEnable:Z

    .line 95
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mMultiStop:Z

    .line 1392
    iput-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mStops:[I

    .line 1444
    iput v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mStopExcept:I

    .line 1448
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNewScroll:Z

    .line 138
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    .line 139
    return-void
.end method

.method private determineColumnRows(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 986
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnRequestedWidthSpacing()I

    move-result v0

    .line 987
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mStretchMode:I

    .line 988
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mRequestedOrnWidth:I

    .line 990
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v3, v3, Lcom/htc/lib1/cc/view/table/TableView;->mRequestedNumColumnRows:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 991
    if-lez v2, :cond_1

    .line 993
    add-int v3, p1, v0

    add-int v4, v2, v0

    div-int/2addr v3, v4

    iput v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 1004
    :goto_0
    iget v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    if-gtz v3, :cond_0

    .line 1005
    iput v5, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 1008
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1016
    iget v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    mul-int/2addr v3, v2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v0

    sub-int/2addr v3, v4

    .line 1018
    packed-switch v1, :pswitch_data_1

    .line 1038
    :goto_1
    return-void

    .line 997
    :cond_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v3, v3, Lcom/htc/lib1/cc/view/table/TableView;->mRequestedNumColumnRows:I

    iput v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    goto :goto_0

    .line 1011
    :pswitch_0
    iput v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    .line 1012
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    .line 1021
    :pswitch_1
    iget v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    div-int v1, v3, v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    .line 1022
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    .line 1027
    :pswitch_2
    iput v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    .line 1028
    iget v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    if-le v1, v5, :cond_3

    .line 1029
    iget v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    add-int/lit8 v1, v1, -0x1

    div-int v1, v3, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    .line 1031
    :cond_3
    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->setOrnLeftRightSpacing(I)V

    goto :goto_1

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1018
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getBottomSelectionPixel(IIIII)I
    .locals 2

    .prologue
    .line 176
    .line 177
    add-int v0, p3, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p4, -0x1

    if-ge v0, v1, :cond_0

    .line 178
    sub-int/2addr p0, p1

    .line 180
    :cond_0
    return p0
.end method

.method public static getTopSelectionPixel(III)I
    .locals 0

    .prologue
    .line 155
    .line 156
    if-lez p2, :cond_0

    .line 157
    add-int/2addr p0, p1

    .line 159
    :cond_0
    return p0
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 9

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_0

    .line 416
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/lib1/cc/view/table/TableColleague;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 428
    :goto_0
    return-object v1

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->obtainView(I)Landroid/view/View;

    move-result-object v1

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 427
    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/htc/lib1/cc/view/table/TableColleague;->setupChild(Landroid/view/View;IIZIZZI)V

    goto :goto_0
.end method

.method private pinToBottom(I)V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/TableView;->getChildCount()I

    move-result v0

    .line 594
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    if-ne v1, v2, :cond_0

    .line 595
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/htc/lib1/cc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 596
    sub-int v0, p1, v0

    .line 597
    if-lez v0, :cond_0

    .line 598
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 601
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 585
    sub-int v0, p1, v0

    .line 586
    if-gez v0, :cond_0

    .line 587
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 590
    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v0

    if-le v0, p3, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, p2

    .line 231
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, p3

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 237
    :cond_0
    return-void
.end method

.method protected adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v0

    sub-int v0, p2, v0

    .line 202
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v1

    sub-int v1, p3, v1

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 208
    :cond_0
    return-void
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 309
    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v0

    .line 311
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v2

    .line 312
    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v2

    sub-int v3, v0, v2

    move v0, p2

    .line 314
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    if-ge p1, v2, :cond_0

    .line 315
    invoke-virtual {p0, p1, v0, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_3

    .line 320
    :goto_1
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v2

    add-int p2, v1, v2

    .line 321
    iget v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr p1, v1

    move-object v1, v0

    move v0, p2

    .line 322
    goto :goto_0

    .line 324
    :cond_0
    iget-boolean v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v2, :cond_1

    if-ge v0, v3, :cond_1

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    if-lt p1, v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v4, v2, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v5, v5, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    sub-int/2addr v4, v5

    iput v4, v2, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 326
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    sub-int v2, p1, v2

    .line 328
    :goto_2
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v4, v4, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    if-ge v2, v4, :cond_1

    .line 329
    invoke-virtual {p0, v2, v0, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_2

    .line 335
    :goto_3
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    add-int/2addr v1, v4

    .line 336
    iget v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr v2, v4

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    .line 337
    goto :goto_2

    .line 340
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected fillFromBottom(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 839
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 840
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 842
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    .line 843
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    rem-int v2, v0, v2

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 845
    invoke-virtual {p0, v0, p2}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected fillFromSelection(III)Landroid/view/View;
    .locals 8

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v2

    .line 486
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v0, Lcom/htc/lib1/cc/view/table/TableView;->mSelectedPosition:I

    .line 487
    iget v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 488
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    .line 491
    const/4 v0, -0x1

    .line 493
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v5, v5, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v5, :cond_0

    .line 494
    rem-int v5, v1, v3

    sub-int/2addr v1, v5

    .line 505
    :goto_0
    invoke-static {p2, v2, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v5

    .line 506
    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v6, v6, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    invoke-static {p3, v2, v3, v1, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v6

    .line 508
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0, v2, p1, v7}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v2

    .line 510
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iput v1, v7, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 512
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 513
    invoke-virtual {p0, v7, v5, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 514
    invoke-virtual {p0, v7, v5, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 516
    if-nez v7, :cond_2

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "referenceView is null, please check the child has made in makeRowColumn()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 498
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    rem-int v5, v0, v3

    sub-int/2addr v0, v5

    sub-int v0, v1, v0

    .line 499
    const/4 v1, 0x0

    sub-int v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 508
    goto :goto_1

    .line 519
    :cond_2
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v5, v5, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v5, :cond_3

    .line 520
    sub-int v0, v1, v3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0, v0, v5}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 522
    add-int v0, v1, v3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 529
    :goto_2
    return-object v2

    .line 524
    :cond_3
    add-int/2addr v0, v3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 526
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method protected fillFromTop(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 825
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mSelectedPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 826
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 827
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v0, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    iget v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 831
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected fillGap(Z)V
    .locals 5

    .prologue
    .line 861
    iget v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 862
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v0

    .line 863
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/TableView;->getChildCount()I

    move-result v1

    .line 865
    if-eqz p1, :cond_2

    .line 866
    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/lib1/cc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    .line 868
    :goto_0
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v3, v3, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    add-int/2addr v1, v3

    .line 869
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v3, v3, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v3, :cond_0

    .line 870
    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    .line 872
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 886
    :goto_1
    return-void

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v0

    goto :goto_0

    .line 875
    :cond_2
    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/lib1/cc/view/table/TableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v1

    sub-int v0, v1, v0

    .line 877
    :goto_2
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 878
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v3, v3, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v3, :cond_4

    .line 879
    sub-int/2addr v1, v2

    .line 883
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto :goto_1

    .line 875
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnHeight(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    .line 881
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method protected fillSelection(II)Landroid/view/View;
    .locals 8

    .prologue
    .line 537
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/TableView;->reconcileSelectedPosition()I

    move-result v1

    .line 538
    iget v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 539
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    .line 542
    const/4 v0, -0x1

    .line 544
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v2, :cond_0

    .line 545
    rem-int v2, v1, v3

    sub-int/2addr v1, v2

    .line 553
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v5

    .line 554
    invoke-static {p1, v5, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v6

    .line 555
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0, v2, v6, v7}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v2

    .line 556
    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iput v1, v6, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 558
    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 560
    if-nez v6, :cond_2

    .line 561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "referenceView is null, please check the child has made in makeRowColumn()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    .line 549
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    rem-int v2, v0, v3

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 550
    const/4 v1, 0x0

    sub-int v2, v0, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 555
    goto :goto_1

    .line 563
    :cond_2
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v7, v7, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v7, :cond_3

    .line 564
    add-int v0, v1, v3

    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v0, v5}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 565
    invoke-direct {p0, p2}, Lcom/htc/lib1/cc/view/table/TableColleague;->pinToBottom(I)V

    .line 566
    sub-int v0, v1, v3

    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 579
    :goto_2
    return-object v2

    .line 569
    :cond_3
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v7, v7, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    invoke-static {p2, v5, v3, v1, v7}, Lcom/htc/lib1/cc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v5

    .line 571
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v5, v7

    .line 572
    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/view/table/TableColleague;->offsetOrnChildrenTopAndBottom(I)V

    .line 573
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v5}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 574
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->pinToTop(I)V

    .line 575
    add-int/2addr v0, v3

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    goto :goto_2
.end method

.method protected fillSpecific(II)Landroid/view/View;
    .locals 8

    .prologue
    .line 618
    iget v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 621
    const/4 v0, -0x1

    .line 623
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 624
    rem-int v1, p1, v3

    sub-int v1, p1, v1

    .line 631
    :goto_0
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    const/4 v4, 0x1

    invoke-virtual {p0, v2, p2, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v2

    .line 634
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iput v1, v4, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 636
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 637
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v5

    .line 642
    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v6, v6, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 643
    sub-int v0, v1, v3

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {p0, v0, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 644
    add-int/2addr v1, v3

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 650
    :goto_2
    if-eqz v2, :cond_4

    move-object v0, v2

    .line 655
    :cond_0
    :goto_3
    return-object v0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 627
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    rem-int v2, v0, v3

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 628
    const/4 v1, 0x0

    sub-int v2, v0, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 631
    goto :goto_1

    .line 646
    :cond_3
    add-int/2addr v0, v3

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {p0, v0, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    move-result-object v0

    .line 647
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    move-result-object v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    .line 652
    :cond_4
    if-nez v0, :cond_0

    move-object v0, v1

    .line 655
    goto :goto_3
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 254
    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v3

    move v0, p2

    move v2, p1

    .line 258
    :goto_0
    if-le v0, v3, :cond_0

    if-ltz v2, :cond_0

    .line 259
    invoke-virtual {p0, v2, v0, v5}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_4

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    sub-int p2, v1, v4

    .line 266
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iput v2, v1, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 267
    iget v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    sub-int/2addr v2, v1

    move-object v1, v0

    move v0, p2

    .line 268
    goto :goto_0

    .line 270
    :cond_0
    iget-boolean v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mRepeatEnable:Z

    if-eqz v4, :cond_1

    if-le v0, v3, :cond_1

    if-gez v2, :cond_1

    .line 271
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v4, v4, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/2addr v2, v4

    .line 273
    :goto_2
    if-le v0, v3, :cond_1

    if-ltz v2, :cond_1

    .line 274
    invoke-virtual {p0, v2, v0, v5}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_3

    .line 280
    :goto_3
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v4

    sub-int/2addr v1, v4

    .line 281
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iput v2, v4, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 282
    iget v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    sub-int/2addr v2, v4

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 283
    goto :goto_2

    :cond_1
    move v0, v2

    .line 286
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 290
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public abstract findAndSetSelecionInt(IIII)Z
.end method

.method public abstract fling(Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;FF)V
.end method

.method public abstract getCenterOfTable()I
.end method

.method public abstract getDefaultChildLayoutParams()Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;
.end method

.method public abstract getFadingEdgeLength()I
.end method

.method public abstract getOrnBottom(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnBottom(Landroid/view/View;)I
.end method

.method public abstract getOrnGravity()I
.end method

.method public abstract getOrnHeight(Landroid/view/View;)I
.end method

.method public abstract getOrnHeight(Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;)I
.end method

.method public abstract getOrnLeft(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnLeft(Landroid/view/View;)I
.end method

.method public abstract getOrnLeftRightSpacing()I
.end method

.method public abstract getOrnMeasureSpec(II)Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;
.end method

.method public abstract getOrnMeasuredHeight(Landroid/view/View;)I
.end method

.method public abstract getOrnMeasuredWidth(Landroid/view/View;)I
.end method

.method public abstract getOrnRequestedWidthSpacing()I
.end method

.method public abstract getOrnRight(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnTop(Landroid/graphics/Rect;)I
.end method

.method public abstract getOrnTop(Landroid/view/View;)I
.end method

.method public abstract getOrnTopBottomSpacing()I
.end method

.method public abstract getOrnWidth(Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;)I
.end method

.method public abstract getScrollbarWidth()I
.end method

.method public abstract layoutView(Landroid/view/View;IIII)V
.end method

.method protected makeRowColumn(IIZ)Landroid/view/View;
    .locals 13

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnLeft(Landroid/graphics/Rect;)I

    move-result v4

    .line 351
    iget v9, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    .line 353
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 354
    iget v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/TableView;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v7, v0

    .line 360
    :goto_0
    const/4 v8, 0x0

    .line 362
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/TableView;->shouldShowSelector()Z

    move-result v10

    .line 363
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/TableView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 364
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v12, v0, Lcom/htc/lib1/cc/view/table/TableView;->mSelectedPosition:I

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    move v1, p1

    .line 367
    :goto_1
    if-ge v1, v7, :cond_5

    .line 369
    if-ne v1, v12, :cond_3

    const/4 v5, 0x1

    .line 372
    :goto_2
    if-eqz p3, :cond_4

    const/4 v6, -0x1

    :goto_3
    move-object v0, p0

    move v2, p2

    move/from16 v3, p3

    .line 373
    invoke-direct/range {v0 .. v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v0

    .line 374
    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 376
    add-int v2, v4, v9

    .line 377
    add-int/lit8 v3, v7, -0x1

    if-ge v1, v3, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnLeftRightSpacing()I

    move-result v3

    add-int/2addr v2, v3

    .line 381
    :cond_0
    if-eqz v5, :cond_7

    if-nez v10, :cond_1

    if-eqz v11, :cond_7

    .line 367
    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object v8, v0

    move v4, v2

    goto :goto_1

    .line 356
    :cond_2
    add-int/lit8 v0, p1, 0x1

    .line 357
    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v7, v0

    goto :goto_0

    .line 369
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 372
    :cond_4
    sub-int v6, v1, p1

    goto :goto_3

    .line 386
    :cond_5
    if-eqz v8, :cond_6

    .line 387
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 390
    :cond_6
    return-object v8

    :cond_7
    move-object v0, v8

    goto :goto_4
.end method

.method public abstract measureView(Landroid/view/View;II)V
.end method

.method protected moveSelection(III)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 677
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v4

    .line 678
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v5, v0, Lcom/htc/lib1/cc/view/table/TableView;->mSelectedPosition:I

    .line 679
    iget v6, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 680
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v7

    .line 684
    const/4 v0, -0x1

    .line 686
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 687
    sub-int v1, v5, p1

    sub-int v2, v5, p1

    rem-int/2addr v2, v6

    sub-int v2, v1, v2

    .line 689
    rem-int v1, v5, v6

    sub-int v1, v5, v1

    .line 701
    :goto_0
    sub-int v2, v1, v2

    .line 703
    invoke-static {p2, v4, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getTopSelectionPixel(III)I

    move-result v5

    .line 704
    iget-object v8, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v8, v8, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    invoke-static {p3, v4, v6, v1, v8}, Lcom/htc/lib1/cc/view/table/TableColleague;->getBottomSelectionPixel(IIIII)I

    move-result v8

    .line 708
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iput v1, v4, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 713
    if-lez v2, :cond_3

    .line 718
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v2, :cond_1

    move v2, v3

    .line 720
    :goto_1
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v3, v3, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v3, :cond_2

    move v3, v0

    :goto_2
    add-int/2addr v2, v7

    invoke-virtual {p0, v3, v2, v9}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v3

    .line 721
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 723
    invoke-virtual {p0, v2, v5, v8}, Lcom/htc/lib1/cc/view/table/TableColleague;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 744
    :goto_3
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v4, v4, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v4, :cond_9

    .line 745
    sub-int v0, v1, v6

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {p0, v0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 747
    add-int v0, v1, v6

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 754
    :goto_4
    return-object v3

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v5

    .line 693
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    rem-int v2, v0, v6

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    .line 694
    sub-int v1, v0, v6

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 696
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v5, p1

    sub-int/2addr v2, v5

    .line 697
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v5, v5, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    rem-int v8, v2, v6

    sub-int/2addr v2, v8

    sub-int v2, v5, v2

    .line 698
    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 718
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 720
    goto :goto_2

    .line 724
    :cond_3
    if-gez v2, :cond_6

    .line 728
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v2, :cond_4

    move v2, v3

    .line 730
    :goto_5
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v4, v4, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v4, :cond_5

    move v4, v0

    :goto_6
    sub-int/2addr v2, v7

    invoke-virtual {p0, v4, v2, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v3

    .line 731
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 733
    invoke-virtual {p0, v2, v5, v8}, Lcom/htc/lib1/cc/view/table/TableColleague;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto :goto_3

    .line 728
    :cond_4
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v2

    goto :goto_5

    :cond_5
    move v4, v1

    .line 730
    goto :goto_6

    .line 738
    :cond_6
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v2, :cond_7

    .line 740
    :goto_7
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-eqz v2, :cond_8

    move v2, v0

    :goto_8
    invoke-virtual {p0, v2, v3, v9}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v3

    .line 741
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    goto/16 :goto_3

    .line 738
    :cond_7
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v3

    goto :goto_7

    :cond_8
    move v2, v1

    .line 740
    goto :goto_8

    .line 749
    :cond_9
    add-int/2addr v0, v6

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {p0, v0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 751
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method protected moveSelectionCenter(IIIII)Landroid/view/View;
    .locals 7

    .prologue
    .line 771
    iget v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 772
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v3

    .line 777
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mStackFromBottom:Z

    if-nez v0, :cond_0

    .line 778
    rem-int v0, p1, v2

    sub-int v0, p1, v0

    .line 787
    :goto_0
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->isSetTableViewHeight:Z

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mTableViewOrnHeight:I

    mul-int/lit8 v1, v1, 0x32

    mul-int v4, p4, p5

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x64

    .line 795
    :goto_1
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iput v0, v4, Lcom/htc/lib1/cc/view/table/TableView;->mFirstPosition:I

    .line 801
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v1, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->makeRowColumn(IIZ)Landroid/view/View;

    move-result-object v1

    .line 802
    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mReferenceView:Landroid/view/View;

    .line 805
    sub-int v5, v0, v2

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillUp(II)Landroid/view/View;

    .line 806
    add-int/2addr v0, v2

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->fillDown(II)Landroid/view/View;

    .line 808
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/view/table/TableView;->callbackCenterViewSetListener(Landroid/view/View;)V

    .line 809
    return-object v1

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 782
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v1, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    rem-int v4, v0, v2

    sub-int/2addr v0, v4

    sub-int v0, v1, v0

    .line 783
    const/4 v1, 0x0

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 791
    :cond_1
    sub-int v1, p3, p2

    sub-int/2addr v1, p4

    div-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public abstract offsetLeftAndRight(Landroid/view/View;I)V
.end method

.method public abstract offsetOrnChildrenTopAndBottom(I)V
.end method

.method public abstract offsetTopAndBottom(Landroid/view/View;I)V
.end method

.method protected onMeasure(II)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 893
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnMeasureSpec(II)Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;

    move-result-object v3

    .line 899
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnLeft(Landroid/graphics/Rect;)I

    move-result v2

    .line 900
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnRight(Landroid/graphics/Rect;)I

    move-result v4

    .line 901
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v5

    .line 902
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v6

    .line 904
    iget v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMode:I

    if-nez v0, :cond_0

    .line 905
    iget v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    if-lez v0, :cond_6

    .line 906
    iget v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    iput v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    .line 910
    :goto_0
    iget v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getScrollbarWidth()I

    move-result v7

    add-int/2addr v0, v7

    iput v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    .line 913
    :cond_0
    iget v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v4

    .line 914
    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->determineColumnRows(I)V

    .line 918
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    iput v0, v7, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    .line 919
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v7, v0, Lcom/htc/lib1/cc/view/table/TableView;->mItemCount:I

    .line 920
    if-lez v7, :cond_b

    .line 921
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/TableView;->obtainView(I)Landroid/view/View;

    move-result-object v8

    .line 922
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    .line 924
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    .line 925
    if-nez v0, :cond_1

    .line 926
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getDefaultChildLayoutParams()Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    move-result-object v0

    .line 927
    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    :cond_1
    iput v9, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;->viewType:I

    .line 931
    iget v10, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnWidth(Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;)I

    move-result v4

    invoke-static {v10, v2, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 934
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnHeight(Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;)I

    move-result v0

    .line 937
    if-lez v0, :cond_8

    .line 938
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 943
    :goto_2
    invoke-virtual {p0, v8, v2, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->measureView(Landroid/view/View;II)V

    .line 944
    invoke-virtual {p0, v8}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnMeasuredHeight(Landroid/view/View;)I

    move-result v0

    .line 946
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v2, v9}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 947
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v2, v2, Lcom/htc/lib1/cc/view/table/TableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v2, v8}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 951
    :cond_2
    :goto_3
    iget v2, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    if-nez v2, :cond_3

    .line 952
    add-int v2, v5, v6

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iput v2, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    .line 956
    :cond_3
    iget v2, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornHeightMode:I

    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_5

    .line 957
    add-int v2, v5, v6

    .line 959
    iget v4, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    move v11, v1

    move v1, v2

    move v2, v11

    .line 960
    :goto_4
    if-ge v2, v7, :cond_a

    .line 961
    add-int/2addr v1, v0

    .line 962
    add-int v5, v2, v4

    if-ge v5, v7, :cond_4

    .line 963
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTopBottomSpacing()I

    move-result v5

    add-int/2addr v1, v5

    .line 965
    :cond_4
    iget v5, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    if-lt v1, v5, :cond_9

    .line 966
    iget v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    .line 970
    :goto_5
    iput v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    .line 973
    :cond_5
    iget v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    iget v1, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornHeightSize:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->setTableViewMeasuredDimension(II)V

    .line 974
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget v1, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthMeasureSpec:I

    iput v1, v0, Lcom/htc/lib1/cc/view/table/TableView;->mWidthHeightMeasureSpec:I

    .line 975
    return-void

    .line 908
    :cond_6
    add-int v0, v2, v4

    iput v0, v3, Lcom/htc/lib1/cc/view/table/TableColleague$OrnMeasureSpec;->ornWidthSize:I

    goto/16 :goto_0

    .line 918
    :cond_7
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto/16 :goto_1

    .line 940
    :cond_8
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 960
    :cond_9
    add-int/2addr v2, v4

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method public abstract scrollIntoSlots(Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;)V
.end method

.method public abstract scrollWithConstrain(IIZ)V
.end method

.method public abstract setCloseBouncing(Z)V
.end method

.method public setMultiStop(Z)V
    .locals 0

    .prologue
    .line 1389
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mMultiStop:Z

    .line 1390
    return-void
.end method

.method public setMultiStopDistance(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mStops:[I

    .line 1405
    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mMultiStop:Z

    .line 1406
    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    const/16 v1, 0x1e

    if-le p1, v1, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return v0

    .line 1408
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/TableView;->getCount()I

    move-result v1

    div-int/2addr v1, p1

    .line 1409
    if-lt v1, v2, :cond_0

    .line 1411
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mStops:[I

    .line 1412
    add-int/lit8 v1, p1, -0x1

    .line 1414
    :goto_1
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/view/table/TableView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1415
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mStops:[I

    aput v1, v3, v0

    .line 1416
    add-int/2addr v1, p1

    .line 1417
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1419
    :cond_2
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mMultiStop:Z

    move v0, v2

    .line 1420
    goto :goto_0
.end method

.method public setMultiStopDistance([I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1428
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mStops:[I

    .line 1429
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mMultiStop:Z

    .line 1431
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1438
    :goto_0
    return v0

    .line 1435
    :cond_1
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mStops:[I

    .line 1436
    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mMultiStop:Z

    goto :goto_0
.end method

.method protected setNumColumnRows(I)V
    .locals 0

    .prologue
    .line 982
    iput p1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNumColumnRows:I

    .line 983
    return-void
.end method

.method public abstract setOrnLeftRightSpacing(I)V
.end method

.method public setRepeatEnable(Z)V
    .locals 0

    .prologue
    .line 1381
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mRepeatEnable:Z

    .line 1382
    return-void
.end method

.method public setStopExcept(I)V
    .locals 1

    .prologue
    .line 1455
    iput p1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mStopExcept:I

    .line 1456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mNewScroll:Z

    .line 1457
    return-void
.end method

.method public abstract setTableViewMeasuredDimension(II)V
.end method

.method protected setupChild(Landroid/view/View;IIZIZZI)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1056
    if-eqz p6, :cond_4

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/TableView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v6

    .line 1058
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v1, v0, :cond_5

    move v3, v6

    .line 1059
    :goto_1
    if-eqz p7, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v4, v6

    .line 1063
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    .line 1064
    if-nez v0, :cond_1

    .line 1065
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getDefaultChildLayoutParams()Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    move-result-object v0

    .line 1067
    :cond_1
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-object v5, v5, Lcom/htc/lib1/cc/view/table/TableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    iput v5, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;->viewType:I

    .line 1069
    if-eqz p7, :cond_7

    .line 1070
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v5, p1, p8, v0}, Lcom/htc/lib1/cc/view/table/TableView;->attachViewToParent(Landroid/view/View;ILcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;)V

    .line 1075
    :goto_3
    if-eqz v3, :cond_2

    .line 1076
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1077
    if-eqz v1, :cond_2

    .line 1078
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/TableView;->requestFocus()Z

    .line 1082
    :cond_2
    if-eqz v4, :cond_8

    .line 1083
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnHeight(Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1086
    iget v3, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnWidth(Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;)I

    move-result v0

    invoke-static {v3, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1088
    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->measureView(Landroid/view/View;II)V

    .line 1093
    :goto_4
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnMeasuredWidth(Landroid/view/View;)I

    move-result v1

    .line 1096
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    if-nez v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnMeasuredHeight(Landroid/view/View;)I

    move-result v0

    .line 1099
    :goto_5
    if-eqz p4, :cond_a

    move v3, p3

    .line 1101
    :goto_6
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnGravity()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, p5

    .line 1116
    :goto_7
    if-eqz v4, :cond_b

    .line 1117
    add-int v4, v2, v1

    .line 1118
    add-int v5, v3, v0

    move-object v0, p0

    move-object v1, p1

    .line 1119
    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/view/table/TableColleague;->layoutView(Landroid/view/View;IIII)V

    .line 1125
    :goto_8
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/view/table/TableView;->mCachingStarted:Z

    if-eqz v0, :cond_3

    .line 1126
    invoke-virtual {p1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1128
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 1056
    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 1058
    goto/16 :goto_1

    :cond_6
    move v4, v2

    .line 1059
    goto :goto_2

    .line 1072
    :cond_7
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v5, p1, p8, v0, v6}, Lcom/htc/lib1/cc/view/table/TableView;->addViewInLayout(Landroid/view/View;ILcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;Z)V

    goto :goto_3

    .line 1090
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/table/TableView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_4

    .line 1096
    :cond_9
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->tableView:Lcom/htc/lib1/cc/view/table/TableView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/TableView;->getTableChildHeight()I

    move-result v0

    goto :goto_5

    .line 1099
    :cond_a
    sub-int v3, p3, v0

    goto :goto_6

    :pswitch_1
    move v2, p5

    .line 1104
    goto :goto_7

    .line 1106
    :pswitch_2
    iget v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p5, v2

    move v2, p5

    .line 1107
    goto :goto_7

    .line 1109
    :pswitch_3
    iget v2, p0, Lcom/htc/lib1/cc/view/table/TableColleague;->mOrnWidth:I

    add-int/2addr v2, p5

    sub-int p5, v2, v1

    move v2, p5

    .line 1110
    goto :goto_7

    .line 1121
    :cond_b
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnLeft(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1122
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_8

    .line 1101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract trackMotionScrollOrn(II)V
.end method
