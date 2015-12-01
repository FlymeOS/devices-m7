.class public Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;
.super Ljava/lang/Object;
.source "TabBar.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Lcom/htc/lib1/cc/view/tabbar/c;


# instance fields
.field private mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

.field private mObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/database/DataSetObserver;",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGenerator:Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lib1/cc/view/tabbar/c;)V
    .locals 1

    .prologue
    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mObservers:Ljava/util/Map;

    .line 1257
    iput-object p2, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    .line 1258
    new-instance v0, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;

    invoke-direct {v0, p1, p0}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;-><init>(Landroid/content/Context;Lcom/htc/lib1/cc/view/tabbar/c;)V

    iput-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mViewGenerator:Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;

    .line 1259
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1306
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v0}, Lcom/htc/lib1/cc/view/tabbar/c;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1268
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1274
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mViewGenerator:Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;

    invoke-virtual {v0, p1}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getPageCount(I)I
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/view/tabbar/c;->getPageCount(I)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v0, p1}, Lcom/htc/lib1/cc/view/tabbar/c;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mViewGenerator:Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mViewGenerator:Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1296
    const/4 v0, 0x0

    return v0
.end method

.method public isAutomotiveMode()Z
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v0}, Lcom/htc/lib1/cc/view/tabbar/c;->isAutomotiveMode()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 1311
    const/4 v0, 0x1

    return v0
.end method

.method isSame(Lcom/htc/lib1/cc/view/tabbar/c;)Z
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    .prologue
    .line 1317
    new-instance v0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl$1;-><init>(Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;Landroid/database/DataSetObserver;)V

    .line 1329
    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mObservers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    invoke-interface {v1, v0}, Lcom/htc/lib1/cc/view/tabbar/c;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1331
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mViewGenerator:Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;

    invoke-virtual {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->clear()V

    .line 1363
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mViewGenerator:Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/lib1/cc/view/tabbar/TabBarBuilder;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 1355
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    .prologue
    .line 1335
    iget-object v1, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mAdapter:Lcom/htc/lib1/cc/view/tabbar/c;

    iget-object v0, p0, Lcom/htc/lib1/cc/view/tabbar/TabBar$TabAdapterImpl;->mObservers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-interface {v1, v0}, Lcom/htc/lib1/cc/view/tabbar/c;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1336
    return-void
.end method
