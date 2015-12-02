.class public Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private constructThreadHash:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mCustomizedTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/ap;",
            ">;"
        }
    .end annotation
.end field

.field private mForceIgnoreOutsideTouch:Z

.field private mFrameworkMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/ap;",
            ">;"
        }
    .end annotation
.end field

.field private final mHideSelector:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;

.field private mIsWidthHeightFixed:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemCount:I

.field private mItemHeight:I

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 252
    const/4 v0, 0x0

    sget v1, Lcom/htc/lib1/cc/b;->listPopupBubbleWindowStyle:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 114
    iput v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemHeight:I

    .line 115
    iput v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemCount:I

    .line 116
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mIsWidthHeightFixed:Z

    .line 119
    iput v3, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    .line 120
    iput v3, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 124
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    .line 125
    iput-boolean v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    .line 126
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mListItemExpandMaximum:I

    .line 129
    iput v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    .line 142
    new-instance v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-direct {v0, p0, v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    .line 143
    new-instance v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    .line 145
    new-instance v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;

    .line 146
    new-instance v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;

    invoke-direct {v0, p0, v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    .line 309
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 310
    new-instance v0, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    .line 311
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    .line 314
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    .line 315
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Landroid/widget/ListAdapter;)I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/PopupBubbleWindow;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemCount:I

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mCustomizedTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->constructThreadHash:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mIsWidthHeightFixed:Z

    return v0
.end method

.method private buildDropDown()I
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1670
    .line 1672
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    if-nez v0, :cond_b

    .line 1673
    iget-object v7, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mContext:Landroid/content/Context;

    .line 1683
    new-instance v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;

    invoke-direct {v0, p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1693
    new-instance v4, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mModal:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    invoke-direct {v4, v7, v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1694
    sget-boolean v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1695
    const-string v0, "ListPopupBubbleWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " new list:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1701
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v0

    :goto_1
    move v6, v1

    .line 1702
    :goto_2
    if-ge v6, v4, :cond_4

    .line 1703
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/ap;

    .line 1704
    iget-object v8, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v9, v0, Lcom/htc/lib1/cc/widget/ap;->a:Landroid/view/View;

    iget-object v10, v0, Lcom/htc/lib1/cc/widget/ap;->b:Ljava/lang/Object;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/widget/ap;->c:Z

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1702
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_2
    move v0, v1

    .line 1693
    goto :goto_0

    :cond_3
    move v4, v1

    .line 1701
    goto :goto_1

    .line 1707
    :cond_4
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v0

    :goto_3
    move v6, v1

    .line 1708
    :goto_4
    if-ge v6, v4, :cond_6

    .line 1709
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/ap;

    .line 1710
    iget-object v8, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v9, v0, Lcom/htc/lib1/cc/widget/ap;->a:Landroid/view/View;

    iget-object v10, v0, Lcom/htc/lib1/cc/widget/ap;->b:Ljava/lang/Object;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/widget/ap;->c:Z

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1708
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    :cond_5
    move v4, v1

    .line 1707
    goto :goto_3

    .line 1713
    :cond_6
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1714
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1715
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1716
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1717
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setFocusable(Z)V

    .line 1718
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1719
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v2, v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->enableAnimation(IZ)V

    .line 1720
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    new-instance v4, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$2;

    invoke-direct {v4, p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$2;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;)V

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1735
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mScrollListener:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupScrollListener;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1737
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_7

    .line 1738
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1741
    :cond_7
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1743
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .line 1744
    if-eqz v6, :cond_17

    .line 1747
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1748
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1750
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1752
    iget v8, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    packed-switch v8, :pswitch_data_0

    .line 1764
    const-string v0, "ListPopupBubbleWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid hint position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPromptPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :goto_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    const/high16 v7, -0x80000000

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1772
    invoke-virtual {v6, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1774
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1775
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v6

    .line 1780
    :goto_6
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v6, :cond_8

    .line 1781
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v6, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    :cond_8
    move v6, v0

    .line 1792
    :goto_7
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_d

    move v0, v2

    .line 1793
    :goto_8
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    iget v8, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v4, v7, v8, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    move v4, v0

    .line 1798
    :goto_9
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1799
    :cond_9
    if-eqz v5, :cond_15

    .line 1800
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1801
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    move v7, v0

    .line 1804
    :goto_a
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_10

    .line 1805
    :cond_a
    add-int v0, v4, v7

    .line 1816
    :goto_b
    return v0

    .line 1754
    :pswitch_0
    invoke-virtual {v4, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1755
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 1759
    :pswitch_1
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1760
    invoke-virtual {v4, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 1783
    :cond_b
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 1784
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    .line 1785
    if-eqz v4, :cond_16

    .line 1786
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1787
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    move v6, v0

    goto :goto_7

    :cond_c
    move-object v0, v5

    .line 1783
    goto :goto_c

    :cond_d
    move v0, v1

    .line 1792
    goto :goto_8

    :cond_e
    move v0, v1

    goto :goto_8

    :cond_f
    move v4, v1

    .line 1793
    goto :goto_9

    .line 1808
    :cond_10
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mIsWidthHeightFixed:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemCount:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemHeight:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemHeight:I

    iget v5, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemCount:I

    mul-int/2addr v0, v5

    sub-int v5, v4, v6

    if-ge v0, v5, :cond_13

    .line 1809
    :cond_11
    :goto_d
    if-eqz v2, :cond_14

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    sub-int/2addr v4, v6

    move v2, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v0

    .line 1813
    :goto_e
    if-lez v0, :cond_12

    .line 1814
    add-int/2addr v6, v7

    .line 1816
    :cond_12
    add-int/2addr v0, v6

    goto :goto_b

    :cond_13
    move v2, v1

    .line 1808
    goto :goto_d

    .line 1809
    :cond_14
    sub-int v0, v4, v6

    goto :goto_e

    :cond_15
    move v7, v1

    goto :goto_a

    :cond_16
    move v6, v1

    goto/16 :goto_7

    :cond_17
    move-object v4, v0

    move v0, v1

    goto/16 :goto_6

    .line 1752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 2148
    .line 2151
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2152
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2153
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    move v2, v0

    move v1, v0

    move v3, v0

    .line 2154
    :goto_0
    if-ge v2, v6, :cond_0

    .line 2155
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 2156
    if-eq v0, v1, :cond_1

    .line 2160
    :goto_1
    invoke-interface {p1, v2, v7, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2161
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 2162
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2154
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 2164
    :cond_0
    return v3

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private removePromptView()V
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1209
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1210
    check-cast v0, Landroid/view/ViewGroup;

    .line 1211
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1214
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1292
    if-eqz v0, :cond_0

    .line 1294
    const/4 v1, 0x1

    # setter for: Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->access$502(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;Z)Z

    .line 1297
    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->requestLayout()V

    .line 1299
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1099
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismiss()V

    .line 1101
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->removePromptView()V

    .line 1102
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 1106
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1108
    :cond_2
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1109
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1110
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1116
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->dismissWithoutAnimation()V

    .line 1118
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->removePromptView()V

    .line 1119
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 1123
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1125
    :cond_2
    iput-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    .line 1126
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mResizePopupRunnable:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1128
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1326
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v1, :cond_0

    .line 1327
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1329
    :cond_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    .line 1312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2261
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mFrameworkMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 2262
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mFrameworkMenuItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2264
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 329
    new-instance v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupDataSetObserver;-><init>(Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$1;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 334
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 335
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 337
    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "register data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 343
    if-nez p1, :cond_2

    .line 344
    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "unregister list data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_2
    return-void

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 332
    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "unregister data set observer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 627
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setCustomizedContentWidth(I)V

    .line 736
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->checkContentWidthLimit(I)I

    move-result v0

    .line 737
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 738
    if-eqz v1, :cond_0

    .line 739
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 740
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 743
    :cond_0
    return-void
.end method

.method public setExpandDirection(I)V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setExpandDirection(I)V

    .line 1186
    :cond_0
    return-void
.end method

.method public setModal(Z)V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mModal:Z

    .line 415
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setFocusable(Z)V

    .line 417
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 801
    return-void
.end method

.method public setWidth(I)V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_0

    .line 719
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 720
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setCustomizedContentWidth(I)V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->checkWidthLimit(I)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    .line 724
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1009
    sget-boolean v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1010
    const-string v0, "ListPopupBubbleWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " show:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_0
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->buildDropDown()I

    move-result v5

    .line 1016
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->isInputMethodNotNeeded()Z

    move-result v6

    .line 1017
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-nez v0, :cond_2

    .line 1093
    :cond_1
    :goto_0
    return-void

    .line 1019
    :cond_2
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    if-nez v6, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setAllowScrollingAnchorParent(Z)V

    .line 1021
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1022
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_5

    move v4, v3

    .line 1032
    :goto_2
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_b

    .line 1035
    if-eqz v6, :cond_7

    .line 1036
    :goto_3
    if-eqz v6, :cond_9

    .line 1037
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget v6, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v6, v3, :cond_8

    :goto_4
    invoke-virtual {v0, v3, v2}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 1047
    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_c

    :goto_6
    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 1049
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->update(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1019
    goto :goto_1

    .line 1026
    :cond_5
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v7, :cond_6

    .line 1027
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_2

    .line 1029
    :cond_6
    iget v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    goto :goto_2

    :cond_7
    move v5, v3

    .line 1035
    goto :goto_3

    :cond_8
    move v3, v2

    .line 1037
    goto :goto_4

    .line 1039
    :cond_9
    iget-object v6, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_a

    move v0, v3

    :goto_7
    invoke-virtual {v6, v0, v3}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_7

    .line 1041
    :cond_b
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-eq v0, v7, :cond_3

    .line 1044
    iget v5, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    goto :goto_5

    :cond_c
    move v1, v2

    .line 1047
    goto :goto_6

    .line 1051
    :cond_d
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_11

    move v0, v3

    .line 1061
    :goto_8
    iget v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v4, v3, :cond_13

    move v4, v3

    .line 1071
    :goto_9
    iget-object v5, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v5, v0, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    .line 1072
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    .line 1076
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-boolean v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v4, :cond_15

    iget-boolean v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_15

    :goto_a
    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    .line 1077
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mTouchInterceptor:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1078
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setListViewHook(Lcom/htc/lib1/cc/widget/HtcListView;)V

    .line 1079
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHorizontalOffset:I

    iget v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1080
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_16

    .line 1081
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->setSelection(I)V

    .line 1086
    :cond_e
    :goto_b
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mModal:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownList:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1087
    :cond_f
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->clearListSelection()V

    .line 1089
    :cond_10
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mModal:Z

    if-nez v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mHideSelector:Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1054
    :cond_11
    iget v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    if-ne v0, v7, :cond_12

    .line 1055
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWidth(I)V

    move v0, v2

    goto :goto_8

    .line 1057
    :cond_12
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownWidth:I

    invoke-virtual {v0, v4}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setWidth(I)V

    move v0, v2

    goto :goto_8

    .line 1064
    :cond_13
    iget v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    if-ne v4, v7, :cond_14

    .line 1065
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    invoke-virtual {v4, v5}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setHeight(I)V

    move v4, v2

    goto/16 :goto_9

    .line 1067
    :cond_14
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mPopup:Lcom/htc/lib1/cc/widget/PopupBubbleWindow;

    iget v5, p0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->mDropDownHeight:I

    invoke-virtual {v4, v5}, Lcom/htc/lib1/cc/widget/PopupBubbleWindow;->setHeight(I)V

    move v4, v2

    goto/16 :goto_9

    :cond_15
    move v1, v2

    .line 1076
    goto :goto_a

    .line 1083
    :cond_16
    sget-boolean v0, Lcom/htc/lib1/cc/widget/ListPopupBubbleWindow;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 1084
    const-string v0, "ListPopupBubbleWindow"

    const-string v1, "mDropDownList == null"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
