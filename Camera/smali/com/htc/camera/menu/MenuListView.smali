.class public Lcom/htc/camera/menu/MenuListView;
.super Lcom/htc/lib1/cc/widget/HtcExpandableListView;
.source "MenuListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private final m_Adapter:Lcom/htc/camera/menu/MenuAdapter;

.field private m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

.field private m_IsDoingClicked:Z

.field m_Items:[Lcom/htc/camera/menu/MenuItem;

.field private m_OnMenuItemClickedListener:Lcom/htc/camera/menu/e;

.field private m_OnMenuItemContentClickedListener:Lcom/htc/camera/menu/f;

.field private m_UpdateCounter:I

.field private final m_VisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/lib1/cc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/htc/camera/menu/MenuAdapter;

    invoke-direct {v0, p0}, Lcom/htc/camera/menu/MenuAdapter;-><init>(Lcom/htc/camera/menu/MenuListView;)V

    iput-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Adapter:Lcom/htc/camera/menu/MenuAdapter;

    move-object v0, p1

    .line 54
    check-cast v0, Lcom/htc/camera/HTCCamera;

    .line 55
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Adapter:Lcom/htc/camera/menu/MenuAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/htc/camera/menu/MenuListView;->setCacheColorHint(I)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/htc/camera/menu/MenuListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/htc/camera/menu/MenuListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 61
    const v0, 0x7f09004c

    sget-object v1, Lcom/htc/camera/R$styleable;->HtcListView:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0, v1}, Lcom/htc/camera/menu/MenuListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/htc/camera/menu/MenuListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/htc/camera/menu/MenuListView;->setVerticalScrollBarEnabled(Z)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method


# virtual methods
.method public final beginUpdate()V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/htc/camera/menu/MenuListView;->m_UpdateCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/camera/menu/MenuListView;->m_UpdateCounter:I

    .line 77
    return-void
.end method

.method public collapseAllItems()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->collapseGroup(I)Z

    .line 84
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    .line 87
    return-void
.end method

.method final collapseItem(Lcom/htc/camera/menu/MenuItem;)V
    .locals 2

    .prologue
    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuItem;->getMenuListView()Lcom/htc/camera/menu/MenuListView;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    if-ne v0, p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 105
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->collapseGroup(I)Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    goto :goto_0

    .line 101
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final endUpdate()V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/htc/camera/menu/MenuListView;->m_UpdateCounter:I

    if-lez v0, :cond_0

    .line 120
    iget v0, p0, Lcom/htc/camera/menu/MenuListView;->m_UpdateCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/camera/menu/MenuListView;->m_UpdateCounter:I

    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuListView;->notifyItemsChanged()V

    .line 123
    :cond_0
    return-void
.end method

.method final expandItem(Lcom/htc/camera/menu/MenuItem;)V
    .locals 4

    .prologue
    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuItem;->getMenuListView()Lcom/htc/camera/menu/MenuListView;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    if-eq v0, p1, :cond_0

    .line 137
    const/4 v1, -0x1

    .line 138
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 140
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    .line 141
    iget-object v3, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    if-ne v0, v3, :cond_2

    .line 142
    invoke-virtual {p0, v2}, Lcom/htc/camera/menu/MenuListView;->collapseGroup(I)Z

    move v0, v1

    .line 138
    :goto_2
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_1

    .line 143
    :cond_2
    if-ne v0, p1, :cond_5

    move v0, v2

    .line 144
    goto :goto_2

    .line 146
    :cond_3
    if-ltz v1, :cond_4

    .line 148
    iput-object p1, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    .line 149
    invoke-virtual {p0, v1}, Lcom/htc/camera/menu/MenuListView;->expandGroup(I)Z

    .line 150
    invoke-virtual {p0, v1}, Lcom/htc/camera/menu/MenuListView;->setSelectedGroup(I)V

    goto :goto_0

    .line 153
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method final getExpandedItem()Lcom/htc/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    return-object v0
.end method

