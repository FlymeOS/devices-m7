.class Lcom/htc/camera/effect/EffectControlUI$4;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/OneValueEventArgs",
        "<",
        "Lcom/htc/camera/effect/EffectBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectControlUI;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/camera/effect/EffectControlUI$4;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/OneValueEventArgs",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/htc/camera/effect/z;

    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/htc/camera/effect/EffectControlUI$4;->this$0:Lcom/htc/camera/effect/EffectControlUI;

    iget-object v0, p3, Lcom/htc/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    # invokes: Lcom/htc/camera/effect/EffectControlUI;->onEffectCanceled(Lcom/htc/camera/effect/EffectBase;)V
    invoke-static {v1, v0}, Lcom/htc/camera/effect/EffectControlUI;->access$300(Lcom/htc/camera/effect/EffectControlUI;Lcom/htc/camera/effect/EffectBase;)V

    .line 203
    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 197
    check-cast p3, Lcom/htc/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/effect/EffectControlUI$4;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/OneValueEventArgs;)V

    return-void
.end method
