.class Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "SelfTimerMenuItem.java"

# interfaces
.implements Lcom/htc/camera/widget/k;
.implements Lcom/htc/camera/widget/l;


# instance fields
.field private m_ScaleMeterItem:Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

.field final synthetic this$0:Lcom/htc/camera/menu/SelfTimerMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/menu/SelfTimerMenuItem;Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->this$0:Lcom/htc/camera/menu/SelfTimerMenuItem;

    .line 41
    invoke-direct {p0, p2}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->setSelectable(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 52
    instance-of v0, p4, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    if-nez v0, :cond_0

    .line 53
    new-instance v1, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    invoke-virtual {p0}, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-direct {v1, v0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    .line 60
    :goto_0
    const-string v0, "SelfTimerScaleMeterMenuItem"

    const-string v1, "initialize() - getView : initialize"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    invoke-virtual {v0, p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->setOnButtonClickedListener(Lcom/htc/camera/widget/k;)V

    .line 63
    iget-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    invoke-virtual {v0, p0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->setOnLevelChangedListener(Lcom/htc/camera/widget/l;)V

    .line 66
    iget-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    return-object v0

    .line 56
    :cond_0
    check-cast p4, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    iput-object p4, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    .line 57
    iget-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/SelfTimerScaleMeterItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/SelfTimerScaleMeterItem;->refreshLevel()V

    goto :goto_0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onButtonClicked(Lcom/htc/camera/widget/ScaleMeterItem;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->this$0:Lcom/htc/camera/menu/SelfTimerMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/SelfTimerMenuItem;->notifyItemContentClicked()V

    .line 85
    return-void
.end method

.method public onLevelChanged(Lcom/htc/camera/widget/ScaleMeterItem;I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/camera/menu/SelfTimerMenuItem$SelfTimerScaleMeterMenuItem;->this$0:Lcom/htc/camera/menu/SelfTimerMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/SelfTimerMenuItem;->updateContent()V

    .line 94
    return-void
.end method
