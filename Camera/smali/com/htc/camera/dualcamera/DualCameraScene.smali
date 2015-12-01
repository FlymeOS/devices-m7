.class public final Lcom/htc/camera/dualcamera/DualCameraScene;
.super Lcom/htc/camera/effect/EffectBase;
.source "DualCameraScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method private linkToComponent()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraScene;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/DualCameraUI;

    iput-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraScene;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    .line 106
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraScene;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraScene;->linkToComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraScene;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->enter(I)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraScene;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - Cannot link to component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/camera/dualcamera/DualCameraScene;->linkToComponent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->use3DPreviewRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraScene;->m_UI:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v1, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->exit(I)V

    .line 53
    :goto_1
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraScene;->TAG:Ljava/lang/String;

    const-string v1, "cancelEffect() - Cannot link to component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->isDualCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/16 v0, 0x75

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraScene;->TAG:Ljava/lang/String;

    const-string v1, "Dual capture is not supported."

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/htc/camera/dualcamera/DualCameraScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f080211

    return v0
.end method

.method public use3DPreviewRendering()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public willRestartPreviewAfterApplying()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method
