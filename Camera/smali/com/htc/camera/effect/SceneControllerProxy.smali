.class final Lcom/htc/camera/effect/SceneControllerProxy;
.super Lcom/htc/camera/effect/ac;
.source "SceneControllerProxy.java"


# instance fields
.field private final m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/component/ComponentBinder",
            "<",
            "Lcom/htc/camera/effect/ac;",
            "Lcom/htc/camera/effect/SceneControllerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    .line 25
    const-string v0, "Scene Controller Proxy (UI)"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/effect/ac;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 26
    new-instance v0, Lcom/htc/camera/component/cb;

    invoke-virtual {p0}, Lcom/htc/camera/effect/SceneControllerProxy;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v1

    const-class v2, Lcom/htc/camera/effect/ac;

    invoke-direct {v0, v1, v2, p0}, Lcom/htc/camera/component/cb;-><init>(Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/component/Component;)V

    iput-object v0, p0, Lcom/htc/camera/effect/SceneControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    .line 31
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/camera/effect/SceneControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->release()V

    .line 43
    invoke-super {p0}, Lcom/htc/camera/effect/ac;->deinitializeOverride()V

    .line 44
    return-void
.end method

.method public setScene(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/effect/SceneControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/htc/camera/effect/SceneControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;Z)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/SceneControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Cannot bind to ISceneController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
