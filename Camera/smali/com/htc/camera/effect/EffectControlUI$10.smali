.class Lcom/htc/camera/effect/EffectControlUI$10;
.super Lcom/htc/camera/trigger/Trigger;
.source "EffectControlUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$10;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$10;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/effect/EffectControlUI;->access$002(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    .line 266
    return-void
.end method
