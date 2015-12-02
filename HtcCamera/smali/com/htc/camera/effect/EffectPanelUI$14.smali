.class Lcom/htc/camera/effect/EffectPanelUI$14;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/htc/camera/widget/h;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$14;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/htc/camera/widget/PopupBubble;)V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$14;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const/16 v1, 0x2711

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectPanelUI;->access$1900(Lcom/htc/camera/effect/EffectPanelUI;I)V

    .line 483
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$14;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->effectPanelState:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2000(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Closing:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$14;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->effectPanelState:Lcom/htc/camera/property/Property;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$2000(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/UIState;->Closed:Lcom/htc/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 485
    return-void
.end method
