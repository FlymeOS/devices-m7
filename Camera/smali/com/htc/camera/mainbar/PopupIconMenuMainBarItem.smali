.class public abstract Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;
.super Lcom/htc/camera/mainbar/MainBarItem;
.source "PopupIconMenuMainBarItem.java"


# instance fields
.field private am:Landroid/view/accessibility/AccessibilityManager;

.field private m_ClosePopupMenuRunnable:Ljava/lang/Runnable;

.field private m_LastScrollPosition:I

.field private m_PopUpMenuTimeout:J

.field private m_PopupIconMenuTouchListener:Landroid/view/View$OnTouchListener;

.field private m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

.field private onPopupIconMenuClosedListener:Lcom/htc/camera/menu/g;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;IJ)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;IJ)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 57
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopUpMenuTimeout:J

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->am:Landroid/view/accessibility/AccessibilityManager;

    .line 63
    new-instance v0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$1;-><init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->onPopupIconMenuClosedListener:Lcom/htc/camera/menu/g;

    .line 73
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$2;-><init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 82
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isActivityPausing:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$3;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$3;-><init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 92
    iget-object v0, p1, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMenuExpanded:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$4;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$4;-><init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 102
    return-void

    .line 59
    :cond_0
    iput-wide p3, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopUpMenuTimeout:J

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_LastScrollPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)Lcom/htc/camera/menu/PopupIconMenu;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;Lcom/htc/camera/menu/PopupIconMenu;)Lcom/htc/camera/menu/PopupIconMenu;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    return-object p1
.end method


# virtual methods
.method protected final closePopupMenu()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-virtual {v0}, Lcom/htc/camera/menu/PopupIconMenu;->close()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    .line 112
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_ClosePopupMenuRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_ClosePopupMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/htc/camera/ap;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected abstract onMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
.end method

.method protected onPreviewMenuItemClicked(Lcom/htc/camera/menu/IconMenu;Lcom/htc/camera/menu/IconMenuItem;Lcom/htc/camera/menu/IconMenuItem;I)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-virtual {v0, p2}, Lcom/htc/camera/menu/PopupIconMenu;->setItemRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->restartPopupMenuTimer()V

    .line 190
    return-void
.end method

.method protected restartPopupMenuTimer()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->am:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_ClosePopupMenuRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 204
    new-instance v1, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$7;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$7;-><init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V

    iput-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_ClosePopupMenuRunnable:Ljava/lang/Runnable;

    .line 215
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_ClosePopupMenuRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopUpMenuTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_ClosePopupMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final showPopupMenu(Ljava/util/List;)V
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
    .line 135
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "ShowPopupMenu() - items is empty, skip process"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->closePopupMenu()V

    .line 140
    new-instance v0, Lcom/htc/camera/menu/PopupIconMenu;

    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->getIconViewContainer()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/menu/PopupIconMenu;-><init>(Lcom/htc/camera/HTCCamera;Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    .line 141
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    new-instance v1, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$5;

    invoke-direct {v1, p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$5;-><init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/PopupIconMenu;->setOnIconMenuClickListener(Lcom/htc/camera/menu/b;)V

    .line 159
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupIconMenuTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$6;

    invoke-direct {v0, p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem$6;-><init>(Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupIconMenuTouchListener:Landroid/view/View$OnTouchListener;

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupIconMenuTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/PopupIconMenu;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->onPopupIconMenuClosedListener:Lcom/htc/camera/menu/g;

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/PopupIconMenu;->setOnPopupIconMenuClosedListener(Lcom/htc/camera/menu/g;)V

    .line 174
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-virtual {v0, p1}, Lcom/htc/camera/menu/PopupIconMenu;->setIconMenuItems(Ljava/util/List;)V

    .line 175
    iget-object v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->rotation:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v0}, Lcom/htc/camera/menu/PopupIconMenu;->setItemRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 176
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    iget v1, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_LastScrollPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/camera/menu/PopupIconMenu;->setInitScrollPosition(I)V

    .line 177
    iget-object v0, p0, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->m_PopupMenu:Lcom/htc/camera/menu/PopupIconMenu;

    invoke-virtual {v0}, Lcom/htc/camera/menu/PopupIconMenu;->open()V

    .line 178
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/PopupIconMenuMainBarItem;->restartPopupMenuTimer()V

    goto :goto_0
.end method
