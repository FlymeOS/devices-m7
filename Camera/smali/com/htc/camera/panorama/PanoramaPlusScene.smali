.class public final Lcom/htc/camera/panorama/PanoramaPlusScene;
.super Lcom/htc/camera/effect/EffectBase;
.source "PanoramaPlusScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method private linkToComponent()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusScene;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusUI;

    iput-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusScene;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    .line 138
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusScene;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

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
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusScene;->linkToComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusScene;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->enter(I)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusScene;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - No PanoramaPlusUI component"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x11

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/htc/camera/panorama/PanoramaPlusScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f08020e

    return v0
.end method

.method public isFixedResolution()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0}, Lcom/htc/camera/panorama/PanoramaPlusScene;->linkToComponent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    if-ne p1, p0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusScene;->TAG:Ljava/lang/String;

    const-string v1, "prepareCancelEffect() - nextEffect is the same. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 63
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    .line 67
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->use3DPreviewRendering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusScene;->m_UI:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-virtual {v1, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->exit(I)V

    goto :goto_0

    .line 65
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->willRestartPreviewAfterApplying()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_1

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/panorama/PanoramaPlusScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to panorama UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public use3DPreviewRendering()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public willRestartPreviewAfterApplying()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method
