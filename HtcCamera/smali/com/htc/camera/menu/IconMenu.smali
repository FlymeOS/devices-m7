.class public Lcom/htc/camera/menu/IconMenu;
.super Landroid/widget/HorizontalScrollView;
.source "IconMenu.java"


# instance fields
.field private m_Context:Lcom/htc/camera/HTCCamera;

.field private m_InitScrollX:I

.field private m_IsDispose:Z

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_LeftSpaceView:Landroid/view/View;

.field private m_MainContainer:Landroid/widget/LinearLayout;

.field private m_OnIconMenuClickListener:Lcom/htc/camera/menu/b;

.field private m_OnIconMenuLayoutListener:Lcom/htc/camera/menu/c;

.field private m_OnIconMenuSelectedItemChangedListener:Lcom/htc/camera/menu/d;

.field private m_RightSpaceView:Landroid/view/View;

.field private m_RotationDegree:I

.field private m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

.field private final m_VisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    .line 62
    check-cast p1, Lcom/htc/camera/HTCCamera;

    iput-object p1, p0, Lcom/htc/camera/menu/IconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    .line 64
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->setupUI()V

    .line 67
    return-void
.end method

.method private addItem(Lcom/htc/camera/menu/IconMenuItem;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 77
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method private checkAccessibility()V
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/htc/camera/menu/IconMenu;->m_IsDispose:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "IconMenu"

    const-string v1, "checkAccessibility() - Already disposed, should not use this object"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 91
    :cond_0
    return-void
.end method

.method private notifyIconMenuLayout()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuLayoutListener:Lcom/htc/camera/menu/c;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuLayoutListener:Lcom/htc/camera/menu/c;

    invoke-interface {v0, p0}, Lcom/htc/camera/menu/c;->onLayout(Lcom/htc/camera/menu/IconMenu;)V

    .line 173
    :cond_0
    return-void
.end method

.method private final notifySelectedItemChanged()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuSelectedItemChangedListener:Lcom/htc/camera/menu/d;

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "IconMenu"

    const-string v1, "notifySelectedItemChanged()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuSelectedItemChangedListener:Lcom/htc/camera/menu/d;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-interface {v0, v1}, Lcom/htc/camera/menu/d;->onSelectedItemChanged(Lcom/htc/camera/menu/IconMenuItem;)V

    .line 164
    :cond_0
    return-void
.end method

.method private setupUI()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 350
    invoke-virtual {p0, v3}, Lcom/htc/camera/menu/IconMenu;->setHorizontalScrollBarEnabled(Z)V

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/IconMenu;->setHorizontalFadingEdgeEnabled(Z)V

    .line 352
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/IconMenu;->setOverScrollMode(I)V

    .line 355
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_LeftSpaceView:Landroid/view/View;

    .line 356
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_RightSpaceView:Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0453

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 358
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 361
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_Context:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    .line 362
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 363
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_LeftSpaceView:Landroid/view/View;

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_RightSpaceView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/menu/IconMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    return-void
.end method

.method private updateSelectedItem()V
    .locals 4

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 460
    const/4 v1, 0x0

    .line 462
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 466
    invoke-virtual {v0}, Lcom/htc/camera/menu/IconMenuItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-eq v3, v0, :cond_0

    .line 468
    iput-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    .line 470
    const/4 v0, 0x1

    .line 472
    const-string v1, "IconMenu"

    const-string v2, "updateSelectedItem() - New title:"

    iget-object v3, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v3}, Lcom/htc/camera/menu/IconMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    :goto_0
    if-eqz v0, :cond_1

    .line 481
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->notifySelectedItemChanged()V

    .line 482
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private final updateVisibleItems()V
    .locals 4

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 510
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 511
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 515
    invoke-virtual {v0}, Lcom/htc/camera/menu/IconMenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 522
    invoke-virtual {v0, p0}, Lcom/htc/camera/menu/IconMenuItem;->setParentView(Lcom/htc/camera/menu/IconMenu;)V

    .line 523
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/htc/camera/menu/IconMenuItem;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 525
    :cond_2
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 101
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 104
    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/IconMenuItem;->setParentView(Lcom/htc/camera/menu/IconMenu;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 108
    iput-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    .line 110
    iput-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuClickListener:Lcom/htc/camera/menu/b;

    .line 111
    iput-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuSelectedItemChangedListener:Lcom/htc/camera/menu/d;

    .line 113
    invoke-virtual {p0}, Lcom/htc/camera/menu/IconMenu;->removeAllViews()V

    .line 116
    :cond_1
    const-string v0, "IconMenu"

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/menu/IconMenu;->m_IsDispose:Z

    .line 119
    return-void
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 129
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedItem()Lcom/htc/camera/menu/IconMenuItem;
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 140
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    return-object v0
.end method

.method public getVisibleItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 151
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onIconMenuClick(Lcom/htc/camera/menu/IconMenuItem;)V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 184
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    .line 188
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-eq v1, p1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 192
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/menu/IconMenu;->updateScrolledPosition()V

    .line 199
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuClickListener:Lcom/htc/camera/menu/b;

    if-eqz v1, :cond_2

    .line 200
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuClickListener:Lcom/htc/camera/menu/b;

    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->getId()I

    move-result v2

    invoke-interface {v1, p0, v0, p1, v2}, Lcom/htc/camera/menu/b;->onItemClick(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V

    .line 201
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 490
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 492
    iget-boolean v0, p0, Lcom/htc/camera/menu/IconMenu;->m_IsDispose:Z

    if-nez v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->notifyIconMenuLayout()V

    .line 498
    invoke-virtual {p0}, Lcom/htc/camera/menu/IconMenu;->updateScrolledPosition()V

    .line 500
    :cond_0
    return-void
.end method

.method public setInitialScrollPosition(I)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 211
    iput p1, p0, Lcom/htc/camera/menu/IconMenu;->m_InitScrollX:I

    .line 212
    return-void
.end method

.method public setItemRotation(I)V
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 256
    iput p1, p0, Lcom/htc/camera/menu/IconMenu;->m_RotationDegree:I

    .line 258
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 261
    iget v2, p0, Lcom/htc/camera/menu/IconMenu;->m_RotationDegree:I

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/IconMenuItem;->setRotationDegree(I)V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/menu/IconMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 223
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_MainContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 229
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/camera/menu/IconMenuItem;->setParentView(Lcom/htc/camera/menu/IconMenu;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    :cond_2
    if-eqz p1, :cond_3

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/menu/IconMenuItem;

    .line 238
    invoke-direct {p0, v0}, Lcom/htc/camera/menu/IconMenu;->addItem(Lcom/htc/camera/menu/IconMenuItem;)V

    goto :goto_1

    .line 242
    :cond_3
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->updateVisibleItems()V

    .line 245
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->updateSelectedItem()V

    .line 246
    return-void
.end method

.method public setOnIconMenuClickListener(Lcom/htc/camera/menu/b;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 273
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuClickListener:Lcom/htc/camera/menu/b;

    .line 274
    return-void
.end method

.method public setOnIconMenuLayoutListener(Lcom/htc/camera/menu/c;)V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 281
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuLayoutListener:Lcom/htc/camera/menu/c;

    .line 282
    return-void
.end method

.method public setOnIconMenuSelectedItemChangedListener(Lcom/htc/camera/menu/d;)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 292
    const-string v0, "IconMenu"

    const-string v1, "setOnIconMenuSelectedItemChangedListener() - Set listener"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenu;->m_OnIconMenuSelectedItemChangedListener:Lcom/htc/camera/menu/d;

    .line 294
    return-void
.end method

.method public setSelectedItem(Lcom/htc/camera/menu/IconMenuItem;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 302
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 306
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-nez v2, :cond_1

    .line 308
    if-eqz p1, :cond_3

    .line 310
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    .line 311
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 340
    :goto_0
    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->notifySelectedItemChanged()V

    .line 342
    :cond_0
    return-void

    .line 318
    :cond_1
    if-nez p1, :cond_2

    .line 320
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 321
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    goto :goto_0

    .line 327
    :cond_2
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-eq v2, p1, :cond_3

    .line 329
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 331
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    .line 332
    iget-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public updateScrolledPosition()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 374
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 377
    iget-object v0, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/htc/camera/menu/IconMenu;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 380
    invoke-virtual {p0}, Lcom/htc/camera/menu/IconMenu;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 382
    iget v2, p0, Lcom/htc/camera/menu/IconMenu;->m_InitScrollX:I

    if-lez v2, :cond_3

    .line 385
    iget v0, p0, Lcom/htc/camera/menu/IconMenu;->m_InitScrollX:I

    int-to-float v2, v0

    .line 386
    iput v1, p0, Lcom/htc/camera/menu/IconMenu;->m_InitScrollX:I

    .line 387
    const/4 v0, 0x1

    .line 389
    :goto_0
    iget-object v4, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v4}, Lcom/htc/camera/menu/IconMenuItem;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 390
    iget-object v5, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v5}, Lcom/htc/camera/menu/IconMenuItem;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    .line 391
    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v6, v4

    .line 393
    const-string v7, "IconMenu"

    const-string v8, "updateScrolledPosition() - scrollX:"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v10, " itemX:"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    cmpg-float v7, v5, v2

    if-gez v7, :cond_1

    .line 398
    sub-float v0, v5, v6

    float-to-int v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/menu/IconMenu;->smoothScrollTo(II)V

    .line 410
    :cond_0
    :goto_1
    return-void

    .line 400
    :cond_1
    add-float v7, v2, v3

    sub-float/2addr v7, v4

    cmpl-float v7, v5, v7

    if-lez v7, :cond_2

    .line 402
    add-float v0, v5, v4

    add-float/2addr v0, v6

    sub-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/menu/IconMenu;->smoothScrollTo(II)V

    goto :goto_1

    .line 404
    :cond_2
    if-eqz v0, :cond_0

    .line 407
    float-to-int v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/htc/camera/menu/IconMenu;->scrollTo(II)V

    goto :goto_1

    :cond_3
    move v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public updateSelectedItem(Lcom/htc/camera/menu/IconMenuItem;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->checkAccessibility()V

    .line 422
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_VisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    invoke-virtual {p1}, Lcom/htc/camera/menu/IconMenuItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-ne p1, v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v2, v1}, Lcom/htc/camera/menu/IconMenuItem;->setSelected(Z)V

    .line 432
    :cond_2
    iput-object p1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    .line 436
    const-string v1, "IconMenu"

    const-string v2, "updateSelectedItem(item) - New title:"

    iget-object v3, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    invoke-virtual {v3}, Lcom/htc/camera/menu/IconMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    :goto_1
    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/htc/camera/menu/IconMenu;->notifySelectedItemChanged()V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    if-ne p1, v2, :cond_4

    .line 442
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/camera/menu/IconMenu;->m_SelectedItem:Lcom/htc/camera/menu/IconMenuItem;

    .line 446
    const-string v1, "IconMenu"

    const-string v2, "updateSelectedItem(item) - Clear selected item"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method
