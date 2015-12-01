.class Lcom/htc/camera/effect/EffectControlUI$18;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$18;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$18;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->getFakeUIRotation()Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1400(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    .line 418
    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControlUI$18;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->getUIRotation()Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectControlUI;->access$1500(Lcom/htc/camera/effect/EffectControlUI;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$18;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-virtual {v1, v0, v0}, Lcom/htc/camera/effect/EffectControlUI;->onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$18;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-virtual {v1, v0, v0}, Lcom/htc/camera/effect/EffectControlUI;->onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    goto :goto_0
.end method