.method public final getItems()[Lcom/htc/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    return-object v0
.end method

.method getVisibleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method final notifyItemContentClicked(Lcom/htc/camera/menu/MenuItem;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_OnMenuItemContentClickedListener:Lcom/htc/camera/menu/f;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_OnMenuItemContentClickedListener:Lcom/htc/camera/menu/f;

    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuItem;->getId()I

    move-result v1

    invoke-interface {v0, p0, p1, v1}, Lcom/htc/camera/menu/f;->a(Lcom/htc/camera/menu/MenuListView;Lcom/htc/camera/menu/MenuItem;I)V

    .line 188
    :cond_0
    return-void
.end method

.method final notifyItemsChanged()V
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Lcom/htc/camera/menu/MenuListView;->m_UpdateCounter:I

    if-nez v0, :cond_4

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->updateVisibleItems(Z)V

    .line 201
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    iget-object v0, v0, Lcom/htc/camera/menu/MenuItem;->m_MenuListView:Lcom/htc/camera/menu/MenuListView;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 207
    iget-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    if-ne v1, v2, :cond_2

    .line 208
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->expandGroup(I)Z

    .line 205
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->collapseGroup(I)Z

    goto :goto_1

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Adapter:Lcom/htc/camera/menu/MenuAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuAdapter;->checkMenuItemTypes()V

    .line 216
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Adapter:Lcom/htc/camera/menu/MenuAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 218
    :cond_4
    return-void
.end method

.method final notifyItemsInvalidated()V
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/htc/camera/menu/MenuListView;->m_UpdateCounter:I

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Adapter:Lcom/htc/camera/menu/MenuAdapter;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuAdapter;->notifyDataSetInvalidated()V

    .line 227
    :cond_0
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 235
    iget-boolean v0, p0, Lcom/htc/camera/menu/MenuListView;->m_IsDoingClicked:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "MenuListView"

    const-string v1, "onChildClick() - Doing child click, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    return v2

    .line 241
    :cond_0
    iput-boolean v2, p0, Lcom/htc/camera/menu/MenuListView;->m_IsDoingClicked:Z

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    .line 247
    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->onClicked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :goto_1
    iput-boolean v3, p0, Lcom/htc/camera/menu/MenuListView;->m_IsDoingClicked:Z

    goto :goto_0

    .line 251
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->getId()I

    move-result v1

    invoke-virtual {p0, v0, p4, v1}, Lcom/htc/camera/menu/MenuListView;->onMenuItemClicked(Lcom/htc/camera/menu/MenuItem;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 258
    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcom/htc/camera/menu/MenuListView;->m_IsDoingClicked:Z

    throw v0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 269
    iget-boolean v0, p0, Lcom/htc/camera/menu/MenuListView;->m_IsDoingClicked:Z

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "MenuListView"

    const-string v1, "onGroupClick() - Doing group click, skip"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return v4

    .line 275
    :cond_0
    iput-boolean v4, p0, Lcom/htc/camera/menu/MenuListView;->m_IsDoingClicked:Z

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    .line 281
    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->isSelectable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 323
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/htc/camera/menu/MenuListView;->m_IsDoingClicked:Z

    goto :goto_0

    .line 285
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->onClicked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 291
    iget-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    if-eq v1, v0, :cond_6

    .line 293
    iget-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    if-eqz v1, :cond_3

    .line 295
    iget-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 297
    iget-object v2, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    if-ne v2, v3, :cond_5

    .line 299
    invoke-virtual {p0, v1}, Lcom/htc/camera/menu/MenuListView;->collapseGroup(I)Z

    .line 304
    :cond_3
    iput-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    .line 305
    invoke-virtual {p0, p3}, Lcom/htc/camera/menu/MenuListView;->expandGroup(I)Z

    .line 306
    invoke-virtual {p0, p3}, Lcom/htc/camera/menu/MenuListView;->setSelectedGroup(I)V

    .line 316
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->getId()I

    move-result v1

    invoke-virtual {p0, v0, p3, v1}, Lcom/htc/camera/menu/MenuListView;->onMenuItemClicked(Lcom/htc/camera/menu/MenuItem;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcom/htc/camera/menu/MenuListView;->m_IsDoingClicked:Z

    throw v0

    .line 295
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 310
    :cond_6
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_CurrentExpandedItem:Lcom/htc/camera/menu/MenuItem;

    .line 311
    invoke-virtual {p0, p3}, Lcom/htc/camera/menu/MenuListView;->collapseGroup(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method protected onMenuItemClicked(Lcom/htc/camera/menu/MenuItem;II)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_OnMenuItemClickedListener:Lcom/htc/camera/menu/e;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_OnMenuItemClickedListener:Lcom/htc/camera/menu/e;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/htc/camera/menu/e;->onItemClicked(Lcom/htc/camera/menu/MenuListView;Lcom/htc/camera/menu/MenuItem;II)V

    .line 334
    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/htc/camera/menu/MenuItem;

    .line 344
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 345
    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    .line 349
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    check-cast v0, [Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MenuListView;->setItems([Lcom/htc/camera/menu/MenuItem;)V

    goto :goto_0
.end method

.method public setItems([Lcom/htc/camera/menu/MenuItem;)V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/MenuItem;->setMenuListView(Lcom/htc/camera/menu/MenuListView;)V

    .line 355
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 360
    :cond_0
    iput-object p1, p0, Lcom/htc/camera/menu/MenuListView;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    .line 361
    if-eqz p1, :cond_1

    .line 363
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 364
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/htc/camera/menu/MenuItem;->setMenuListView(Lcom/htc/camera/menu/MenuListView;)V

    .line 363
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuListView;->notifyItemsChanged()V

    .line 369
    return-void
.end method

.method public final setOnMenuItemClickedListener(Lcom/htc/camera/menu/e;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/camera/menu/MenuListView;->m_OnMenuItemClickedListener:Lcom/htc/camera/menu/e;

    .line 377
    return-void
.end method

.method public final setOnMenuItemContentClickedListener(Lcom/htc/camera/menu/f;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/htc/camera/menu/MenuListView;->m_OnMenuItemContentClickedListener:Lcom/htc/camera/menu/f;

    .line 381
    return-void
.end method

.method public updateItemContents()V
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuListView;->beginUpdate()V

    .line 389
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->updateContent()V

    .line 389
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/menu/MenuListView;->endUpdate()V

    .line 392
    return-void
.end method

.method final updateVisibleItems(Z)V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    iget-object v0, p0, Lcom/htc/camera/menu/MenuListView;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    if-eqz v0, :cond_1

    .line 402
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/htc/camera/menu/MenuListView;->m_Items:[Lcom/htc/camera/menu/MenuItem;

    aget-object v1, v1, v0

    .line 405
    invoke-virtual {v1}, Lcom/htc/camera/menu/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/htc/camera/menu/MenuListView;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {v1, p1}, Lcom/htc/camera/menu/MenuItem;->updateVisibleItems(Z)V

    .line 402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    return-void
.end method
