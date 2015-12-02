.class final Lcom/htc/camera/effect/EffectManager$EffectContextHandle;
.super Lcom/htc/camera/CloseableHandle;
.source "EffectManager.java"


# instance fields
.field public effectContext:Lcom/htc/camera/effect/EffectContext;

.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method public constructor <init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectContext;)V
    .locals 1

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->this$0:Lcom/htc/camera/effect/EffectManager;

    .line 136
    const-string v0, "EffectContext"

    invoke-direct {p0, v0}, Lcom/htc/camera/CloseableHandle;-><init>(Ljava/lang/String;)V

    .line 137
    iput-object p2, p0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    .line 138
    return-void
.end method


# virtual methods
.method public clearEffects()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectContext;->clearEffects()V

    .line 143
    return-void
.end method

.method public clearEffectsAndScenes()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->effectContext:Lcom/htc/camera/effect/EffectContext;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectContext;->clearEffectsAndScenes()V

    .line 148
    return-void
.end method

.method protected onClose(I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$EffectContextHandle;->this$0:Lcom/htc/camera/effect/EffectManager;

    # invokes: Lcom/htc/camera/effect/EffectManager;->deleteEffectContext(Lcom/htc/camera/effect/EffectManager$EffectContextHandle;I)V
    invoke-static {v0, p0, p1}, Lcom/htc/camera/effect/EffectManager;->access$000(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/effect/EffectManager$EffectContextHandle;I)V

    .line 154
    return-void
.end method
