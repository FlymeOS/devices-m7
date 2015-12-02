.class final Lcom/htc/camera/effect/EffectControllerProxy;
.super Lcom/htc/camera/effect/aa;
.source "EffectControllerProxy.java"


# instance fields
.field private final m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/component/ComponentBinder",
            "<",
            "Lcom/htc/camera/effect/aa;",
            "Lcom/htc/camera/effect/EffectControllerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 25
    const-string v0, "Effect Controller Proxy (UI)"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/effect/aa;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 26
    new-instance v0, Lcom/htc/camera/component/cb;

    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectControllerProxy;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/htc/camera/effect/aa;

    invoke-direct {v0, v1, v2, p0}, Lcom/htc/camera/component/cb;-><init>(Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/Component;)V

    iput-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    .line 30
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->release()V

    .line 42
    invoke-super {p0}, Lcom/htc/camera/effect/aa;->deinitializeOverride()V

    .line 43
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/effect/aa;->setColorEffect(Ljava/lang/String;Z)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "setColorEffect() - Cannot bind to IEffectController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;Z)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;Z)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffect() - Cannot bind to IEffectController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;Z)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/aa;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/effect/aa;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;Z)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "setGpuEffectParameters() - Cannot bind to IEffectController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
