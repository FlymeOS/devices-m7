.class public Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;
.super Ljava/lang/Object;
.source "HtcHeaderViewListAdapter2.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/WrapperListAdapter;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/i;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/i;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/i;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/i;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    .line 61
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mIsFilterable:Z

    .line 63
    if-nez p1, :cond_0

    .line 64
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 69
    :goto_0
    if-nez p2, :cond_1

    .line 70
    sget-object v0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAreAllFixedViewsSelectable:Z

    .line 78
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 72
    :cond_1
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/lib1/cc/widget/i;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    .line 107
    iget-boolean v0, v0, Lcom/htc/lib1/cc/widget/i;->c:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 174
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 175
    iget-boolean v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getHeadersCount()I

    move-result v0

    .line 213
    if-ge p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/i;->b:Ljava/lang/Object;

    .line 228
    :goto_0
    return-object v0

    .line 218
    :cond_0
    sub-int v1, p1, v0

    .line 219
    const/4 v0, 0x0

    .line 220
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 221
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 222
    if-ge v1, v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/i;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getHeadersCount()I

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 238
    sub-int v0, p1, v0

    .line 239
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 240
    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 244
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getHeadersCount()I

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 290
    sub-int v0, p1, v0

    .line 291
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 292
    if-ge v0, v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getHeadersCount()I

    move-result v0

    .line 265
    if-ge p1, v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/i;->a:Landroid/view/View;

    .line 280
    :goto_0
    return-object v0

    .line 270
    :cond_0
    sub-int v1, p1, v0

    .line 271
    const/4 v0, 0x0

    .line 272
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 273
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 274
    if-ge v1, v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    iget-object v0, v0, Lcom/htc/lib1/cc/widget/i;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

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

.method public isEnabled(I)Z
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->getHeadersCount()I

    move-result v0

    .line 188
    if-ge p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/widget/i;->c:Z

    .line 203
    :goto_0
    return v0

    .line 193
    :cond_0
    sub-int v1, p1, v0

    .line 194
    const/4 v0, 0x0

    .line 195
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_1

    .line 196
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 197
    if-ge v1, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/i;

    iget-boolean v0, v0, Lcom/htc/lib1/cc/widget/i;->c:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 315
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/HtcHeaderViewListAdapter2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 321
    :cond_0
    return-void
.end method
