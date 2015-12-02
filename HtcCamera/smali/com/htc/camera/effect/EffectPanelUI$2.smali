.class Lcom/htc/camera/effect/EffectPanelUI$2;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$2;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$2;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/widget/PopupBubble;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$2;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # getter for: Lcom/htc/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/htc/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$100(Lcom/htc/camera/effect/EffectPanelUI;)Lcom/htc/camera/widget/PopupBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/widget/PopupBubble;->close()V

    .line 219
    :cond_0
    return-void
.end method
