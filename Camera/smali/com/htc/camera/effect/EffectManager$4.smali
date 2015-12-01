.class Lcom/htc/camera/effect/EffectManager$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "EffectManager.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/effect/EffectManager;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/htc/camera/effect/EffectManager$4;->this$0:Lcom/htc/camera/effect/EffectManager;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$4;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$1100(Lcom/htc/camera/effect/EffectManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 716
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->releaseCachedResources()V

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$4;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$1200(Lcom/htc/camera/effect/EffectManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 720
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->releaseCachedResources()V

    goto :goto_1

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/EffectManager$4;->this$0:Lcom/htc/camera/effect/EffectManager;

    # getter for: Lcom/htc/camera/effect/EffectManager;->m_AllVideoScenes:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/camera/effect/EffectManager;->access$1300(Lcom/htc/camera/effect/EffectManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 724
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->releaseCachedResources()V

    goto :goto_2

    .line 729
    :cond_2
    return-void
.end method
