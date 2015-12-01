.class public abstract Lcom/htc/camera/mainbar/MainBarItem;
.super Lcom/htc/camera/ThreadDependencyObject;
.source "MainBarItem.java"


# instance fields
.field protected final cameraActivity:Lcom/htc/camera/HTCCamera;

.field protected final expandableMenuUI:Lcom/htc/camera/mainbar/ExpandableMenuUI;

.field protected iconDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_Id:I

.field private m_IsEnabled:Z

.field private m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

.field protected m_Res:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/mainbar/ExpandableMenuUI;I)V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/htc/camera/ThreadDependencyObject;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/htc/camera/mainbar/MainBarItem;->expandableMenuUI:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    .line 210
    iput p2, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Id:I

    .line 211
    invoke-virtual {p1}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    .line 212
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Res:Landroid/content/res/Resources;

    .line 213
    new-instance v0, Lcom/htc/camera/widget/ExpandableMenuItem;

    iget-object v1, p0, Lcom/htc/camera/mainbar/MainBarItem;->cameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-direct {v0, v1}, Lcom/htc/camera/widget/ExpandableMenuItem;-><init>(Lcom/htc/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    .line 214
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0, p0}, Lcom/htc/camera/widget/ExpandableMenuItem;->setTag(Ljava/lang/Object;)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_IsEnabled:Z

    .line 216
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Id:I

    return v0
.end method

.method protected getIconViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenuItem;->getIconViewContainer()Landroid/view/View;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getItem()Lcom/htc/camera/widget/ExpandableMenuItem;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    return-object v0
.end method

.method protected final invalidate()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/MainBarItem;->refreshItemHighlight()V

    .line 261
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenuItem;->invalidate()V

    .line 263
    :cond_0
    return-void
.end method

.method protected abstract isDefaultValue()Z
.end method

.method protected final isVisible()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/ExpandableMenuItem;->isVisible()Z

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final notifyItemClicked()V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/MainBarItem;->onItemClicked()V

    .line 268
    return-void
.end method

.method final notifyUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/mainbar/MainBarItem;->onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 273
    return-void
.end method

.method protected onItemClicked()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method protected onReleased()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method protected final refreshItemHighlight()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_IsEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/mainbar/MainBarItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/camera/mainbar/MainBarItem;->isDefaultValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 290
    :goto_0
    iget-object v3, p0, Lcom/htc/camera/mainbar/MainBarItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshItemHighlight() - isHightlightItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", m_Item existence = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v1, v0}, Lcom/htc/camera/widget/ExpandableMenuItem;->setIconColorOn(Z)V

    .line 293
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 289
    goto :goto_0

    :cond_2
    move v1, v2

    .line 290
    goto :goto_1
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/MainBarItem;->onReleased()V

    .line 298
    return-void
.end method

.method protected final setEnabled(Z)V
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_IsEnabled:Z

    if-eq v0, p1, :cond_0

    .line 309
    iput-boolean p1, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_IsEnabled:Z

    .line 310
    invoke-virtual {p0}, Lcom/htc/camera/mainbar/MainBarItem;->updateItemStatus()V

    .line 312
    :cond_0
    return-void
.end method

.method protected final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->setTitle(I)V

    .line 304
    :cond_0
    return-void
.end method

.method protected final setVisibility(Z)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    invoke-virtual {v0, p1}, Lcom/htc/camera/widget/ExpandableMenuItem;->setVisibility(Z)V

    .line 324
    :cond_0
    return-void
.end method

.method final updateItemStatus()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->expandableMenuUI:Lcom/htc/camera/mainbar/ExpandableMenuUI;

    invoke-virtual {v0}, Lcom/htc/camera/mainbar/ExpandableMenuUI;->isMainBarItemDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItemStatus() - m_IsEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_IsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    iget-boolean v1, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_IsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ExpandableMenuItem;->setEnabled(Z)V

    .line 336
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->TAG:Ljava/lang/String;

    const-string v1, "updateItemStatus() - isMainBarItemDisabled is true, so disable item"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/htc/camera/mainbar/MainBarItem;->m_Item:Lcom/htc/camera/widget/ExpandableMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/widget/ExpandableMenuItem;->setEnabled(Z)V

    goto :goto_0
.end method
