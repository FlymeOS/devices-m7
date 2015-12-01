.class Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;
.super Ljava/lang/Object;
.source "AbstractTableView.java"


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/htc/lib1/cc/view/table/f;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;


# direct methods
.method constructor <init>(Lcom/htc/lib1/cc/view/table/AbstractTableView;)V
    .locals 1

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2818
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$702(Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;Lcom/htc/lib1/cc/view/table/f;)Lcom/htc/lib1/cc/view/table/f;
    .locals 0

    .prologue
    .line 2804
    iput-object p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/view/table/f;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 3037
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v5, v0

    .line 3038
    iget v6, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mViewTypeCount:I

    .line 3039
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    move v4, v2

    .line 3040
    :goto_0
    if-ge v4, v6, :cond_1

    .line 3041
    aget-object v8, v7, v4

    .line 3042
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3043
    sub-int v9, v0, v5

    .line 3044
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    .line 3045
    :goto_1
    if-ge v1, v9, :cond_0

    .line 3046
    iget-object v10, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v0, v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->access$1000(Lcom/htc/lib1/cc/view/table/AbstractTableView;Landroid/view/View;Z)V

    .line 3045
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 3040
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 3049
    :cond_1
    return-void
.end method


# virtual methods
.method public addScrapView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2963
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    .line 2964
    if-nez v0, :cond_1

    .line 2987
    :cond_0
    :goto_0
    return-void

    .line 2970
    :cond_1
    iget v0, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;->viewType:I

    .line 2971
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2975
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2976
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 2977
    :cond_2
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2984
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/view/table/f;

    if-eqz v0, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/view/table/f;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/view/table/f;->a(Landroid/view/View;)V

    goto :goto_0

    .line 2981
    :cond_3
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2862
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2863
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2864
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 2865
    :goto_0
    if-ge v1, v4, :cond_2

    .line 2866
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v5, v0, v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->access$800(Lcom/htc/lib1/cc/view/table/AbstractTableView;Landroid/view/View;Z)V

    .line 2865
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2870
    :cond_0
    iget v4, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mViewTypeCount:I

    move v3, v2

    .line 2871
    :goto_1
    if-ge v3, v4, :cond_2

    .line 2872
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 2873
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 2874
    :goto_2
    if-ge v1, v6, :cond_1

    .line 2875
    iget-object v7, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    # invokes: Lcom/htc/lib1/cc/view/table/AbstractTableView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v7, v0, v2}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->access$900(Lcom/htc/lib1/cc/view/table/AbstractTableView;Landroid/view/View;Z)V

    .line 2874
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2871
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 2879
    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 4

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 2890
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2892
    :cond_0
    iput p2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mFirstActivePosition:I

    .line 2894
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2895
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 2896
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2897
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    .line 2899
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1

    .line 2902
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    invoke-virtual {v0, v1}, Lcom/htc/lib1/cc/view/table/AbstractTableView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v2, v1

    .line 2895
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2905
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2915
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mFirstActivePosition:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mFirstActivePosition:I

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-object v1, v1, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    sub-int v0, p1, v0

    .line 2916
    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-object v1, v1, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-object v1, v1, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 2917
    :cond_0
    iget-object v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2918
    if-ltz v0, :cond_2

    array-length v1, v3

    if-ge v0, v1, :cond_2

    .line 2919
    aget-object v1, v3, v0

    .line 2920
    aput-object v2, v3, v0

    move-object v0, v1

    .line 2923
    :goto_1
    return-object v0

    .line 2915
    :cond_1
    iget v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mFirstActivePosition:I

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 2923
    goto :goto_1
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2931
    iget v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2932
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2933
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2935
    if-lez v2, :cond_0

    .line 2936
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2950
    :cond_0
    :goto_0
    return-object v0

    .line 2941
    :cond_1
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->this$0:Lcom/htc/lib1/cc/view/table/AbstractTableView;

    iget-object v1, v1, Lcom/htc/lib1/cc/view/table/AbstractTableView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 2942
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2943
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v2, v1

    .line 2944
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2945
    if-lez v2, :cond_0

    .line 2946
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2993
    iget-object v5, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 2994
    iget-object v1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/view/table/f;

    if-eqz v1, :cond_1

    move v1, v0

    .line 2995
    :goto_0
    iget v3, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mViewTypeCount:I

    if-le v3, v0, :cond_2

    move v3, v0

    .line 2997
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2998
    array-length v6, v5

    move v4, v2

    move-object v2, v0

    .line 2999
    :goto_2
    if-ge v4, v6, :cond_5

    .line 3000
    aget-object v7, v5, v4

    .line 3001
    if-eqz v7, :cond_0

    .line 3002
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;

    iget v0, v0, Lcom/htc/lib1/cc/view/table/AbstractTableView$LayoutParams;->viewType:I

    .line 3005
    const/4 v8, 0x0

    aput-object v8, v5, v4

    .line 3007
    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    .line 2999
    :cond_0
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_1
    move v1, v2

    .line 2994
    goto :goto_0

    :cond_2
    move v3, v2

    .line 2995
    goto :goto_1

    .line 3012
    :cond_3
    if-eqz v3, :cond_6

    .line 3013
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v2, v0

    .line 3015
    :goto_4
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3017
    if-eqz v1, :cond_4

    .line 3018
    iget-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mRecyclerListener:Lcom/htc/lib1/cc/view/table/f;

    invoke-interface {v2, v7}, Lcom/htc/lib1/cc/view/table/f;->a(Landroid/view/View;)V

    :cond_4
    move-object v2, v0

    goto :goto_3

    .line 3029
    :cond_5
    invoke-direct {p0}, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->pruneScrapViews()V

    .line 3030
    return-void

    :cond_6
    move-object v0, v2

    goto :goto_4
.end method

.method public setViewTypeCount(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2836
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 2837
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2840
    :cond_0
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    .line 2841
    :goto_0
    if-ge v0, p1, :cond_1

    .line 2842
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 2841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2844
    :cond_1
    iput p1, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mViewTypeCount:I

    .line 2845
    aget-object v0, v2, v1

    iput-object v0, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 2847
    iput-object v2, p0, Lcom/htc/lib1/cc/view/table/AbstractTableView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 2848
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1

    .prologue
    .line 2855
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
