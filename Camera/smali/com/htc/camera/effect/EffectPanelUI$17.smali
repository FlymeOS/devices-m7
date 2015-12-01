.class Lcom/htc/camera/effect/EffectPanelUI$17;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2300(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2300(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/effect/IEffectManager;->effectList:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 536
    if-eqz v0, :cond_2

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 537
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z
    invoke-static {v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$2400(Lcom/htc/camera/effect/EffectPanelUI;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$2300(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/effect/IEffectManager;->currentEffect:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v0}, Lcom/htc/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 541
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/htc/camera/effect/IEffectManager;
    invoke-static {v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$2300(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/IEffectManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/camera/effect/IEffectManager;->setCurrentEffect(Ljava/lang/Class;)Z

    .line 542
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/htc/camera/effect/EffectPanelAdapter;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1700(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/effect/EffectPanelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    .line 543
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->ensureEffectItemVisible(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$2500(Lcom/htc/camera/effect/EffectPanelUI;Z)V

    goto :goto_0

    .line 536
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 546
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$17;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/widget/PopupBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->close()V

    goto :goto_0
.end method
