.class public abstract Lcom/htc/lib1/cc/view/table/AbstractTableView;
.super Lcom/htc/lib1/cc/view/table/AbstractAdapterView;
.source "AbstractTableView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/lib1/cc/view/table/AbstractAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/Filter$FilterListener;"
    }
.end annotation


# instance fields
.field protected focusSelection:Lcom/htc/lib1/cc/view/a;

.field private initialWithScrollControl:Z

.field private isRightIdle:Z

.field isScrollOverBoundary:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected mCountDownMode:Z

.field private mCycle:Z

.field mDataSetObserver:Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/lib1/cc/view/table/AbstractAdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field mDrawSelectorOnTop:Z

.field private mFiltered:Z

.field protected mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsChildViewEnabled:Z

.field private mKeyOfTableView:Ljava/lang/String;

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field protected mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field protected mMaxScrollOverhead:I

.field protected mOnScrollListener:Lcom/htc/lib1/cc/view/table/e;

.field private mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;

.field mPopup:Landroid/widget/PopupWindow;

.field final mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

.field protected mRequestedStartPosition:I

.field mResurrectToPosition:I

.field protected mScrollStartPos:I

.field mScrollingCacheEnabled:Z

.field mSelectedOrnTop:I

.field private mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mShouldStopFling:Z

.field private mSpacing:I

.field mStackFromBottom:Z

.field protected mTableLayoutParams:Lcom/htc/lib1/cc/view/table/TableLayoutParams;

.field protected mTableViewSlideOffset:I

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTranscriptMode:I

.field mWidthHeightMeasureSpec:I

.field protected scrollControl:Lcom/htc/lib1/cc/view/ScrollControl;

