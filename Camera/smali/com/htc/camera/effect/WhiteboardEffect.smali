.class public Lcom/htc/camera/effect/WhiteboardEffect;
.super Lcom/htc/camera/effect/GpuEffectBase;
.source "WhiteboardEffect.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_ISceneController:Lcom/htc/camera/effect/ac;


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/camera/effect/WhiteboardEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/effect/ac;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/ac;

    iput-object v0, p0, Lcom/htc/camera/effect/WhiteboardEffect;->m_ISceneController:Lcom/htc/camera/effect/ac;

    .line 60
    iget-object v0, p0, Lcom/htc/camera/effect/WhiteboardEffect;->m_ISceneController:Lcom/htc/camera/effect/ac;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/camera/effect/WhiteboardEffect;->m_ISceneController:Lcom/htc/camera/effect/ac;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/ac;->setScene(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/camera/effect/GpuEffectBase;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 64
    return-void
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/camera/effect/GpuEffectBase;->cancelEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 46
    instance-of v0, p1, Lcom/htc/camera/effect/GpuEffectBase;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/htc/camera/effect/WhiteboardEffect;->getEffectController()Lcom/htc/camera/effect/aa;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/effect/aa;->setGpuEffect(Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/WhiteboardEffect;->TAG:Ljava/lang/String;

    const-string v1, "No GPU effect controller to clear effect"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/htc/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f08026a

    return v0
.end method
