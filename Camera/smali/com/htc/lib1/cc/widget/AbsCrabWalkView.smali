.class public abstract Lcom/htc/lib1/cc/widget/AbsCrabWalkView;
.super Lcom/htc/lib1/cc/widget/HtcAdapterView2;
.source "AbsCrabWalkView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/lib1/cc/widget/HtcAdapterView2",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/Filter$FilterListener;"
    }
.end annotation


# instance fields
.field private delayActionUpTime:Z

.field private delayIncludeDoneWaiting:Z

.field mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field mCachingStarted:Z

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/lib1/cc/widget/HtcAdapterView2",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field private mDensityScale:F

.field mDrawSelectorOnTop:Z

.field private mFiltered:Z

.field private mFixm:Z

.field protected mFlingRunnable:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;

.field mHeightMeasureSpec:I

.field private mIsChildViewEnabled:Z

.field private mIsClipToPadding:Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalLeft:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field public mOnScrollListener:Lcom/htc/lib1/cc/widget/a;

.field private mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;

.field protected mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field protected mPerformClick:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field final mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field mScrollLeft:Landroid/view/View;

.field mScrollRight:Landroid/view/View;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedLeft:I

.field mSelectedTop:I

.field private mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityListener:Lcom/htc/lib1/cc/widget/d;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method private acceptFilter()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1147
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 1154
    :goto_0
    return v0

    .line 1151
    :cond_1
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1152
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1154
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private createTextFilter(Z)V
    .locals 0

    .prologue
    .line 4167
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 1851
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1853
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1854
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1856
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 5

    .prologue
    .line 4021
    sparse-switch p2, :sswitch_data_0

    .line 4047
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4023
    :sswitch_0
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 4024
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 4025
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 4026
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 4050
    :goto_0
    sub-int/2addr v1, v3

    .line 4051
    sub-int/2addr v0, v2

    .line 4052
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0

    .line 4029
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 4030
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 4031
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 4032
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 4035
    :sswitch_2
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 4036
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 4037
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 4038
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 4039
    goto :goto_0

    .line 4041
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 4042
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 4043
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 4044
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 4021
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private isClipToPadding()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1805
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingTop()I

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingRight()I

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingBottom()I

    move-result v3

    or-int/2addr v0, v3

    if-eqz v0, :cond_0

    move v0, v1

    .line 1807
    :goto_0
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mIsClipToPadding:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 1805
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1807
    goto :goto_1
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2237
    .line 2239
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/widget/q;

    if-eqz v0, :cond_2

    .line 2240
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/widget/q;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/q;->a(Lcom/htc/lib1/cc/widget/HtcAdapterView2;Landroid/view/View;IJ)Z

    move-result v0

    .line 2243
    :goto_0
    if-nez v0, :cond_0

    .line 2244
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2245
    invoke-super {p0, p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2247
    :cond_0
    if-eqz v0, :cond_1

    .line 2248
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->performHapticFeedback(I)Z

    .line 2250
    :cond_1
    return v0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private positionPopup()V
    .locals 7

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 3976
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3979
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3982
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 3983
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getLocationOnScreen([I)V

    .line 3988
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3989
    aget v0, v2, v4

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDensityScale:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 3990
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3991
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x15

    aget v2, v2, v4

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4006
    :goto_0
    return-void

    .line 3994
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    aget v2, v2, v4

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 3997
    :cond_1
    const/4 v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDensityScale:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 3998
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3999
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x51

    aget v2, v2, v4

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 4002
    :cond_2
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    aget v2, v2, v4

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1759
    return-void
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 3967
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3968
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->createTextFilter(Z)V

    .line 3969
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->positionPopup()V

    .line 3971
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->checkFocus()V

    .line 3973
    :cond_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 886
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
    .line 2963
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v1

    .line 2964
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    .line 2965
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2967
    if-nez v3, :cond_1

    .line 2978
    :cond_0
    return-void

    .line 2971
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2972
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2973
    add-int v5, v2, v0

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2974
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2976
    :cond_2
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 4268
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 4224
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 4157
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 4305
    instance-of v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    return v0
.end method

.method protected clearScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3223
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 3224
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3225
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3226
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3228
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3229
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invalidate()V

    .line 3231
    :cond_1
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCachingStarted:Z

    .line 3233
    :cond_2
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1379
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v2

    .line 1380
    if-lez v2, :cond_3

    .line 1381
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    .line 1382
    mul-int/lit8 v0, v2, 0x64

    .line 1384
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1385
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1386
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1387
    if-lez v1, :cond_0

    .line 1388
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1391
    :cond_0
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1392
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1393
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1394
    if-lez v1, :cond_1

    .line 1395
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 1403
    :cond_1
    :goto_0
    return v0

    .line 1400
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1403
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1412
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    .line 1413
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v3

    .line 1414
    if-ltz v2, :cond_0

    if-lez v3, :cond_0

    .line 1415
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1416
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1417
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1418
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1419
    if-lez v1, :cond_0

    .line 1420
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1435
    :cond_0
    :goto_0
    return v0

    .line 1424
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    .line 1425
    if-nez v2, :cond_2

    .line 1432
    :goto_1
    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 1427
    :cond_2
    add-int v0, v2, v3

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 1428
    goto :goto_1

    .line 1430
    :cond_3
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1444
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1260
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v2

    .line 1261
    if-lez v2, :cond_3

    .line 1262
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_2

    .line 1263
    mul-int/lit8 v0, v2, 0x64

    .line 1265
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1266
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1267
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1268
    if-lez v1, :cond_0

    .line 1269
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1272
    :cond_0
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1273
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1274
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1275
    if-lez v1, :cond_1

    .line 1276
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 1284
    :cond_1
    :goto_0
    return v0

    .line 1281
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1284
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1293
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    .line 1294
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v3

    .line 1295
    if-ltz v2, :cond_0

    if-lez v3, :cond_0

    .line 1296
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 1297
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1298
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1299
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1300
    if-lez v1, :cond_0

    .line 1301
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1316
    :cond_0
    :goto_0
    return v0

    .line 1305
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    .line 1306
    if-nez v2, :cond_2

    .line 1313
    :goto_1
    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 1308
    :cond_2
    add-int v0, v2, v3

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 1309
    goto :goto_1

    .line 1311
    :cond_3
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1325
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSmoothScrollbarEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2131
    new-instance v0, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3211
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3212
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3213
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3214
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCachingStarted:Z

    .line 3216
    :cond_0
    return-void
.end method

.method dismissPopup()V
    .locals 1

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3958
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3960
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 1767
    const/4 v0, 0x0

    .line 1768
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isClipToPadding()Z

    move-result v1

    .line 1769
    if-eqz v1, :cond_0

    .line 1770
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1771
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getScrollX()I

    move-result v2

    .line 1772
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getScrollY()I

    move-result v3

    .line 1773
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getRight()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getLeft()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getBottom()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getTop()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1778
    :cond_0
    iget-boolean v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDrawSelectorOnTop:Z

    .line 1779
    if-nez v2, :cond_1

    .line 1780
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1783
    :cond_1
    if-eqz v1, :cond_2

    .line 1784
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1787
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1789
    if-eqz v2, :cond_3

    .line 1790
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1794
    :cond_3
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 2318
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 2876
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->draw(Landroid/graphics/Canvas;)V

    .line 2877
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1985
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->drawableStateChanged()V

    .line 1986
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1989
    :cond_0
    return-void
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 4796
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionColumn(I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 4874
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v2

    .line 4875
    if-nez v2, :cond_1

    move v0, v1

    .line 4880
    :cond_0
    :goto_0
    return v0

    .line 4879
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->findMotionColumn(I)I

    move-result v0

    .line 4880
    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method abstract findMotionColumn(I)I
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 4287
    new-instance v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;
    .locals 2

    .prologue
    .line 4296
    new-instance v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 4831
    const/4 v0, 0x0

    return v0
.end method

.method getBottomBoundary()I
    .locals 1

    .prologue
    .line 4761
    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v1

    .line 1356
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->getBottomFadingEdgeStrength()F

    move-result v0

    .line 1357
    if-nez v1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return v0

    .line 1360
    :cond_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1361
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1364
    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1365
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v2

    .line 1366
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1367
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingBottom()I

    move-result v4

    sub-int v4, v2, v4

    if-le v1, v4, :cond_0

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 4370
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCacheColorHint:I

    return v0
.end method

.method getChildrenTotalHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4804
    move v1, v0

    .line 4805
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4806
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 4805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4808
    :cond_0
    return v1
.end method

.method getChildrenTotalWidth()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4813
    move v1, v0

    .line 4814
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4815
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 4814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4817
    :cond_0
    return v1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method getDefaultFlingRunnable()Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;
    .locals 1

    .prologue
    .line 4792
    new-instance v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 858
    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 862
    invoke-virtual {p0, v0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 867
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 3544
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 3534
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBorderWidth()I
    .locals 1

    .prologue
    .line 4845
    const/4 v0, 0x0

    return v0
.end method

.method getLeftBoundary()I
    .locals 1

    .prologue
    .line 4766
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v1

    .line 1454
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->getLeftFadingEdgeStrength()F

    move-result v0

    .line 1455
    if-nez v1, :cond_1

    .line 1464
    :cond_0
    :goto_0
    return v0

    .line 1458
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 1459
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1462
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1463
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 1464
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingLeft()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method getRightBorderWidth()I
    .locals 1

    .prologue
    .line 4841
    const/4 v0, 0x0

    return v0
.end method

.method getRightBoundary()I
    .locals 1

    .prologue
    .line 4770
    const/4 v0, 0x0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v1

    .line 1475
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->getRightFadingEdgeStrength()F

    move-result v0

    .line 1476
    if-nez v1, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return v0

    .line 1479
    :cond_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1480
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1483
    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1484
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v2

    .line 1485
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1486
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    if-le v1, v4, :cond_0

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1607
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1608
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1610
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 4346
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTopBorderHeight()I
    .locals 1

    .prologue
    .line 4835
    const/4 v0, 0x0

    return v0
.end method

.method getTopBoundary()I
    .locals 1

    .prologue
    .line 4757
    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 1334
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v1

    .line 1335
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->getTopFadingEdgeStrength()F

    move-result v0

    .line 1336
    if-nez v1, :cond_1

    .line 1345
    :cond_0
    :goto_0
    return v0

    .line 1339
    :cond_1
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 1340
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1343
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1344
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 1345
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingTop()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingTop()I

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
    .line 4337
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3823
    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    .line 3824
    if-lez v3, :cond_c

    .line 3831
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNeedSync:Z

    if-eqz v0, :cond_4

    .line 3833
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNeedSync:Z

    .line 3835
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTranscriptMode:I

    if-eq v0, v7, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTranscriptMode:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOldItemCount:I

    if-lt v0, v4, :cond_3

    .line 3840
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3841
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 3951
    :cond_1
    :goto_0
    return-void

    .line 3843
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    goto :goto_0

    .line 3849
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncMode:I

    packed-switch v0, :pswitch_data_0

    .line 3899
    :cond_4
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3901
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getSelectedItemPosition()I

    move-result v0

    .line 3904
    if-lt v0, v3, :cond_5

    .line 3905
    add-int/lit8 v0, v3, -0x1

    .line 3907
    :cond_5
    if-gez v0, :cond_6

    move v0, v1

    .line 3912
    :cond_6
    invoke-virtual {p0, v0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 3914
    if-ltz v3, :cond_a

    .line 3915
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3851
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3856
    iput v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 3857
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncPosition:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v3, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncPosition:I

    goto :goto_0

    .line 3863
    :cond_7
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->findSyncPosition()I

    move-result v0

    .line 3864
    if-ltz v0, :cond_4

    .line 3866
    invoke-virtual {p0, v0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 3867
    if-ne v4, v0, :cond_4

    .line 3869
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncPosition:I

    .line 3872
    iget-wide v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    iget-wide v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncWidth:J

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 3875
    :cond_8
    iput v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 3884
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3879
    :cond_9
    iput v7, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    goto :goto_1

    .line 3892
    :pswitch_1
    iput v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 3893
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncPosition:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v3, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncPosition:I

    goto :goto_0

    .line 3919
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 3920
    if-ltz v0, :cond_c

    .line 3921
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 3928
    :cond_b
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    if-gez v0, :cond_1

    .line 3938
    :cond_c
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3939
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mStackFromBottom:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x8

    :goto_2
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 3945
    :goto_3
    iput v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    .line 3946
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedRowId:J

    .line 3947
    iput v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNextSelectedPosition:I

    .line 3948
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNextSelectedRowId:J

    .line 3949
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNeedSync:Z

    .line 3950
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->checkSelectionChanged()V

    goto/16 :goto_0

    .line 3939
    :cond_d
    const/4 v0, 0x7

    goto :goto_2

    .line 3941
    :cond_e
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mStackFromBottom:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    :goto_4
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    goto :goto_3

    :cond_f
    move v0, v2

    goto :goto_4

    .line 3849
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 3558
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3559
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    .line 3560
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNextSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 3561
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    .line 3563
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setSelectedPositionInt(I)V

    .line 3564
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setNextSelectedPositionInt(I)V

    .line 3565
    iput v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedTop:I

    .line 3568
    iput v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedLeft:I

    .line 3571
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 3573
    :cond_1
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnScrollListener:Lcom/htc/lib1/cc/widget/a;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnScrollListener:Lcom/htc/lib1/cc/widget/a;

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/a;->a(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;III)V

    .line 772
    :cond_0
    return-void
.end method

.method isInBouncing()Z
    .locals 1

    .prologue
    .line 4892
    const/4 v0, 0x0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 4061
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilterEnabled:Z

    return v0
.end method

.method keyPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1929
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1930
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1931
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1934
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1936
    if-eqz v1, :cond_3

    .line 1937
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1960
    :cond_1
    :goto_0
    return-void

    .line 1938
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1940
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 1942
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isLongClickable()Z

    move-result v1

    .line 1943
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1944
    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_4

    .line 1945
    if-eqz v1, :cond_6

    .line 1946
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1952
    :cond_4
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    if-nez v0, :cond_1

    .line 1953
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;

    if-nez v0, :cond_5

    .line 1954
    new-instance v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Lcom/htc/lib1/cc/widget/AbsCrabWalkView$1;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;

    .line 1956
    :cond_5
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 1957
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForKeyLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1949
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 1525
    return-void
.end method

.method obtainView(I)Landroid/view/View;
    .locals 3

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 1693
    if-eqz v1, :cond_2

    .line 1707
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1708
    if-nez v0, :cond_0

    .line 1709
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal getView result, getView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scrapView, this) should not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1716
    :cond_0
    if-eq v0, v1, :cond_1

    .line 1717
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1718
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCacheColorHint:I

    if-eqz v1, :cond_1

    .line 1719
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCacheColorHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 1739
    :cond_1
    :goto_0
    return-object v0

    .line 1727
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1728
    if-nez v0, :cond_3

    .line 1729
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal getView result, getView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scrapView, this) should not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1730
    :cond_3
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCacheColorHint:I

    if-eqz v1, :cond_1

    .line 1731
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCacheColorHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected offsetChildrenLeftAndRight(I)V
    .locals 2

    .prologue
    .line 3246
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3247
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3246
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3249
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 2044
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onAttachedToWindow()V

    .line 2046
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2047
    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2050
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5

    .prologue
    .line 1998
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_1

    .line 2000
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2026
    :cond_0
    :goto_0
    return-object v0

    .line 2006
    :cond_1
    sget-object v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 2011
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2012
    const/4 v2, -0x1

    .line 2013
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 2014
    aget v4, v0, v1

    if-ne v4, v3, :cond_2

    .line 2021
    :goto_2
    if-ltz v1, :cond_0

    .line 2022
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2013
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 4137
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->createTextFilter(Z)V

    .line 4142
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4144
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 2058
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onDetachedFromWindow()V

    .line 2060
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2061
    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2065
    :cond_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1

    .prologue
    .line 4275
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 4276
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    .line 4277
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->resurrectSelection()Z

    .line 4279
    :cond_0
    return-void
.end method

.method onFling(I)V
    .locals 2

    .prologue
    .line 4784
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFlingRunnable:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4785
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getDefaultFlingRunnable()Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFlingRunnable:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;

    .line 4787
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->reportScrollStateChange(I)V

    .line 4788
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFlingRunnable:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;->start(I)V

    .line 4789
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 1207
    invoke-super {p0, p1, p2, p3}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1209
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1210
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->resurrectSelection()Z

    .line 1212
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1213
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 4901
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4902
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4916
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 4904
    :pswitch_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4905
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 4906
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 4907
    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4908
    invoke-virtual {p0, v0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->trackMotionScroll(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4909
    const/4 v0, 0x1

    goto :goto_0

    .line 4902
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 4202
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4204
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4205
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->showPopup()V

    .line 4214
    :cond_0
    :goto_0
    return-void

    .line 4209
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4210
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/high16 v6, -0x80000000

    const/4 v1, 0x0

    .line 2885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 2887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 2890
    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 2951
    :goto_1
    return v0

    .line 2894
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2895
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->findMotionColumn(I)I

    move-result v0

    .line 2901
    :goto_2
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    if-ltz v0, :cond_1

    .line 2904
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2907
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2908
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalLeft:I

    .line 2909
    iput v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionX:I

    .line 2916
    :goto_3
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    .line 2917
    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2918
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->clearScrollingCache()V

    .line 2920
    :cond_1
    iput v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastY:I

    .line 2921
    iput v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastX:I

    goto :goto_0

    .line 2897
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->findMotionRow(I)I

    move-result v0

    goto :goto_2

    .line 2911
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalTop:I

    .line 2912
    iput v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionY:I

    goto :goto_3

    .line 2926
    :pswitch_1
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 2929
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2930
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionX:I

    sub-int v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->startScrollIfNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2934
    :cond_4
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionY:I

    sub-int v2, v4, v2

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->startScrollIfNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2945
    :pswitch_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2946
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 2890
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 2926
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2295
    sparse-switch p1, :sswitch_data_0

    .line 2307
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2298
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2300
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2301
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2302
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2303
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2304
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2295
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 1514
    invoke-super/range {p0 .. p5}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onLayout(ZIIII)V

    .line 1515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mInLayout:Z

    .line 1516
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->layoutChildren()V

    .line 1517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mInLayout:Z

    .line 1518
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1499
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->useDefaultSelector()V

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    .line 1502
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionLeftPadding:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1503
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionTopPadding:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1504
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionRightPadding:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1505
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionBottomPadding:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1506
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1093
    check-cast p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;

    .line 1095
    invoke-virtual {p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1096
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    .line 1099
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    iget v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->width:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncWidth:J

    .line 1105
    :goto_0
    iget-wide v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->selectedId:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    .line 1106
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNeedSync:Z

    .line 1107
    iget v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->position:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncPosition:I

    .line 1110
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1111
    iget v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewLeft:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSpecificLeft:I

    .line 1112
    iget-wide v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->selectedId:J

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncRowId:J

    .line 1119
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncMode:I

    .line 1141
    :cond_0
    :goto_2
    iget-object v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setFilterText(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->requestLayout()V

    .line 1144
    return-void

    .line 1102
    :cond_1
    iget v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->height:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncHeight:J

    goto :goto_0

    .line 1114
    :cond_2
    iget v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewTop:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSpecificTop:I

    .line 1115
    iget-wide v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->selectedId:J

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncColumnId:J

    goto :goto_1

    .line 1120
    :cond_3
    iget-wide v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->firstId:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 1121
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setSelectedPositionInt(I)V

    .line 1123
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setNextSelectedPositionInt(I)V

    .line 1124
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNeedSync:Z

    .line 1126
    iget v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->position:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncPosition:I

    .line 1129
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1130
    iget v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewLeft:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSpecificLeft:I

    .line 1131
    iget-wide v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->firstId:J

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncColumnId:J

    .line 1138
    :goto_3
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncMode:I

    goto :goto_2

    .line 1133
    :cond_4
    iget v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewTop:I

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSpecificTop:I

    .line 1134
    iget-wide v0, p1, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->firstId:J

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSyncRowId:J

    goto :goto_3
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x0

    .line 1024
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->dismissPopup()V

    .line 1026
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1028
    new-instance v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;

    invoke-direct {v2, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1030
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 1031
    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getSelectedItemId()J

    move-result-wide v3

    .line 1032
    iput-wide v3, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->selectedId:J

    .line 1035
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1036
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v5

    iput v5, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->width:I

    .line 1041
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4

    .line 1044
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedLeft:I

    iput v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewLeft:I

    .line 1050
    :goto_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->position:I

    .line 1051
    iput-wide v7, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->firstId:J

    .line 1073
    :goto_3
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->filter:Ljava/lang/String;

    .line 1074
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    .line 1076
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1078
    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->filter:Ljava/lang/String;

    .line 1084
    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    .line 1030
    goto :goto_0

    .line 1038
    :cond_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v5

    iput v5, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->height:I

    goto :goto_1

    .line 1047
    :cond_3
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedTop:I

    iput v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewTop:I

    goto :goto_2

    .line 1053
    :cond_4
    if-eqz v0, :cond_6

    .line 1055
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1058
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1059
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewLeft:I

    .line 1063
    :goto_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    iput v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->position:I

    .line 1064
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->firstId:J

    goto :goto_3

    .line 1061
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewTop:I

    goto :goto_4

    .line 1066
    :cond_6
    iput v1, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewTop:I

    .line 1067
    iput v1, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->viewLeft:I

    .line 1068
    iput-wide v7, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->firstId:J

    .line 1069
    iput v1, v2, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$SavedState;->position:I

    goto :goto_3
.end method

.method onScrollToBoundary()V
    .locals 0

    .prologue
    .line 4801
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 1817
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    .line 1819
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->rememberSyncState()V

    .line 1822
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4236
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4237
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    .line 4238
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    .line 4240
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->showPopup()V

    .line 4241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    .line 4247
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 4248
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 4250
    if-eqz v0, :cond_3

    .line 4251
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 4258
    :cond_1
    return-void

    .line 4242
    :cond_2
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 4244
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    goto :goto_0

    .line 4253
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/high16 v8, -0x80000000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v4, v1

    .line 2520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v5, v1

    .line 2529
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 2530
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2532
    :cond_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2534
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    move v2, v3

    .line 2867
    :cond_2
    :goto_1
    return v2

    .line 2536
    :pswitch_0
    invoke-virtual {p0, v4, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->pointToPosition(II)I

    move-result v1

    .line 2537
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    if-nez v0, :cond_27

    .line 2538
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-eq v0, v7, :cond_5

    if-ltz v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2542
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2544
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 2545
    new-instance v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForTap;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 2547
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v0, v6, v7}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 2573
    :goto_2
    if-ltz v0, :cond_4

    .line 2575
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2578
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2579
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalLeft:I

    .line 2580
    iput v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionX:I

    .line 2581
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFixm:Z

    .line 2588
    :goto_3
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    .line 2590
    :cond_4
    iput v8, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastY:I

    .line 2591
    iput v8, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastX:I

    goto :goto_0

    .line 2549
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_6

    if-ltz v1, :cond_2

    .line 2556
    :cond_6
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-ne v0, v7, :cond_27

    .line 2557
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->createScrollingCache()V

    .line 2558
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2561
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2562
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->findMotionColumn(I)I

    move-result v0

    .line 2568
    :goto_4
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 2564
    :cond_7
    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->findMotionRow(I)I

    move-result v0

    goto :goto_4

    .line 2583
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalTop:I

    .line 2584
    iput v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionY:I

    goto :goto_3

    .line 2596
    :pswitch_1
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionY:I

    sub-int v6, v5, v0

    .line 2599
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionX:I

    sub-int v0, v4, v0

    .line 2602
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 2610
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2611
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->startScrollIfNeeded(I)Z

    goto/16 :goto_0

    .line 2613
    :cond_9
    invoke-virtual {p0, v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->startScrollIfNeeded(I)Z

    goto/16 :goto_0

    .line 2625
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isInBouncing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2628
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2629
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastX:I

    if-eq v4, v1, :cond_1

    .line 2630
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionCorrection:I

    sub-int/2addr v0, v1

    .line 2631
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastX:I

    if-eq v1, v8, :cond_a

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastX:I

    sub-int v0, v4, v0

    .line 2635
    :cond_a
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    if-ltz v1, :cond_d

    .line 2636
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v1, v5

    .line 2644
    :goto_5
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2651
    if-eqz v0, :cond_b

    .line 2652
    invoke-virtual {p0, v6, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->trackMotionScroll(II)Z

    .line 2657
    :cond_b
    if-eqz v1, :cond_c

    .line 2660
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewNewLeft:I

    if-eq v0, v1, :cond_c

    .line 2663
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->findClosestMotionColumn(I)I

    move-result v1

    .line 2665
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionCorrection:I

    .line 2666
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2667
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_6
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalLeft:I

    .line 2668
    iput v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionX:I

    .line 2669
    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    .line 2672
    :cond_c
    iput v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastX:I

    goto/16 :goto_0

    .line 2640
    :cond_d
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_e
    move v0, v2

    .line 2667
    goto :goto_6

    .line 2675
    :cond_f
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastY:I

    if-eq v5, v0, :cond_1

    .line 2676
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionCorrection:I

    sub-int v1, v6, v0

    .line 2677
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastY:I

    if-eq v0, v8, :cond_12

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastY:I

    sub-int v0, v5, v0

    .line 2678
    :goto_7
    if-eqz v0, :cond_10

    .line 2679
    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->trackMotionScrollWithConstrain(II)V

    .line 2683
    :cond_10
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2684
    if-eqz v0, :cond_11

    .line 2687
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewNewTop:I

    if-eq v0, v1, :cond_11

    .line 2690
    invoke-virtual {p0, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->findMotionRow(I)I

    move-result v0

    .line 2692
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionCorrection:I

    .line 2693
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2694
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalTop:I

    .line 2695
    iput v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionY:I

    .line 2696
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    .line 2699
    :cond_11
    iput v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastY:I

    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 2677
    goto :goto_7

    .line 2710
    :pswitch_4
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    packed-switch v0, :pswitch_data_2

    .line 2820
    :goto_8
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->delayActionUpTime:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2824
    :cond_13
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invalidate()V

    .line 2826
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2827
    if-eqz v0, :cond_14

    .line 2828
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2831
    :cond_14
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 2832
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 2714
    :pswitch_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    .line 2715
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2716
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_20

    .line 2717
    iget v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-eqz v4, :cond_15

    .line 2719
    iget-boolean v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->delayActionUpTime:Z

    if-nez v4, :cond_15

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2723
    :cond_15
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPerformClick:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;

    if-nez v4, :cond_16

    .line 2724
    new-instance v4, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;

    invoke-direct {v4, p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;)V

    iput-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPerformClick:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;

    .line 2727
    :cond_16
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPerformClick:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;

    .line 2728
    iput-object v1, v4, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->mChild:Landroid/view/View;

    .line 2729
    iput v0, v4, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->mClickMotionPosition:I

    .line 2730
    invoke-virtual {v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;->rememberWindowAttachCount()V

    .line 2732
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    .line 2736
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->delayIncludeDoneWaiting:Z

    if-eqz v0, :cond_1b

    .line 2737
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-eq v0, v3, :cond_17

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_26

    :cond_17
    move v0, v3

    .line 2746
    :goto_9
    if-eqz v0, :cond_1f

    .line 2747
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 2748
    if-eqz v5, :cond_18

    .line 2749
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_a
    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2752
    :cond_18
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 2753
    iput v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2754
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    if-nez v0, :cond_1a

    .line 2755
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setSelectedPositionInt(I)V

    .line 2756
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->layoutChildren()V

    .line 2757
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2758
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->positionSelector(Landroid/view/View;)V

    .line 2759
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2760
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    .line 2761
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2762
    if-eqz v0, :cond_19

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_19

    .line 2763
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 2767
    :cond_19
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->delayActionUpTime:Z

    if-eqz v0, :cond_1e

    .line 2768
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedView:Landroid/view/View;

    .line 2769
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    :goto_b
    move v2, v3

    .line 2785
    goto/16 :goto_1

    .line 2741
    :cond_1b
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    if-ne v0, v3, :cond_26

    :cond_1c
    move v0, v3

    .line 2742
    goto :goto_9

    .line 2749
    :cond_1d
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    goto :goto_a

    .line 2772
    :cond_1e
    new-instance v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$1;

    invoke-direct {v0, p0, v1, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$1;-><init>(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;Landroid/view/View;Lcom/htc/lib1/cc/widget/AbsCrabWalkView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 2787
    :cond_1f
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    if-nez v0, :cond_20

    .line 2788
    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->post(Ljava/lang/Runnable;)Z

    .line 2792
    :cond_20
    iput v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    goto/16 :goto_8

    .line 2795
    :pswitch_6
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2796
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2800
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2801
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 2807
    :goto_c
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    if-le v1, v4, :cond_23

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_23

    .line 2810
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityListener:Lcom/htc/lib1/cc/widget/d;

    if-eqz v1, :cond_21

    .line 2811
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityListener:Lcom/htc/lib1/cc/widget/d;

    invoke-interface {v1, v0}, Lcom/htc/lib1/cc/widget/d;->a(I)V

    .line 2813
    :cond_21
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onFling(I)V

    goto/16 :goto_8

    .line 2803
    :cond_22
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_c

    .line 2815
    :cond_23
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onUp()V

    goto/16 :goto_8

    .line 2846
    :pswitch_7
    iput v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2847
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2848
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2849
    if-eqz v0, :cond_24

    .line 2850
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2852
    :cond_24
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->clearScrollingCache()V

    .line 2854
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2855
    if-eqz v0, :cond_25

    .line 2856
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2859
    :cond_25
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 2860
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_26
    move v0, v2

    goto/16 :goto_9

    :cond_27
    move v0, v1

    goto/16 :goto_2

    .line 2534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
    .end packed-switch

    .line 2602
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2710
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    .prologue
    .line 2462
    if-eqz p1, :cond_0

    .line 2464
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->hideSelector()V

    .line 2468
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2471
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 2472
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->layoutChildren()V

    .line 2475
    :cond_0
    return-void
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 4779
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 4780
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->reportScrollStateChange(I)V

    .line 4781
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2073
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->onWindowFocusChanged(Z)V

    .line 2075
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2077
    :goto_0
    if-nez p1, :cond_3

    .line 2080
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->delayActionUpTime:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2081
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->resetPressedStatus(Landroid/view/View;)V

    .line 2085
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2086
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFlingRunnable:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2088
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->dismissPopup()V

    .line 2090
    if-ne v0, v2, :cond_1

    .line 2092
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    .line 2116
    :cond_1
    :goto_1
    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastTouchMode:I

    .line 2117
    return-void

    :cond_2
    move v0, v2

    .line 2075
    goto :goto_0

    .line 2095
    :cond_3
    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    if-eqz v3, :cond_4

    .line 2097
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->showPopup()V

    .line 2101
    :cond_4
    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastTouchMode:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 2103
    if-ne v0, v2, :cond_5

    .line 2105
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->resurrectSelection()Z

    goto :goto_1

    .line 2109
    :cond_5
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->hideSelector()V

    .line 2110
    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 2111
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 4

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2334
    if-nez v0, :cond_0

    .line 2335
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2336
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2339
    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v1

    .line 2340
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2341
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2342
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2343
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2344
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2345
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v1

    .line 2349
    :goto_1
    return v0

    .line 2340
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2349
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1743
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->unPressedUnSelectChildren(Landroid/view/View;)V

    .line 1744
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    .line 1745
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1746
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->positionSelector(IIII)V

    .line 1749
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mIsChildViewEnabled:Z

    .line 1750
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1751
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mIsChildViewEnabled:Z

    .line 1752
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->refreshDrawableState()V

    .line 1754
    :cond_0
    return-void

    .line 1751
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 3581
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedPosition:I

    .line 3582
    if-gez v0, :cond_0

    .line 3583
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    .line 3585
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3586
    iget v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3587
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1

    .prologue
    .line 2988
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastScrollState:I

    if-eq p1, v0, :cond_1

    .line 2989
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnScrollListener:Lcom/htc/lib1/cc/widget/a;

    if-eqz v0, :cond_0

    .line 2990
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnScrollListener:Lcom/htc/lib1/cc/widget/a;

    invoke-interface {v0, p0, p1}, Lcom/htc/lib1/cc/widget/a;->a(Lcom/htc/lib1/cc/widget/AbsCrabWalkView;I)V

    .line 2992
    :cond_0
    iput p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLastScrollState:I

    .line 2993
    packed-switch p1, :pswitch_data_0

    .line 3001
    :cond_1
    :pswitch_0
    return-void

    .line 2993
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1221
    invoke-super {p0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->requestLayout()V

    .line 1223
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->resetList()V

    .line 924
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->requestLayout()V

    .line 925
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invalidate()V

    .line 927
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1229
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeAllViewsInLayout()V

    .line 1230
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    .line 1231
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataChanged:Z

    .line 1232
    iput-boolean v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mNeedSync:Z

    .line 1233
    iput v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOldSelectedPosition:I

    .line 1234
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOldSelectedRowId:J

    .line 1235
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setSelectedPositionInt(I)V

    .line 1236
    invoke-virtual {p0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setNextSelectedPositionInt(I)V

    .line 1237
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectedTop:I

    .line 1238
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1239
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invalidate()V

    .line 1240
    return-void
.end method

.method public resetPressedStatus(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2502
    if-eqz p1, :cond_0

    .line 2503
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2504
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2505
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2507
    :cond_0
    return-void
.end method

.method resurrectSelection()Z
    .locals 15

    .prologue
    .line 3635
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v10

    .line 3637
    if-gtz v10, :cond_0

    .line 3638
    const/4 v0, 0x0

    .line 3814
    :goto_0
    return v0

    .line 3641
    :cond_0
    const/4 v5, 0x0

    .line 3644
    const/4 v4, 0x0

    .line 3646
    const/4 v3, 0x0

    .line 3647
    const/4 v2, 0x0

    .line 3648
    const/4 v1, 0x0

    .line 3649
    const/4 v0, 0x0

    .line 3651
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3652
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getLeftBorderWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 3653
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getLeft()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getRightBorderWidth()I

    move-result v6

    sub-int/2addr v0, v6

    .line 3660
    :goto_1
    iget v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    .line 3661
    iget v8, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    .line 3662
    const/4 v7, 0x1

    .line 3664
    if-lt v8, v6, :cond_6

    add-int v9, v6, v10

    if-ge v8, v9, :cond_6

    .line 3667
    iget v9, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int v9, v8, v9

    invoke-virtual {p0, v9}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3670
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3671
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 3672
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v3

    .line 3675
    if-ge v2, v1, :cond_3

    .line 3676
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    move v1, v5

    :goto_3
    move v2, v0

    move v3, v1

    move v0, v7

    move v1, v8

    .line 3788
    :goto_4
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mResurrectToPosition:I

    .line 3789
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFlingRunnable:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$FlingRunnable;

    invoke-virtual {p0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3790
    iget v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 3793
    :cond_1
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 3794
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->clearScrollingCache()V

    .line 3797
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3798
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSpecificLeft:I

    .line 3802
    :goto_5
    invoke-virtual {p0, v1, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 3803
    if-lt v0, v6, :cond_15

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_15

    .line 3804
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 3805
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setSelectionInt(I)V

    .line 3806
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invokeOnItemScrollListener()V

    .line 3812
    :goto_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->reportScrollStateChange(I)V

    .line 3814
    if-ltz v0, :cond_16

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3655
    :cond_2
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getTopBorderHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 3656
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getTop()I

    move-result v6

    sub-int/2addr v2, v6

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getBottomBorderHeight()I

    move-result v6

    sub-int/2addr v2, v6

    goto/16 :goto_1

    .line 3677
    :cond_3
    if-le v3, v0, :cond_1e

    .line 3678
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    .line 3682
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    .line 3683
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 3686
    if-ge v0, v3, :cond_5

    .line 3687
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v3

    move v1, v0

    move v0, v4

    goto :goto_3

    .line 3688
    :cond_5
    if-le v1, v2, :cond_1d

    .line 3689
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v0

    move v0, v4

    goto/16 :goto_3

    .line 3695
    :cond_6
    if-ge v8, v6, :cond_d

    .line 3698
    const/4 v0, 0x0

    move v8, v0

    move v2, v4

    move v0, v1

    move v1, v3

    move v3, v5

    :goto_7
    if-ge v8, v10, :cond_1c

    .line 3699
    invoke-virtual {p0, v8}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3700
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    .line 3703
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 3705
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3706
    if-nez v8, :cond_8

    .line 3710
    if-gtz v6, :cond_7

    if-ge v4, v0, :cond_1b

    .line 3713
    :cond_7
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v2

    add-int/2addr v0, v2

    move v2, v4

    .line 3716
    :cond_8
    :goto_8
    if-lt v4, v0, :cond_c

    .line 3718
    add-int v0, v6, v8

    move v2, v4

    :goto_9
    move v1, v0

    move v0, v7

    .line 3698
    goto/16 :goto_4

    .line 3723
    :cond_9
    if-nez v8, :cond_b

    .line 3727
    if-gtz v6, :cond_a

    if-ge v5, v1, :cond_1a

    .line 3730
    :cond_a
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v3

    add-int/2addr v1, v3

    move v3, v5

    .line 3733
    :cond_b
    :goto_a
    if-lt v5, v1, :cond_c

    .line 3735
    add-int v0, v6, v8

    move v3, v5

    .line 3737
    goto :goto_9

    .line 3698
    :cond_c
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_7

    .line 3743
    :cond_d
    iget v11, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    .line 3744
    const/4 v7, 0x0

    .line 3745
    add-int v1, v6, v10

    add-int/lit8 v8, v1, -0x1

    .line 3747
    add-int/lit8 v1, v10, -0x1

    move v9, v1

    move v3, v5

    move v1, v2

    move v2, v4

    :goto_b
    if-ltz v9, :cond_19

    .line 3748
    invoke-virtual {p0, v9}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3751
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v5

    .line 3752
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 3753
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 3754
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    .line 3756
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 3757
    add-int/lit8 v5, v10, -0x1

    if-ne v9, v5, :cond_f

    .line 3759
    add-int v2, v6, v10

    if-lt v2, v11, :cond_e

    if-le v12, v0, :cond_18

    .line 3760
    :cond_e
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHorizontalFadingEdgeLength()I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v4

    .line 3764
    :cond_f
    :goto_c
    if-gt v12, v0, :cond_13

    .line 3765
    add-int v0, v6, v9

    move v1, v0

    move v2, v4

    move v0, v7

    .line 3767
    goto/16 :goto_4

    .line 3770
    :cond_10
    add-int/lit8 v4, v10, -0x1

    if-ne v9, v4, :cond_12

    .line 3772
    add-int v3, v6, v10

    if-lt v3, v11, :cond_11

    if-le v13, v1, :cond_17

    .line 3773
    :cond_11
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getVerticalFadingEdgeLength()I

    move-result v3

    sub-int/2addr v1, v3

    move v3, v5

    .line 3777
    :cond_12
    :goto_d
    if-gt v13, v1, :cond_13

    .line 3778
    add-int v0, v6, v9

    move v1, v0

    move v3, v5

    move v0, v7

    .line 3780
    goto/16 :goto_4

    .line 3747
    :cond_13
    add-int/lit8 v4, v9, -0x1

    move v9, v4

    goto :goto_b

    .line 3800
    :cond_14
    iput v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSpecificTop:I

    goto/16 :goto_5

    .line 3808
    :cond_15
    const/4 v0, -0x1

    .line 3809
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mLayoutMode:I

    .line 3810
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->layoutChildren()V

    goto/16 :goto_6

    .line 3814
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_17
    move v3, v5

    goto :goto_d

    :cond_18
    move v2, v4

    goto :goto_c

    :cond_19
    move v0, v7

    move v1, v8

    goto/16 :goto_4

    :cond_1a
    move v3, v5

    goto/16 :goto_a

    :cond_1b
    move v2, v4

    goto/16 :goto_8

    :cond_1c
    move v0, v6

    goto/16 :goto_9

    :cond_1d
    move v1, v0

    move v0, v4

    goto/16 :goto_3

    :cond_1e
    move v0, v2

    goto/16 :goto_2
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4073
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->acceptFilter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4125
    :goto_0
    return v2

    .line 4079
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    move v3, v2

    .line 4102
    :goto_1
    if-eqz v0, :cond_1

    .line 4103
    invoke-direct {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->createTextFilter(Z)V

    .line 4106
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 4107
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v0, p3, v4, v5, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    .line 4110
    :goto_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 4111
    packed-switch v1, :pswitch_data_0

    :cond_1
    move v0, v3

    :goto_3
    move v2, v0

    .line 4125
    goto :goto_0

    :sswitch_0
    move v0, v2

    move v3, v2

    .line 4087
    goto :goto_1

    .line 4089
    :sswitch_1
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 4092
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    :goto_4
    move v3, v0

    move v0, v2

    .line 4095
    goto :goto_1

    .line 4098
    :sswitch_2
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    move v0, v1

    move v3, v2

    goto :goto_1

    .line 4113
    :pswitch_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    .line 4117
    :pswitch_1
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    .line 4121
    :pswitch_2
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3

    :cond_2
    move-object v0, p3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_4

    .line 4079
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

    .line 4111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCacheColorHint(I)V
    .locals 0

    .prologue
    .line 4356
    iput p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mCacheColorHint:I

    .line 4357
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .prologue
    .line 1800
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->setClipToPadding(Z)V

    .line 1801
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mIsClipToPadding:Z

    .line 1802
    return-void
.end method

.method public setDelayActionUpTime(Z)V
    .locals 0

    .prologue
    .line 2484
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->delayActionUpTime:Z

    .line 2485
    return-void
.end method

.method public setDelayIncludeDoneWaiting(Z)V
    .locals 0

    .prologue
    .line 2493
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->delayIncludeDoneWaiting:Z

    .line 2494
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .prologue
    .line 1872
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDrawSelectorOnTop:Z

    .line 1873
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2

    .prologue
    .line 678
    if-eqz p1, :cond_0

    .line 679
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You should NOT setFastScrollEnabled to TRUE since there is NO horizontal fast scroller design in Sense5.0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1169
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->createTextFilter(Z)V

    .line 1173
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1175
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1179
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1183
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFiltered:Z

    .line 1184
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mDataSetObserver:Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/HtcAdapterView2$AdapterDataSetObserver;->clearSavedState()V

    .line 1187
    :cond_1
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/lib1/cc/widget/a;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnScrollListener:Lcom/htc/lib1/cc/widget/a;

    .line 762
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invokeOnItemScrollListener()V

    .line 763
    return-void
.end method

.method public setRecyclerListener(Lcom/htc/lib1/cc/widget/b;)V
    .locals 1

    .prologue
    .line 4421
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    # setter for: Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/widget/b;
    invoke-static {v0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->access$702(Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;Lcom/htc/lib1/cc/widget/b;)Lcom/htc/lib1/cc/widget/b;

    .line 4422
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->clearScrollingCache()V

    .line 813
    :cond_0
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollingCacheEnabled:Z

    .line 814
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1888
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1895
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1897
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1899
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1900
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1901
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1902
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionLeftPadding:I

    .line 1903
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionTopPadding:I

    .line 1904
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionRightPadding:I

    .line 1905
    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelectionBottomPadding:I

    .line 1906
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1907
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1908
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    .prologue
    .line 736
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSmoothScrollbarEnabled:Z

    .line 737
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 916
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mStackFromBottom:Z

    .line 917
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->requestLayoutIfNecessary()V

    .line 919
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    .prologue
    .line 831
    iput-boolean p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTextFilterEnabled:Z

    .line 832
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    .prologue
    .line 4323
    iput p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTranscriptMode:I

    .line 4324
    return-void
.end method

.method public setVelocityListener(Lcom/htc/lib1/cc/widget/d;)V
    .locals 0

    .prologue
    .line 4870
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mVelocityListener:Lcom/htc/lib1/cc/widget/d;

    .line 4871
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1847
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->touchModeDrawsInPressedState()Z

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

    .line 2268
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2269
    if-ltz v3, :cond_1

    .line 2270
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2273
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/widget/q;

    if-eqz v1, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mOnItemLongClickListener:Lcom/htc/lib1/cc/widget/q;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/q;->a(Lcom/htc/lib1/cc/widget/HtcAdapterView2;Landroid/view/View;IJ)Z

    move-result v0

    .line 2277
    :cond_0
    if-nez v0, :cond_1

    .line 2278
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2281
    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2286
    :cond_1
    return v0
.end method

.method protected startScrollIfNeeded(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2430
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2431
    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 2432
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->createScrollingCache()V

    .line 2433
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    .line 2434
    iput p1, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionCorrection:I

    .line 2435
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 2439
    if-eqz v2, :cond_0

    .line 2440
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mPendingCheckForLongPress:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$CheckForLongPress;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2442
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->setPressed(Z)V

    .line 2443
    iget v2, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionPosition:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2444
    if-eqz v2, :cond_1

    .line 2445
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2447
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->reportScrollStateChange(I)V

    .line 2450
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->requestDisallowInterceptTouchEvent(Z)V

    .line 2454
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1830
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1835
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1833
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 16

    .prologue
    .line 3262
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v8

    .line 3263
    if-nez v8, :cond_0

    .line 3264
    const/4 v1, 0x1

    .line 3524
    :goto_0
    return v1

    .line 3267
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    .line 3268
    add-int/lit8 v1, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 3271
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 3272
    add-int/lit8 v1, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v12

    .line 3275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    .line 3285
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3286
    iget v1, v13, Landroid/graphics/Rect;->left:I

    sub-int v3, v1, v11

    .line 3287
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v1

    iget v2, v13, Landroid/graphics/Rect;->right:I

    sub-int v2, v1, v2

    .line 3288
    sub-int v1, v12, v2

    .line 3289
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 3291
    if-gez p1, :cond_2

    .line 3292
    add-int/lit8 v5, v4, -0x1

    neg-int v5, v5

    move/from16 v0, p1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3297
    :goto_1
    if-gez p2, :cond_3

    .line 3298
    add-int/lit8 v4, v4, -0x1

    neg-int v4, v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3324
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    if-nez v6, :cond_7

    iget v6, v13, Landroid/graphics/Rect;->left:I

    if-lt v11, v6, :cond_7

    if-ltz v4, :cond_7

    const/4 v6, 0x1

    .line 3327
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v7

    if-eqz v7, :cond_b

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-ne v7, v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v7

    iget v14, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v14

    if-gt v12, v7, :cond_a

    if-gtz v4, :cond_a

    const/4 v7, 0x1

    .line 3331
    :goto_4
    if-nez v6, :cond_1

    if-eqz v7, :cond_e

    .line 3332
    :cond_1
    if-eqz v4, :cond_d

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3294
    :cond_2
    add-int/lit8 v5, v4, -0x1

    move/from16 v0, p1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 3300
    :cond_3
    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 3304
    :cond_4
    iget v1, v13, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v9

    .line 3305
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v1

    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    .line 3306
    sub-int v1, v10, v2

    .line 3307
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 3309
    if-gez p1, :cond_5

    .line 3310
    add-int/lit8 v5, v4, -0x1

    neg-int v5, v5

    move/from16 v0, p1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3315
    :goto_5
    if-gez p2, :cond_6

    .line 3316
    add-int/lit8 v4, v4, -0x1

    neg-int v4, v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 3312
    :cond_5
    add-int/lit8 v5, v4, -0x1

    move/from16 v0, p1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_5

    .line 3318
    :cond_6
    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_2

    .line 3324
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    if-nez v6, :cond_9

    iget v6, v13, Landroid/graphics/Rect;->top:I

    if-lt v9, v6, :cond_9

    if-ltz v4, :cond_9

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 3327
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-ne v7, v14, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v7

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v14

    if-gt v10, v7, :cond_c

    if-gtz v4, :cond_c

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 3332
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3335
    :cond_e
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 3337
    if-lt v3, v6, :cond_10

    if-lt v1, v6, :cond_10

    .line 3338
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->hideSelector()V

    .line 3341
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3342
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 3343
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invalidate()V

    .line 3344
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalLeft:I

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewNewLeft:I

    .line 3524
    :goto_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3347
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invalidate()V

    .line 3348
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalTop:I

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewNewTop:I

    goto :goto_6

    .line 3352
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    .line 3355
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3357
    if-nez v14, :cond_11

    iget v1, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getLeftBoundary()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getLeftBorderWidth()I

    move-result v3

    add-int/2addr v1, v3

    if-le v11, v1, :cond_11

    if-lez v5, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->enableStopScrollNow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3359
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onScrollToBoundary()V

    .line 3360
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3363
    :cond_11
    add-int v1, v14, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-ne v1, v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getRightBoundary()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getRightBorderWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v12, v1, :cond_14

    if-gez v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->enableStopScrollNow()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3365
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onScrollToBoundary()V

    .line 3366
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3370
    :cond_12
    if-nez v14, :cond_13

    iget v1, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getTopBoundary()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getTopBorderHeight()I

    move-result v3

    add-int/2addr v1, v3

    if-le v9, v1, :cond_13

    if-lez v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->enableStopScrollNow()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3372
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onScrollToBoundary()V

    .line 3373
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3376
    :cond_13
    add-int v1, v14, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-ne v1, v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getBottomBoundary()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getBottomBorderHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v10, v1, :cond_14

    if-gez v5, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->enableStopScrollNow()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3378
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->onScrollToBoundary()V

    .line 3379
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3383
    :cond_14
    if-gez v4, :cond_18

    const/4 v1, 0x1

    .line 3385
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->hideSelector()V

    .line 3387
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeaderViewsCount()I

    move-result v9

    .line 3388
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getFooterViewsCount()I

    move-result v3

    sub-int v10, v2, v3

    .line 3390
    const/4 v3, 0x0

    .line 3391
    const/4 v2, 0x0

    .line 3396
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 3397
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildrenTotalWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_15

    .line 3398
    if-eqz v1, :cond_1b

    .line 3399
    iget v6, v13, Landroid/graphics/Rect;->left:I

    sub-int v12, v6, v4

    .line 3400
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v8, :cond_15

    .line 3401
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3402
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v7

    if-lt v7, v12, :cond_19

    .line 3441
    :cond_15
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalLeft:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewNewLeft:I

    .line 3492
    :goto_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mBlockLayoutRequests:Z

    .line 3493
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->detachViewsFromParent(II)V

    .line 3496
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3497
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFixm:Z

    if-eqz v3, :cond_23

    .line 3498
    neg-int v3, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 3513
    :cond_16
    :goto_a
    if-eqz v1, :cond_17

    .line 3514
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    .line 3517
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invalidate()V

    .line 3518
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->fillGap(Z)V

    .line 3519
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mBlockLayoutRequests:Z

    .line 3520
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->awakenScrollBars()Z

    .line 3522
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->invokeOnItemScrollListener()V

    goto/16 :goto_6

    .line 3383
    :cond_18
    const/4 v1, 0x0

    goto :goto_7

    .line 3405
    :cond_19
    add-int/lit8 v7, v2, 0x1

    .line 3406
    add-int v2, v14, v6

    .line 3407
    if-lt v2, v9, :cond_1a

    if-ge v2, v10, :cond_1a

    .line 3408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v2, v13}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3400
    :cond_1a
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v7

    goto :goto_8

    .line 3419
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getWidth()I

    move-result v6

    iget v7, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int v7, v6, v4

    .line 3420
    add-int/lit8 v6, v8, -0x1

    :goto_b
    if-ltz v6, :cond_15

    .line 3421
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3422
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    if-le v12, v7, :cond_15

    .line 3426
    add-int/lit8 v3, v2, 0x1

    .line 3427
    add-int v2, v14, v6

    .line 3428
    if-lt v2, v9, :cond_1c

    if-ge v2, v10, :cond_1c

    .line 3429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v2, v8}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3420
    :cond_1c
    add-int/lit8 v2, v6, -0x1

    move v15, v2

    move v2, v3

    move v3, v6

    move v6, v15

    goto :goto_b

    .line 3443
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildrenTotalHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_1e

    .line 3444
    if-eqz v1, :cond_21

    .line 3445
    iget v6, v13, Landroid/graphics/Rect;->top:I

    sub-int v12, v6, v4

    .line 3446
    const/4 v6, 0x0

    :goto_c
    if-ge v6, v8, :cond_1e

    .line 3447
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3448
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v7

    if-lt v7, v12, :cond_1f

    .line 3487
    :cond_1e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewOriginalTop:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mMotionViewNewTop:I

    goto/16 :goto_9

    .line 3451
    :cond_1f
    add-int/lit8 v7, v2, 0x1

    .line 3452
    add-int v2, v14, v6

    .line 3453
    if-lt v2, v9, :cond_20

    if-ge v2, v10, :cond_20

    .line 3454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v2, v13}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3446
    :cond_20
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v7

    goto :goto_c

    .line 3465
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getHeight()I

    move-result v6

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int v7, v6, v4

    .line 3466
    add-int/lit8 v6, v8, -0x1

    :goto_d
    if-ltz v6, :cond_1e

    .line 3467
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3468
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    if-le v12, v7, :cond_1e

    .line 3472
    add-int/lit8 v3, v2, 0x1

    .line 3473
    add-int v2, v14, v6

    .line 3474
    if-lt v2, v9, :cond_22

    if-ge v2, v10, :cond_22

    .line 3475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mRecycler:Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;

    invoke-virtual {v2, v8}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 3466
    :cond_22
    add-int/lit8 v2, v6, -0x1

    move v15, v2

    move v2, v3

    move v3, v6

    move v6, v15

    goto :goto_d

    .line 3499
    :cond_23
    if-gez v11, :cond_24

    if-lez v4, :cond_24

    add-int v3, v4, v11

    if-lez v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getCount()I

    move-result v3

    if-lez v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v5

    if-ne v3, v5, :cond_24

    .line 3500
    neg-int v3, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->offsetChildrenLeftAndRight(I)V

    .line 3501
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFixm:Z

    goto/16 :goto_a

    .line 3503
    :cond_24
    if-lez v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getCount()I

    move-result v3

    if-lez v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v5

    if-ne v3, v5, :cond_25

    add-int v3, v4, v11

    if-lez v3, :cond_25

    .line 3504
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->offsetChildrenLeftAndRight(I)V

    goto/16 :goto_a

    .line 3506
    :cond_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->offsetChildrenLeftAndRight(I)V

    goto/16 :goto_a
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 0

    .prologue
    .line 4775
    invoke-virtual {p0, p1, p2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->trackMotionScroll(II)Z

    .line 4776
    return-void
.end method

.method unPressedUnSelectChildren(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4822
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4823
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4824
    if-eq v2, p1, :cond_0

    .line 4825
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4822
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4828
    :cond_1
    return-void
.end method

.method updateScrollIndicators()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1530
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1532
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1535
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    if-lez v0, :cond_3

    move v0, v1

    .line 1538
    :goto_0
    if-nez v0, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1540
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1541
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getLeftBorderWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_4

    move v0, v1

    .line 1545
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollRight:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1550
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v4

    .line 1553
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v4

    iget v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-ge v0, v5, :cond_6

    move v0, v1

    .line 1556
    :goto_3
    if-nez v0, :cond_13

    if-lez v4, :cond_13

    .line 1557
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1558
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getRightBorderWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_7

    .line 1561
    :goto_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    :cond_2
    :goto_6
    return-void

    :cond_3
    move v0, v2

    .line 1535
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1541
    goto :goto_1

    :cond_5
    move v0, v3

    .line 1545
    goto :goto_2

    :cond_6
    move v0, v2

    .line 1553
    goto :goto_3

    :cond_7
    move v1, v2

    .line 1558
    goto :goto_4

    :cond_8
    move v2, v3

    .line 1561
    goto :goto_5

    .line 1565
    :cond_9
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1568
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    if-lez v0, :cond_c

    move v0, v1

    .line 1571
    :goto_7
    if-nez v0, :cond_a

    .line 1572
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_a

    .line 1573
    invoke-virtual {p0, v2}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1574
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getTopBorderHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_d

    move v0, v1

    .line 1578
    :cond_a
    :goto_8
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_e

    move v0, v2

    :goto_9
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1581
    :cond_b
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1583
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildCount()I

    move-result v4

    .line 1586
    iget v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mFirstPosition:I

    add-int/2addr v0, v4

    iget v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mItemCount:I

    if-ge v0, v5, :cond_f

    move v0, v1

    .line 1589
    :goto_a
    if-nez v0, :cond_12

    if-lez v4, :cond_12

    .line 1590
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1591
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_10

    .line 1594
    :goto_b
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mScrollDown:Landroid/view/View;

    if-eqz v1, :cond_11

    :goto_c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    move v0, v2

    .line 1568
    goto :goto_7

    :cond_d
    move v0, v2

    .line 1574
    goto :goto_8

    :cond_e
    move v0, v3

    .line 1578
    goto :goto_9

    :cond_f
    move v0, v2

    .line 1586
    goto :goto_a

    :cond_10
    move v1, v2

    .line 1591
    goto :goto_b

    :cond_11
    move v2, v3

    .line 1594
    goto :goto_c

    :cond_12
    move v1, v0

    goto :goto_b

    :cond_13
    move v1, v0

    goto/16 :goto_4
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/AbsCrabWalkView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/htc/lib1/cc/widget/HtcAdapterView2;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
