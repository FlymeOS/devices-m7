.class public final Lcom/htc/camera/effect/PanoramaScene;
.super Lcom/htc/camera/effect/SceneEffectBase;
.source "PanoramaScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "panorama"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 25
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 147
    iget-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return v1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/PanoramaScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Panorama UI2"

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaUI2;

    iput-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    .line 150
    iget-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

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
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x11

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/htc/camera/effect/PanoramaScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f08020a

    return v0
.end method

.method public isFastShotToShotMode()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isFixedResolution()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/htc/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    if-ne p1, p0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - prevEffect is the same. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 166
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 167
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/htc/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    invoke-virtual {v1, v0}, Lcom/htc/camera/component/PanoramaUI2;->enterPanoramaMode(I)V

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->TAG:Ljava/lang/String;

    const-string v1, "m_PanoramaUI null,enterPanoramaMode "

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-direct {p0}, Lcom/htc/camera/effect/PanoramaScene;->linkToComponents()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    if-ne p1, p0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->TAG:Ljava/lang/String;

    const-string v1, "cancelEffect() - nextEffect is the same. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 190
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 194
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    if-eqz v1, :cond_4

    .line 195
    iget-object v1, p0, Lcom/htc/camera/effect/PanoramaScene;->m_PanoramaUI:Lcom/htc/camera/component/PanoramaUI2;

    invoke-virtual {v1, v0}, Lcom/htc/camera/component/PanoramaUI2;->exitPanoramaMode(I)V

    goto :goto_0

    .line 192
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->willRestartPreviewAfterApplying()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_1

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->TAG:Ljava/lang/String;

    const-string v1, "m_PanoramaUI null, exitPanoramaMode"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/effect/PanoramaScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public willRestartPreviewAfterApplying()Z
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->useSpecialPanoramaResolutions()Z

    move-result v0

    return v0
.end method
