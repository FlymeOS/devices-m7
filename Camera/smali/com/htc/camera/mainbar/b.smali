.class public Lcom/htc/camera/mainbar/b;
.super Lcom/htc/camera/mainbar/MainBarItem;
.source "SettingsMainBarItem.java"


# direct methods
.method public constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;)V
    .locals 2

    .prologue
    .line 14
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/mainbar/MainBarItem;-><init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V

    .line 15
    const v0, 0x7f08042e

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/b;->setTitle(I)V

    .line 18
    iget-object v0, p0, Lcom/htc/camera/mainbar/b;->m_Res:Landroid/content/res/Resources;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/b;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object v0, p0, Lcom/htc/camera/mainbar/b;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/camera/mainbar/b;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected isDefaultValue()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected onItemClicked()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/camera/mainbar/b;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/ui/b;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ui/b;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/camera/ui/b;->showSettingsDialog(I)Lcom/htc/camera/CloseableHandle;

    .line 38
    :cond_0
    return-void
.end method
