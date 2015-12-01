.class public abstract Lcom/htc/camera/effect/VideoSceneBase;
.super Lcom/htc/camera/effect/EffectBase;
.source "VideoSceneBase.java"


# instance fields
.field private m_SceneController:Lcom/htc/camera/effect/IVideoSceneController;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isFixedResolution()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method protected final linkToSceneController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneBase;->m_SceneController:Lcom/htc/camera/effect/IVideoSceneController;

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return v1

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneBase;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/effect/IVideoSceneController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/IVideoSceneController;

    iput-object v0, p0, Lcom/htc/camera/effect/VideoSceneBase;->m_SceneController:Lcom/htc/camera/effect/IVideoSceneController;

    .line 82
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneBase;->m_SceneController:Lcom/htc/camera/effect/IVideoSceneController;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneBase;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/effect/VideoSceneBase;->m_SceneController:Lcom/htc/camera/effect/IVideoSceneController;

    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/effect/IVideoSceneController;->setScene(Ljava/lang/String;I)V

    .line 97
    :goto_1
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneBase;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find video scene controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    .line 105
    instance-of v0, p1, Lcom/htc/camera/effect/VideoSceneBase;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/VideoSceneBase;->linkToSceneController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/effect/VideoSceneBase;->m_SceneController:Lcom/htc/camera/effect/IVideoSceneController;

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/htc/camera/effect/IVideoSceneController;->setScene(Ljava/lang/String;I)V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/VideoSceneBase;->TAG:Ljava/lang/String;

    const-string v1, "Cannot find video scene controller"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseCachedResources()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/effect/VideoSceneBase;->m_SceneController:Lcom/htc/camera/effect/IVideoSceneController;

    .line 122
    invoke-super {p0}, Lcom/htc/camera/effect/EffectBase;->releaseCachedResources()V

    .line 123
    return-void
.end method
