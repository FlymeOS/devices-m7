.class Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;
.super Lcom/htc/camera/menu/MenuItem;
.source "MakeUpMenuItem.java"

# interfaces
.implements Lcom/htc/camera/widget/k;
.implements Lcom/htc/camera/widget/l;


# instance fields
.field private m_ScaleMeterItem:Lcom/htc/camera/widget/MakeUpScaleMeterItem;

.field final synthetic this$0:Lcom/htc/camera/menu/MakeUpMenuItem;


# direct methods
.method public constructor <init>(Lcom/htc/camera/menu/MakeUpMenuItem;Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 38
    iput-object p1, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->this$0:Lcom/htc/camera/menu/MakeUpMenuItem;

    .line 39
    invoke-direct {p0, p2}, Lcom/htc/camera/menu/MenuItem;-><init>(Lcom/htc/camera/HTCCamera;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->setSelectable(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 50
    instance-of v0, p4, Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    if-nez v0, :cond_0

    .line 51
    new-instance v1, Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    invoke-virtual {p0}, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/HTCCamera;

    invoke-direct {v1, v0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    .line 58
    :goto_0
    const-string v0, "MakeUpScaleMeterMenuItem"

    const-string v1, "initialize() - getView : initialize"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    invoke-virtual {v0, p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->setOnButtonClickedListener(Lcom/htc/camera/widget/k;)V

    .line 61
    iget-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    invoke-virtual {v0, p0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->setOnLevelChangedListener(Lcom/htc/camera/widget/l;)V

    .line 64
    iget-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    return-object v0

    .line 54
    :cond_0
    check-cast p4, Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    iput-object p4, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    .line 55
    iget-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->m_ScaleMeterItem:Lcom/htc/camera/widget/MakeUpScaleMeterItem;

    invoke-virtual {v0}, Lcom/htc/camera/widget/MakeUpScaleMeterItem;->refreshLevel()V

    goto :goto_0
.end method

.method public isCustomView()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public onButtonClicked(Lcom/htc/camera/widget/ScaleMeterItem;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->this$0:Lcom/htc/camera/menu/MakeUpMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MakeUpMenuItem;->notifyItemContentClicked()V

    .line 83
    return-void
.end method

.method public onLevelChanged(Lcom/htc/camera/widget/ScaleMeterItem;I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/camera/menu/MakeUpMenuItem$MakeUpScaleMeterMenuItem;->this$0:Lcom/htc/camera/menu/MakeUpMenuItem;

    invoke-virtual {v0}, Lcom/htc/camera/menu/MakeUpMenuItem;->updateContent()V

    .line 92
    return-void
.end method
