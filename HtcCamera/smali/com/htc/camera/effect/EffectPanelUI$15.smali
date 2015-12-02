.class Lcom/htc/camera/effect/EffectPanelUI$15;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/htc/camera/widget/i;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$15;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lcom/htc/camera/widget/PopupBubble;)V
    .locals 6

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$15;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$15;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const/16 v2, 0x2711

    const-wide/16 v3, 0x1388

    const/4 v5, 0x1

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->sendMessage(Lcom/htc/camera/component/Component;IJZ)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/effect/EffectPanelUI;->access$2100(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/component/Component;IJZ)Z

    .line 493
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$15;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->effectPanelState:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2000(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opening:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$15;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->effectPanelState:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2000(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Opened:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method
