.class public final Lcom/htc/camera/effect/HdrScene;
.super Lcom/htc/camera/effect/SceneEffectBase;
.source "HdrScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_HdrUI:Lcom/htc/camera/component/HdrUI;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "hdr"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 25
    return-void
.end method

.method private linkToComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-object v0, p0, Lcom/htc/camera/effect/HdrScene;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return v1

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/HdrScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-string v2, "HDR UI"

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/htc/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/HdrUI;

    iput-object v0, p0, Lcom/htc/camera/effect/HdrScene;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

    .line 128
    iget-object v0, p0, Lcom/htc/camera/effect/HdrScene;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

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
    .line 33
    invoke-direct {p0}, Lcom/htc/camera/effect/HdrScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/htc/camera/effect/HdrScene;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/HdrUI;->enterHdrMode(I)V

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/HdrScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to HDR UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/htc/camera/effect/HdrScene;->linkToComponents()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->willRestartPreviewAfterApplying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/htc/camera/effect/HdrScene;->m_HdrUI:Lcom/htc/camera/component/HdrUI;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/htc/camera/component/HdrUI;->exitHdrMode(I)V

    .line 52
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 47
    goto :goto_0

    :cond_2
    move v1, v2

    .line 48
    goto :goto_1

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/effect/HdrScene;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to HDR UI"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/camera/effect/HdrScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f08021b

    return v0
.end method

.method public isFastShotToShotMode()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public isFlashSupported()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
