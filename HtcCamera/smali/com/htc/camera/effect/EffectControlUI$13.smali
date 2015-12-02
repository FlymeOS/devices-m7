.class Lcom/htc/camera/effect/EffectControlUI$13;
.super Lcom/htc/camera/trigger/Trigger;
.source "EffectControlUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$13;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$13;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->hideControls()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$100(Lcom/htc/camera/effect/EffectControlUI;)V

    .line 313
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$13;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/effect/EffectControlUI;->m_IsControlsNeeded:Z
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectControlUI;->access$602(Lcom/htc/camera/effect/EffectControlUI;Z)Z

    .line 314
    return-void
.end method
