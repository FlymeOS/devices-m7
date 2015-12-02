.class final Lcom/htc/camera/effect/VideoSceneControllerProxy;
.super Lcom/htc/camera/effect/IVideoSceneController;
.source "VideoSceneControllerProxy.java"


# instance fields
.field private final m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/component/ComponentBinder",
            "<",
            "Lcom/htc/camera/effect/IVideoSceneController;",
            "Lcom/htc/camera/effect/VideoSceneControllerProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    .line 28
    const-string v1, "Video Scene Controller Proxy (UI)"

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/effect/IVideoSceneController;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;Z)V

    .line 31
    new-instance v0, Lcom/htc/camera/effect/VideoSceneControllerProxy$1;

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v2

    const-class v3, Lcom/htc/camera/effect/IVideoSceneController;

    iget-object v5, p0, Lcom/htc/camera/effect/VideoSceneControllerProxy;->propertyOwnerKey:Ljava/lang/Object;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/effect/VideoSceneControllerProxy$1;-><init>(Lcom/htc/camera/effect/VideoSceneControllerProxy;Lcom/htc/camera/component/au;Ljava/lang/Class;Lcom/htc/camera/effect/VideoSceneControllerProxy;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/camera/effect/VideoSceneControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    .line 61
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->release()V

    .line 73
    invoke-super {p0}, Lcom/htc/camera/effect/IVideoSceneController;->deinitializeOverride()V

    .line 74
    return-void
.end method

.method public setScene(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->bindToSourceComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneControllerProxy;->m_ComponentBinder:Lcom/htc/camera/component/ComponentBinder;

    invoke-virtual {v0}, Lcom/htc/camera/component/ComponentBinder;->getSourceComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IVideoSceneController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/camera/effect/IVideoSceneController;->setScene(Ljava/lang/String;I)V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneControllerProxy;->TAG:Ljava/lang/String;

    const-string v1, "setScene() - Cannot bind to IVideoSceneController"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
