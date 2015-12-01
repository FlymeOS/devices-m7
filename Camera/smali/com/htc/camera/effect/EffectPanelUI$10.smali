.class Lcom/htc/camera/effect/EffectPanelUI$10;
.super Lcom/htc/camera/trigger/Trigger;
.source "EffectPanelUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$10;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$10;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/widget/PopupBubble;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$10;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/widget/PopupBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->close()V

    .line 430
    :cond_0
    return-void
.end method