.field protected tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 511
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;-><init>(Landroid/content/Context;)V

    .line 205
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 220
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    .line 248
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mWidthHeightMeasureSpec:I

    .line 270
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    .line 289
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    .line 295
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 346
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 357
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastTouchMode:I

    .line 375
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingProfilingStarted:Z

    .line 402
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastScrollState:I

    .line 432
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRequestedStartPosition:I

    .line 434
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCycle:Z

    .line 443
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCountDownMode:Z

    .line 448
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTableViewSlideOffset:I

    .line 1963
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isRightIdle:Z

    .line 3150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    .line 3187
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSpacing:I

    .line 3193
    const/16 v0, 0x50

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    .line 3199
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollStartPos:I

    .line 512
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->initAbsListView()V

    .line 514
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContext:Landroid/content/Context;

    .line 515
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 534
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 535
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 556
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 205
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 220
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    .line 248
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mWidthHeightMeasureSpec:I

    .line 270
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    .line 289
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    .line 295
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 346
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 357
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastTouchMode:I

    .line 375
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingProfilingStarted:Z

    .line 402
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastScrollState:I

    .line 432
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRequestedStartPosition:I

    .line 434
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCycle:Z

    .line 443
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCountDownMode:Z

    .line 448
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTableViewSlideOffset:I

    .line 1963
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isRightIdle:Z

    .line 3150
    iput-boolean v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    .line 3187
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSpacing:I

    .line 3193
    const/16 v0, 0x50

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    .line 3199
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollStartPos:I

    .line 557
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->initAbsListView()V

    .line 559
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContext:Landroid/content/Context;

    .line 560
    sget-object v0, Lcom/htc/lib1/cc/R$styleable;->AbsTableView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 562
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 563
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 565
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 567
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 568
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setStackFromBottom(Z)V

    .line 570
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 571
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setScrollingCacheEnabled(Z)V

    .line 573
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 574
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setTextFilterEnabled(Z)V

    .line 576
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 577
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setTranscriptMode(I)V

    .line 579
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 580
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setCacheColorHint(I)V

    .line 582
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 583
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/lib1/cc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/lib1/cc/view/table/AbstractTableView;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/lib1/cc/view/table/AbstractTableView;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/view/table/AbstractTableView;)I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/lib1/cc/view/table/AbstractTableView;)I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/lib1/cc/view/table/AbstractTableView;Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/lib1/cc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/lib1/cc/view/table/AbstractTableView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3638
    .line 3640
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/view/table/c;

    if-eqz v0, :cond_2

    .line 3641
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/view/table/c;

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/lib1/cc/view/table/c;->a(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 3645
    :goto_0
    if-nez v0, :cond_0

    .line 3646
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3647
    invoke-super {p0, p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 3649
    :cond_0
    if-eqz v0, :cond_1

    .line 3650
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    .line 3651
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setPressed(Z)V

    .line 3657
    :goto_1
    return v0

    .line 3654
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3629
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3630
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3629
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3633
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setPressed(Z)V

    .line 3634
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 5

    .prologue
    .line 2355
    sparse-switch p2, :sswitch_data_0

    .line 2381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :sswitch_0
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 2358
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 2359
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 2360
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 2384
    :goto_0
    sub-int/2addr v1, v3

    .line 2385
    sub-int/2addr v0, v2

    .line 2386
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0

    .line 2363
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 2364
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 2365
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 2366
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 2369
    :sswitch_2
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 2370
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 2371
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 2372
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 2373
    goto :goto_0

    .line 2375
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 2376
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 2377
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 2378
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2355
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 782
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setFocusable(Z)V

    .line 783
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setFocusableInTouchMode(Z)V

    .line 784
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setWillNotDraw(Z)V

    .line 785
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 786
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setScrollingCacheEnabled(Z)V

    .line 787
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setVerticalScrollBarEnabled(Z)V

    .line 788
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setHorizontalScrollBarEnabled(Z)V

    .line 789
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 6

    .prologue
    .line 1751
    const/4 v0, 0x0

    .line 1753
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/view/table/c;

    if-eqz v1, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/view/table/c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/lib1/cc/view/table/c;->a(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1757
    :cond_0
    if-nez v0, :cond_1

    .line 1758
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1759
    invoke-super {p0, p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 1761
    :cond_1
    return v0
.end method

.method private positionSelector(IIII)V
    .locals 5

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->getLeftPadding()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->getTopPadding()I

    move-result v2

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v3}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->getRightPadding()I

    move-result v3

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v4}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->getBottomPadding()I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1327
    return-void
.end method

.method private showPopup()V
    .locals 5

    .prologue
    .line 2328
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2330
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2331
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 2332
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2333
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getLocationOnScreen([I)V

    .line 2334
    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x14

    .line 2335
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x51

    const/4 v4, 0x0

    aget v1, v1, v4

    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2338
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->checkFocus()V

    .line 2340
    :cond_0
    return-void
.end method

.method private updateTableSyncState()V
    .locals 1

    .prologue
    .line 1980
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getCenterChildPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    .line 1981
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1982
    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    :goto_0
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    .line 1983
    return-void

    .line 1982
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 793
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1941
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    .line 1942
    iget v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    .line 1943
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1945
    if-nez v3, :cond_1

    .line 1956
    :cond_0
    return-void

    .line 1949
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1950
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1951
    add-int v5, v2, v0

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1952
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    :cond_2
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1949
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 2569
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 2523
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2607
    instance-of v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2002
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 2003
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2004
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2005
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2007
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2008
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->invalidate()V

    .line 2010
    :cond_1
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCachingStarted:Z

    .line 2012
    :cond_2
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1656
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public detachViewsFromParent(II)V
    .locals 0

    .prologue
    .line 3730
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->detachViewsFromParent(II)V

    .line 3731
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2319
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2321
    :cond_0
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 1828
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1514
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->drawableStateChanged()V

    .line 1515
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1518
    :cond_0
    return-void
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2589
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;
    .locals 2

    .prologue
    .line 2598
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 3700
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllVisibleViews()[Landroid/view/View;
    .locals 3

    .prologue
    .line 3831
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    new-array v1, v0, [Landroid/view/View;

    .line 3832
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3833
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3835
    :cond_0
    return-object v1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    .line 1111
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->getBottomFadingEdgeStrength()F

    move-result v0

    .line 1112
    if-nez v1, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return v0

    .line 1115
    :cond_1
    iget v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1116
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1119
    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1120
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getHeight()I

    move-result v2

    .line 1121
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1122
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingBottom()I

    move-result v4

    sub-int v4, v2, v4

    if-le v1, v4, :cond_0

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 2677
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCacheColorHint:I

    return v0
.end method

.method public getCenterChildPosition()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3767
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    if-nez v0, :cond_0

    .line 3795
    :goto_0
    return v4

    .line 3769
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getCenterOfTable()I

    move-result v5

    .line 3770
    const v3, 0x7fffffff

    .line 3773
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v0, v4

    :goto_1
    if-ltz v1, :cond_4

    .line 3775
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3777
    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v6, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v6

    if-gt v6, v5, :cond_1

    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v6, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v6

    if-lt v6, v5, :cond_1

    .line 3780
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3792
    :goto_2
    iget-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCycle:Z

    if-eqz v2, :cond_2

    move v4, v0

    .line 3793
    goto :goto_0

    .line 3784
    :cond_1
    iget-object v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v6, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v7, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3786
    if-ge v2, v3, :cond_3

    move v0, v1

    .line 3773
    :goto_3
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_1

    .line 3795
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    add-int v4, v0, v1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    move v1, v0

    move v0, v4

    goto :goto_2
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public abstract getDefaultHTableColleague()Lcom/htc/lib1/cc/view/table/h;
.end method

.method public abstract getDefaultVTableColleague()Lcom/htc/lib1/cc/view/table/VTableColleague;
.end method

.method public getFocusSelection()Lcom/htc/lib1/cc/view/a;
    .locals 1

    .prologue
    .line 3132
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->focusSelection:Lcom/htc/lib1/cc/view/a;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 773
    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 778
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 2031
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 2021
    const/4 v0, 0x0

    return v0
.end method

.method protected getKeyOfTableView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mKeyOfTableView:Ljava/lang/String;

    return-object v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxScrollOverhead()I
    .locals 1

    .prologue
    .line 3905
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    return v0
.end method

.method public getScrollControl()Lcom/htc/lib1/cc/view/ScrollControl;
    .locals 1

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->scrollControl:Lcom/htc/lib1/cc/view/ScrollControl;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1187
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1188
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 2648
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCacheColorHint:I

    return v0
.end method

.method public getTableLayoutParams()Lcom/htc/lib1/cc/view/table/TableLayoutParams;
    .locals 1

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTableLayoutParams:Lcom/htc/lib1/cc/view/table/TableLayoutParams;

    return-object v0
.end method

.method public getTableViewSlideOffset()I
    .locals 2

    .prologue
    .line 636
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTableViewSlideOffset:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/htc/lib1/cc/d;->table_view_slide_offest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTableViewSlideOffset:I

    .line 638
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTableViewSlideOffset:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    .line 1090
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->getTopFadingEdgeStrength()F

    move-result v0

    .line 1091
    if-nez v1, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return v0

    .line 1094
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 1095
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1098
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1099
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getVerticalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 1100
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingTop()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingTop()I

    move-result v0

    sub-int v0, v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 2639
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 8

    .prologue
    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2200
    iget v4, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mItemCount:I

    .line 2201
    if-lez v4, :cond_b

    .line 2208
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2210
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNeedSync:Z

    .line 2212
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTranscriptMode:I

    if-eq v0, v7, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTranscriptMode:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v5

    add-int/2addr v0, v5

    iget v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOldItemCount:I

    if-lt v0, v5, :cond_2

    .line 2215
    :cond_0
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 2312
    :cond_1
    :goto_0
    return-void

    .line 2219
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncMode:I

    packed-switch v0, :pswitch_data_0

    .line 2268
    :cond_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2270
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getSelectedItemPosition()I

    move-result v0

    .line 2273
    if-lt v0, v4, :cond_4

    .line 2274
    add-int/lit8 v0, v4, -0x1

    .line 2276
    :cond_4
    if-gez v0, :cond_5

    move v0, v1

    .line 2281
    :cond_5
    invoke-virtual {p0, v0, v3}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 2283
    if-ltz v4, :cond_9

    .line 2284
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2221
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2226
    iput v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 2227
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v4, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    goto :goto_0

    .line 2233
    :cond_6
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->findSyncPosition()I

    move-result v0

    .line 2234
    if-ltz v0, :cond_3

    .line 2236
    invoke-virtual {p0, v0, v3}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v5

    .line 2237
    if-ne v5, v0, :cond_3

    .line 2239
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    .line 2241
    iget-wide v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getHeight()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 2244
    iput v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 2252
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2248
    :cond_7
    iput v7, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    goto :goto_1

    .line 2260
    :pswitch_1
    iput v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 2262
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    :goto_2
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    .line 2263
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v4, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    goto :goto_0

    .line 2262
    :cond_8
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    add-int/2addr v0, v4

    goto :goto_2

    .line 2288
    :cond_9
    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 2289
    if-ltz v0, :cond_b

    .line 2290
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 2297
    :cond_a
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    if-gez v0, :cond_1

    .line 2305
    :cond_b
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mStackFromBottom:Z

    if-eqz v0, :cond_c

    move v0, v2

    :goto_3
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 2306
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    .line 2307
    sget-wide v2, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedRowId:J

    .line 2308
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNextSelectedPosition:I

    .line 2309
    sget-wide v2, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNextSelectedRowId:J

    .line 2310
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNeedSync:Z

    .line 2311
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_c
    move v0, v3

    .line 2305
    goto :goto_3

    .line 2219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method hideSelector()V
    .locals 2

    .prologue
    .line 2035
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    sget v1, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    if-eq v0, v1, :cond_1

    .line 2036
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 2037
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 2038
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 2041
    :cond_0
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    .line 2042
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    .line 2043
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 2044
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2046
    :cond_1
    return-void
.end method

.method protected abstract initTableColleague()V
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 680
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/lib1/cc/view/table/e;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/lib1/cc/view/table/e;

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/lib1/cc/view/table/e;->onScroll(Lcom/htc/lib1/cc/view/table/AbstractTableView;III)V

    .line 685
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->onScrollChanged(IIII)V

    .line 686
    return-void
.end method

.method public isInCountDownMode()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCountDownMode:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 2395
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    return v0
.end method

.method protected isLastScrollStateEqualsTo(I)Z
    .locals 1

    .prologue
    .line 1960
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastScrollState:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyPressed()V
    .locals 3

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1475
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1476
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1478
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setPressed(Z)V

    .line 1479
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v1

    .line 1480
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1481
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_1

    .line 1482
    if-eqz v1, :cond_4

    .line 1483
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1489
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDataChanged:Z

    if-nez v0, :cond_3

    .line 1490
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;

    if-nez v0, :cond_2

    .line 1491
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;Lcom/htc/lib1/cc/view/table/AbstractTableView$1;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;

    .line 1493
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1494
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/view/table/AbstractTableView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1497
    :cond_3
    return-void

    .line 1486
    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1178
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1273
    if-eqz v1, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1286
    if-eq v0, v1, :cond_0

    .line 1287
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1288
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCacheColorHint:I

    if-eqz v1, :cond_0

    .line 1289
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCacheColorHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1308
    :cond_0
    :goto_0
    return-object v0

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1299
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCacheColorHint:I

    if-eqz v1, :cond_0

    .line 1300
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCacheColorHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public offsetChildrenLeftAndRight(I)V
    .locals 2

    .prologue
    .line 3672
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3673
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3672
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3675
    :cond_0
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 2

    .prologue
    .line 3688
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3689
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3688
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3691
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1573
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onAttachedToWindow()V

    .line 1575
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1576
    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1579
    :cond_0
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->onUp()V

    .line 3223
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 597
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 598
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isLastScrollStateEqualsTo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 600
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    # getter for: Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->access$000(Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 601
    new-instance v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$1;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->post(Ljava/lang/Runnable;)Z

    .line 608
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5

    .prologue
    .line 1527
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_1

    .line 1529
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1555
    :cond_0
    :goto_0
    return-object v0

    .line 1535
    :cond_1
    sget-object v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 1540
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1541
    const/4 v2, -0x1

    .line 1542
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 1543
    aget v4, v0, v1

    if-ne v4, v3, :cond_2

    .line 1550
    :goto_2
    if-ltz v1, :cond_0

    .line 1551
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1542
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1587
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onDetachedFromWindow()V

    .line 1589
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->clear()V

    .line 1591
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1592
    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1595
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3235
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->stop(Z)V

    .line 3236
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    .line 3239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    .line 3241
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 3243
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    .line 3244
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3248
    :cond_0
    return v2
.end method

.method public onFilterComplete(I)V
    .locals 1

    .prologue
    .line 2577
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 2578
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 2579
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->resurrectSelection()Z

    .line 2581
    :cond_0
    return-void
.end method

.method protected onFinishedMovement()V
    .locals 0

    .prologue
    .line 3808
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3263
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->setCloseBouncing(Z)V

    .line 3266
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    .line 3267
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1, p3, p4}, Lcom/htc/lib1/cc/view/table/TableColleague;->fling(Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;FF)V

    .line 3268
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 1047
    invoke-super {p0, p1, p2, p3}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1048
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->resurrectSelection()Z

    .line 1052
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 2496
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2498
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2499
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->showPopup()V

    .line 2508
    :cond_0
    :goto_0
    return-void

    .line 2503
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2504
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->dismissPopup()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 1806
    sparse-switch p1, :sswitch_data_0

    .line 1817
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1809
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1811
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1812
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1813
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setPressed(Z)V

    .line 1814
    const/4 v0, 0x1

    goto :goto_0

    .line 1806
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1156
    invoke-super/range {p0 .. p5}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onLayout(ZIIII)V

    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mInLayout:Z

    .line 1159
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->layoutChildren()V

    .line 1160
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mInLayout:Z

    .line 1170
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->initialWithScrollControl:Z

    .line 1171
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 3278
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3298
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-gez v0, :cond_1

    .line 3304
    :cond_0
    :goto_0
    return-void

    .line 3301
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 3302
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1134
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->useDefaultSelector()V

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    .line 1137
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    if-nez v1, :cond_1

    .line 1138
    new-instance v1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    .line 1140
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->getLeftPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1141
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->getTopPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1142
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->getRightPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1143
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->getBottomPadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1144
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 979
    check-cast p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;

    .line 981
    invoke-virtual {p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 982
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDataChanged:Z

    .line 984
    iget v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->height:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncHeight:J

    .line 986
    iget-wide v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->selectedId:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    .line 987
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNeedSync:Z

    .line 988
    iget-wide v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->selectedId:J

    iput-wide v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncRowId:J

    .line 989
    iget v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->position:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    .line 990
    iget v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->viewTop:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSpecificTop:I

    .line 991
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncMode:I

    .line 1005
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1006
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1007
    iget-object v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    .line 1008
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setFilterText(Ljava/lang/String;)V

    .line 1010
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->requestLayout()V

    .line 1011
    return-void

    .line 992
    :cond_2
    iget-wide v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->firstId:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    .line 994
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    .line 996
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    .line 997
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNeedSync:Z

    .line 998
    iget-wide v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->firstId:J

    iput-wide v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncRowId:J

    .line 999
    iget v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->position:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncPosition:I

    .line 1000
    iget v0, p1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->viewTop:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSpecificTop:I

    .line 1001
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSyncMode:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 929
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->dismissPopup()V

    .line 931
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 933
    new-instance v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;

    invoke-direct {v2, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 935
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 936
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getSelectedItemId()J

    move-result-wide v3

    .line 937
    iput-wide v3, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->selectedId:J

    .line 938
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getHeight()I

    move-result v5

    iput v5, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->height:I

    .line 940
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 942
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedOrnTop:I

    iput v0, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->viewTop:I

    .line 943
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->position:I

    .line 944
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    int-to-long v0, v0

    iput-wide v0, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->firstId:J

    .line 959
    :goto_1
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    .line 960
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    .line 962
    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->filter:Ljava/lang/String;

    .line 970
    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    .line 935
    goto :goto_0

    .line 946
    :cond_2
    if-eqz v0, :cond_3

    .line 948
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->viewTop:I

    .line 950
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    iput v0, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->position:I

    .line 951
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->firstId:J

    goto :goto_1

    .line 953
    :cond_3
    iput v1, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->viewTop:I

    .line 954
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    int-to-long v3, v0

    iput-wide v3, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->firstId:J

    .line 955
    iput v1, v2, Lcom/htc/lib1/cc/view/table/AbstractTableView$SavedState;->position:I

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3316
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3363
    :cond_0
    :goto_0
    return v3

    .line 3317
    :cond_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCycle:Z

    if-nez v0, :cond_4

    .line 3319
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollStartPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3320
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getCenterChildPosition()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollStartPos:I

    .line 3323
    :cond_2
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollStartPos:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollStartPos:I

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_7

    .line 3324
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->setCloseBouncing(Z)V

    .line 3334
    :cond_4
    :goto_1
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    if-eq v0, v5, :cond_6

    .line 3335
    iput v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    .line 3336
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setPressed(Z)V

    .line 3337
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3339
    if-eqz v0, :cond_5

    .line 3340
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3343
    :cond_5
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->reportScrollStateChange(I)V

    .line 3345
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3357
    :cond_6
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3360
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    float-to-int v1, p3

    mul-int/lit8 v1, v1, -0x1

    float-to-int v2, p4

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/lib1/cc/view/table/TableColleague;->scrollWithConstrain(IIZ)V

    .line 3361
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->findMotionRow(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    goto :goto_0

    .line 3325
    :cond_7
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 3327
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->setCloseBouncing(Z)V

    goto :goto_1

    .line 3329
    :cond_8
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/view/table/TableColleague;->setCloseBouncing(Z)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 3373
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    if-nez v0, :cond_1

    .line 3374
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    .line 3375
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3376
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3377
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 3379
    iget-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDataChanged:Z

    if-nez v1, :cond_3

    .line 3381
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->layoutChildren()V

    .line 3382
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3383
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->positionSelector(Landroid/view/View;)V

    .line 3384
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setPressed(Z)V

    .line 3386
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 3387
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isLongClickable()Z

    move-result v2

    .line 3389
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3390
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3391
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_0

    .line 3392
    if-eqz v2, :cond_2

    .line 3393
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3400
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 3401
    iput v4, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    .line 3408
    :cond_1
    :goto_1
    return-void

    .line 3395
    :cond_2
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 3404
    :cond_3
    iput v4, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 3418
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 3425
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3429
    const/4 v0, 0x1

    .line 3432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDataChanged:Z

    .line 1372
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->rememberSyncState()V

    .line 1374
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 2539
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2540
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    .line 2541
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 2543
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->showPopup()V

    .line 2544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    .line 2550
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 2551
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2553
    if-eqz v0, :cond_3

    .line 2554
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 2561
    :cond_1
    return-void

    .line 2545
    :cond_2
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    goto :goto_0

    .line 2556
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 1916
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1918
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1921
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1923
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->onUp()V

    .line 1928
    :cond_1
    :goto_0
    return v0

    .line 1924
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1925
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->onCancel()V

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    .prologue
    .line 1890
    if-eqz p1, :cond_0

    .line 1892
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->hideSelector()V

    .line 1896
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1899
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1901
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->layoutChildren()V

    .line 1904
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 3206
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollStartPos:I

    .line 3208
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->layoutChildren()V

    .line 3210
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    # getter for: Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;->access$000(Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3211
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->scrollIntoSlots()V

    .line 3214
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->dispatchUnpress()V

    .line 3215
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1603
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->onWindowFocusChanged(Z)V

    .line 1605
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1607
    :goto_0
    if-nez p1, :cond_2

    .line 1608
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1610
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1612
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->dismissPopup()V

    .line 1614
    if-ne v0, v2, :cond_0

    .line 1616
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 1641
    :cond_0
    :goto_1
    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastTouchMode:I

    .line 1642
    return-void

    :cond_1
    move v0, v2

    .line 1605
    goto :goto_0

    .line 1619
    :cond_2
    iget-boolean v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v3, :cond_3

    .line 1621
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->showPopup()V

    .line 1625
    :cond_3
    iget v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastTouchMode:I

    if-eq v0, v3, :cond_0

    iget v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1627
    if-ne v0, v2, :cond_4

    .line 1629
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->resurrectSelection()Z

    goto :goto_1

    .line 1633
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->hideSelector()V

    .line 1634
    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 1636
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 4

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1844
    if-nez v0, :cond_0

    .line 1845
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1846
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1849
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v1

    .line 1850
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1851
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1852
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1853
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1854
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1855
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    add-int/2addr v0, v1

    .line 1859
    :goto_1
    return v0

    .line 1850
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1859
    :cond_2
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    goto :goto_1
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1313
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1314
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->positionSelector(IIII)V

    .line 1317
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    .line 1318
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1319
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mIsChildViewEnabled:Z

    .line 1320
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->refreshDrawableState()V

    .line 1322
    :cond_0
    return-void

    .line 1319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 2054
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedPosition:I

    .line 2055
    if-gez v0, :cond_0

    .line 2056
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 2058
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2059
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2060
    return v0
.end method

.method protected rememberSyncState()V
    .locals 0

    .prologue
    .line 4024
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->rememberSyncState()V

    .line 4025
    return-void
.end method

.method protected reportScrollStateChange(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1967
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/lib1/cc/view/table/e;

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/lib1/cc/view/table/e;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/view/table/e;->onScrollStateChanged(Lcom/htc/lib1/cc/view/table/AbstractTableView;I)V

    .line 1970
    iput p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLastScrollState:I

    .line 1974
    :cond_0
    if-ne p1, v2, :cond_2

    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isRightIdle:Z

    .line 1977
    :cond_1
    :goto_0
    return-void

    .line 1975
    :cond_2
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isRightIdle:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isRightIdle:Z

    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->updateTableSyncState()V

    goto :goto_0

    .line 1976
    :cond_3
    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isRightIdle:Z

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1061
    invoke-super {p0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->requestLayout()V

    .line 1063
    :cond_0
    return-void
.end method

.method public requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->resetList()V

    .line 832
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->requestLayout()V

    .line 833
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->invalidate()V

    .line 836
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRequestedStartPosition:I

    if-ltz v0, :cond_1

    .line 837
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRequestedStartPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setSelection(I)V

    .line 838
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRequestedStartPosition:I

    .line 840
    :cond_1
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1069
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeAllViewsInLayout()V

    .line 1070
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    .line 1071
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDataChanged:Z

    .line 1072
    iput-boolean v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mNeedSync:Z

    .line 1073
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOldSelectedPosition:I

    .line 1074
    sget-wide v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_ROW_ID:J

    iput-wide v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOldSelectedRowId:J

    .line 1076
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setSelectedPositionInt(I)V

    .line 1077
    sget v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setNextSelectedPositionInt(I)V

    .line 1078
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectedOrnTop:I

    .line 1079
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1080
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->invalidate()V

    .line 1081
    return-void
.end method

.method resurrectSelection()Z
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2099
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v8

    .line 2101
    if-gtz v8, :cond_0

    .line 2190
    :goto_0
    return v4

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/graphics/Rect;)I

    move-result v5

    .line 2108
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v1, p0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mListPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/graphics/Rect;)I

    move-result v1

    sub-int v6, v0, v1

    .line 2109
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    .line 2110
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 2113
    if-lt v1, v0, :cond_4

    add-int v2, v0, v8

    if-ge v1, v2, :cond_4

    .line 2116
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2117
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v0

    .line 2118
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v7, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v7

    .line 2121
    if-ge v0, v5, :cond_3

    .line 2122
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    :cond_1
    :goto_1
    move v2, v0

    move v0, v3

    .line 2178
    :goto_2
    sget v5, Lcom/htc/lib1/cc/view/table/AbstractTableView;->INVALID_POSITION:I

    iput v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mResurrectToPosition:I

    .line 2180
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2181
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    .line 2182
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->clearScrollingCache()V

    .line 2183
    iput v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSpecificTop:I

    .line 2184
    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 2185
    if-ltz v0, :cond_2

    .line 2186
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mLayoutMode:I

    .line 2187
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setSelectionInt(I)V

    .line 2190
    :cond_2
    if-ltz v0, :cond_a

    :goto_3
    move v4, v3

    goto :goto_0

    .line 2123
    :cond_3
    if-le v7, v6, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnMeasuredHeight(Landroid/view/View;)I

    move-result v0

    sub-int v0, v6, v0

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_1

    .line 2128
    :cond_4
    if-ge v1, v0, :cond_7

    move v6, v4

    move v2, v4

    .line 2131
    :goto_4
    if-ge v6, v8, :cond_10

    .line 2132
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2133
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v7, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v1

    .line 2135
    if-nez v6, :cond_f

    .line 2139
    if-gtz v0, :cond_5

    if-ge v1, v5, :cond_e

    .line 2142
    :cond_5
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v2}, Lcom/htc/lib1/cc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v2

    add-int/2addr v2, v5

    move v5, v1

    .line 2145
    :goto_5
    if-lt v1, v2, :cond_6

    .line 2147
    add-int/2addr v0, v6

    :goto_6
    move v2, v1

    move v1, v0

    move v0, v3

    .line 2131
    goto :goto_2

    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v12, v2

    move v2, v5

    move v5, v12

    goto :goto_4

    .line 2153
    :cond_7
    iget v9, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mItemCount:I

    .line 2155
    add-int v1, v0, v8

    add-int/lit8 v1, v1, -0x1

    .line 2157
    add-int/lit8 v2, v8, -0x1

    move v7, v2

    move v5, v4

    :goto_7
    if-ltz v7, :cond_d

    .line 2158
    invoke-virtual {p0, v7}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2159
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v2, v10}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnTop(Landroid/view/View;)I

    move-result v2

    .line 2160
    iget-object v11, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v11, v10}, Lcom/htc/lib1/cc/view/table/TableColleague;->getOrnBottom(Landroid/view/View;)I

    move-result v10

    .line 2162
    add-int/lit8 v11, v8, -0x1

    if-ne v7, v11, :cond_c

    .line 2164
    add-int v5, v0, v8

    if-lt v5, v9, :cond_8

    if-le v10, v6, :cond_b

    .line 2165
    :cond_8
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v5}, Lcom/htc/lib1/cc/view/table/TableColleague;->getFadingEdgeLength()I

    move-result v5

    sub-int v5, v6, v5

    move v6, v2

    .line 2169
    :goto_8
    if-gt v10, v5, :cond_9

    .line 2170
    add-int/2addr v0, v7

    move v1, v0

    move v0, v4

    .line 2172
    goto/16 :goto_2

    .line 2157
    :cond_9
    add-int/lit8 v2, v7, -0x1

    move v7, v2

    move v12, v5

    move v5, v6

    move v6, v12

    goto :goto_7

    :cond_a
    move v3, v4

    .line 2190
    goto :goto_3

    :cond_b
    move v5, v6

    move v6, v2

    goto :goto_8

    :cond_c
    move v12, v6

    move v6, v5

    move v5, v12

    goto :goto_8

    :cond_d
    move v0, v4

    move v2, v5

    goto/16 :goto_2

    :cond_e
    move v2, v5

    move v5, v1

    goto :goto_5

    :cond_f
    move v12, v5

    move v5, v2

    move v2, v12

    goto :goto_5

    :cond_10
    move v1, v2

    goto :goto_6
.end method

.method public scrollIntoSlots()V
    .locals 2

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/TableColleague;->scrollIntoSlots(Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;)V

    .line 3878
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2407
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter is null, please make sure adpater has been set !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2409
    :cond_0
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 2460
    :goto_0
    return v0

    .line 2414
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    move v1, v2

    .line 2437
    :goto_1
    if-eqz v0, :cond_3

    .line 2441
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2442
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-direct {v0, p3, v3, v4, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    .line 2445
    :goto_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2446
    packed-switch v2, :pswitch_data_0

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v2

    move v1, v2

    .line 2422
    goto :goto_1

    .line 2424
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 2427
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_3
    move v1, v0

    move v0, v2

    .line 2430
    goto :goto_1

    .line 2433
    :sswitch_2
    iput-boolean v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    move v0, v1

    move v1, v2

    goto :goto_1

    .line 2448
    :pswitch_0
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2452
    :pswitch_1
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2456
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move-object v0, p3

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    .line 2414
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 2446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 3712
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 0

    .prologue
    .line 2663
    iput p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCacheColorHint:I

    .line 2664
    return-void
.end method

.method public setCountDownMode(Z)V
    .locals 1

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCountDownMode:Z

    .line 616
    if-nez p1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFlingRunnable:Lcom/htc/lib1/cc/view/table/AbstractTableView$FlingRunnable;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 619
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->scrollIntoSlots()V

    .line 621
    :cond_0
    return-void
.end method

.method public setCycling(Z)V
    .locals 0

    .prologue
    .line 4020
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mCycle:Z

    .line 4021
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .prologue
    .line 1423
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDrawSelectorOnTop:Z

    .line 1424
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1030
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1032
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFiltered:Z

    .line 1036
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mDataSetObserver:Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView$AdapterDataSetObserver;->clearSavedState()V

    .line 1039
    :cond_0
    return-void
.end method

.method public setFocusSelection(Lcom/htc/lib1/cc/view/a;)V
    .locals 0

    .prologue
    .line 3140
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->focusSelection:Lcom/htc/lib1/cc/view/a;

    .line 3141
    return-void
.end method

.method public setGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0

    .prologue
    .line 3848
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3849
    return-void
.end method

.method protected setKeyOfTableView(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mKeyOfTableView:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setMaxScrollOverhead(I)V
    .locals 0

    .prologue
    .line 3897
    iput p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mMaxScrollOverhead:I

    .line 3898
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/lib1/cc/view/table/e;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnScrollListener:Lcom/htc/lib1/cc/view/table/e;

    .line 673
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->invokeOnItemScrollListener()V

    .line 674
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/lib1/cc/view/table/f;)V
    .locals 1

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRecycler:Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;

    # setter for: Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/view/table/f;
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->access$702(Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;Lcom/htc/lib1/cc/view/table/f;)Lcom/htc/lib1/cc/view/table/f;

    .line 2729
    return-void
.end method

.method public setScrollControl(Lcom/htc/lib1/cc/view/ScrollControl;)V
    .locals 0

    .prologue
    .line 3124
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->scrollControl:Lcom/htc/lib1/cc/view/ScrollControl;

    .line 3125
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->clearScrollingCache()V

    .line 726
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mScrollingCacheEnabled:Z

    .line 727
    return-void
.end method

.method public setSelection(I)V
    .locals 0

    .prologue
    .line 3722
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    .prologue
    .line 1437
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1438
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1447
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1449
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1450
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1451
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1452
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    if-nez v1, :cond_1

    .line 1453
    new-instance v1, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    invoke-direct {v1, p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;-><init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V

    iput-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    .line 1455
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelectionPadding:Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$SelectionPadding;->setPadding(IIII)V

    .line 1457
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1458
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1459
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 0

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mStackFromBottom:Z

    .line 822
    return-void
.end method

.method public setTableLayoutParams(ILcom/htc/lib1/cc/view/table/TableLayoutParams;)V
    .locals 1

    .prologue
    .line 3088
    iput p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mRequestedStartPosition:I

    .line 3089
    iput-object p2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTableLayoutParams:Lcom/htc/lib1/cc/view/table/TableLayoutParams;

    .line 3090
    invoke-virtual {p2}, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->isInitialWithScrollControl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->initialWithScrollControl:Z

    .line 3091
    invoke-virtual {p2}, Lcom/htc/lib1/cc/view/table/TableLayoutParams;->isScrollOverBoundary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isScrollOverBoundary:Z

    .line 3092
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->initTableColleague()V

    .line 3093
    return-void
.end method

.method protected setTableViewSlideOffset(I)V
    .locals 0

    .prologue
    .line 664
    if-lez p1, :cond_0

    iput p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTableViewSlideOffset:I

    .line 665
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTextFilterEnabled:Z

    .line 743
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    .prologue
    .line 2625
    iput p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTranscriptMode:I

    .line 2626
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1779
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1780
    if-ltz v3, :cond_1

    .line 1781
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1784
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/view/table/c;

    if-eqz v1, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/view/table/c;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/lib1/cc/view/table/c;->a(Lcom/htc/lib1/cc/view/table/AbstractAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1788
    :cond_0
    if-nez v0, :cond_1

    .line 1789
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1792
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 1797
    :cond_1
    return v0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1382
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1387
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1385
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)V
    .locals 1

    .prologue
    .line 3858
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3871
    :goto_0
    return-void

    .line 3863
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->hideSelector()V

    .line 3864
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->tableColleague:Lcom/htc/lib1/cc/view/table/TableColleague;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lib1/cc/view/table/TableColleague;->trackMotionScrollOrn(II)V

    .line 3869
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->invalidate()V

    .line 3870
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->invokeOnItemScrollListener()V

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/lib1/cc/view/table/AbstractAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
