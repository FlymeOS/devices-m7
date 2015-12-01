.class Lcom/htc/camera/effect/EffectPanelUI$18;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$18;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 554
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$18;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/widget/PopupBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$18;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelUI$18;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    const/16 v2, 0x2711

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const/4 v8, 0x1

    move v4, v3

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z
    invoke-static/range {v0 .. v8}, Lcom/htc/camera/effect/EffectPanelUI;->access$2600(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 556
    :cond_0
    return v3
.end method
