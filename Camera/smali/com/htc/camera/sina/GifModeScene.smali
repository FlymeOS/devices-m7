.class public final Lcom/htc/camera/sina/GifModeScene;
.super Lcom/htc/camera/effect/SceneEffectBase;
.source "GifModeScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_UI:Lcom/htc/camera/sina/GifModeUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 28
    const-string v0, "gifmode"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 66
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeScene;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return v1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "Gif Mode UI"

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/sina/GifModeUI;

    iput-object v0, p0, Lcom/htc/camera/sina/GifModeScene;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    .line 179
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeScene;->m_UI:Lcom/htc/camera/sina/GifModeUI;

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
    .line 81
    return-void
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public getCapabilities()I
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->ishtcChina()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeScene;->TAG:Ljava/lang/String;

    const-string v1, "non-China sku no GIF"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x11

    goto :goto_0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/htc/camera/sina/GifModeScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f08039d

    return v0
.end method

.method public isFastShotToShotMode()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public isFixedResolution()Z
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public isSelfTimerSupported()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    if-ne p1, p0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeScene;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - prevEffect is the same. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 195
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeScene;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    invoke-virtual {v1, v0}, Lcom/htc/camera/sina/GifModeUI;->enterGifMode(I)V

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to GifMode UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-direct {p0}, Lcom/htc/camera/sina/GifModeScene;->linkToComponents()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    if-ne p1, p0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeScene;->TAG:Ljava/lang/String;

    const-string v1, "cancelEffect() - nextEffect is the same. Return"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v1, 0x0

    .line 215
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 219
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/sina/GifModeScene;->m_UI:Lcom/htc/camera/sina/GifModeUI;

    invoke-virtual {v1, v0}, Lcom/htc/camera/sina/GifModeUI;->exitGifMode(I)V

    goto :goto_0

    .line 217
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->willRestartPreviewAfterApplying()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_1

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/sina/GifModeScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to GifMode UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public willRestartPreviewAfterApplying()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method
