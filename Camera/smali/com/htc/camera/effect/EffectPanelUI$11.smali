.class Lcom/htc/camera/effect/EffectPanelUI$11;
.super Lcom/htc/camera/trigger/Trigger;
.source "EffectPanelUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectPanelUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelUI$11;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelUI$11;->this$0:Lcom/htc/camera/effect/EffectPanelUI;

    # invokes: Lcom/htc/camera/effect/EffectPanelUI;->openUI()V
    invoke-static {v0}, Lcom/htc/camera/effect/EffectPanelUI;->access$1800(Lcom/htc/camera/effect/EffectPanelUI;)V

    .line 438
    return-void
.end method
