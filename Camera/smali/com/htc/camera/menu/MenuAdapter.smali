.class Lcom/htc/camera/menu/MenuAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MenuAdapter.java"


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private final m_CustomMenuItemTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/htc/camera/menu/MenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_LayoutInflater:Landroid/view/LayoutInflater;

.field private final m_Owner:Lcom/htc/camera/menu/MenuListView;


# direct methods
.method constructor <init>(Lcom/htc/camera/menu/MenuListView;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p1}, Lcom/htc/camera/menu/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object p1, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Owner:Lcom/htc/camera/menu/MenuListView;

    .line 29
    return-void
.end method

.method private checkMenuItemTypes([Lcom/htc/camera/menu/MenuItem;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 44
    .line 45
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    move v2, v3

    :goto_0
    if-ltz v5, :cond_2

    .line 47
    aget-object v6, p1, v5

    .line 48
    if-eqz v6, :cond_5

    .line 51
    invoke-virtual {v6}, Lcom/htc/camera/menu/MenuItem;->isCustomView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 55
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_4

    .line 57
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 63
    :goto_2
    if-nez v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 71
    :goto_3
    invoke-virtual {v6}, Lcom/htc/camera/menu/MenuItem;->getItems()[Lcom/htc/camera/menu/MenuItem;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/htc/camera/menu/MenuAdapter;->checkMenuItemTypes([Lcom/htc/camera/menu/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 45
    :cond_0
    :goto_4
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move v2, v0

    goto :goto_0

    .line 55
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 76
    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_4
.end method


# virtual methods
.method public checkMenuItemTypes()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Owner:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuListView;->getItems()[Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 39
    invoke-direct {p0, v0}, Lcom/htc/camera/menu/MenuAdapter;->checkMenuItemTypes([Lcom/htc/camera/menu/MenuItem;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public getChild(II)Lcom/htc/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Owner:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/menu/MenuAdapter;->getChild(II)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/menu/MenuAdapter;->getChild(II)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/menu/MenuAdapter;->getChild(II)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->isCustomView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 125
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    add-int/lit8 v0, v2, 0x1

    .line 131
    :goto_1
    return v0

    .line 125
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 131
    goto :goto_1
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x20

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/menu/MenuAdapter;->getChild(II)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/htc/camera/menu/MenuItem;->getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Owner:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Lcom/htc/camera/menu/MenuItem;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Owner:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/htc/camera/menu/MenuAdapter;->getGroup(I)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Owner:Lcom/htc/camera/menu/MenuListView;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuListView;->getVisibleItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/htc/camera/menu/MenuAdapter;->getGroup(I)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0, p1}, Lcom/htc/camera/menu/MenuAdapter;->getGroup(I)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->isCustomView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 188
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 190
    iget-object v0, p0, Lcom/htc/camera/menu/MenuAdapter;->m_CustomMenuItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    add-int/lit8 v0, v2, 0x1

    .line 194
    :goto_1
    return v0

    .line 188
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 194
    goto :goto_1
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 202
    const/16 v0, 0x20

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/htc/camera/menu/MenuAdapter;->getGroup(I)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/menu/MenuAdapter;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/camera/menu/MenuAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/htc/camera/menu/MenuItem;->getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/menu/MenuAdapter;->getChild(II)Lcom/htc/camera/menu/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/menu/MenuItem;->isSelectable()Z

    move-result v0

    return v0
.end method
