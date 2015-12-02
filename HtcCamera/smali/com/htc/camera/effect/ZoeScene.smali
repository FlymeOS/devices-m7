.class public final Lcom/htc/camera/effect/ZoeScene;
.super Lcom/htc/camera/effect/EffectBase;
.source "ZoeScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# instance fields
.field private m_Controller:Lcom/htc/camera/zoe/IZoeController;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 26
    const-string v0, "Zoe"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/EffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 27
    return-void
.end method

.method private linkToController()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 90
    iget-object v0, p0, Lcom/htc/camera/effect/ZoeScene;->m_Controller:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return v1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/ZoeScene;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v2, Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v0, v2}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/IZoeController;

    iput-object v0, p0, Lcom/htc/camera/effect/ZoeScene;->m_Controller:Lcom/htc/camera/zoe/IZoeController;

    .line 93
    iget-object v0, p0, Lcom/htc/camera/effect/ZoeScene;->m_Controller:Lcom/htc/camera/zoe/IZoeController;

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
    .line 45
    return-void
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x11

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/htc/camera/effect/EffectBase;->getDisabledImageSettings()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected prepareApplyEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/htc/camera/effect/ZoeScene;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/htc/camera/effect/ZoeScene;->m_Controller:Lcom/htc/camera/zoe/IZoeController;

    invoke-virtual {v1, v0}, Lcom/htc/camera/zoe/IZoeController;->enter(I)Z

    .line 110
    :goto_1
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/effect/ZoeScene;->TAG:Ljava/lang/String;

    const-string v1, "prepareApplyEffect() - No IZoeController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected prepareCancelEffect(Lcom/htc/camera/effect/EffectBase;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    if-eq p1, p0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/htc/camera/effect/ZoeScene;->linkToController()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/camera/effect/EffectBase;->willRestartPreviewAfterApplying()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/effect/ZoeScene;->m_Controller:Lcom/htc/camera/zoe/IZoeController;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Lcom/htc/camera/zoe/IZoeController;->exit(I)V

    .line 132
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/effect/ZoeScene;->TAG:Ljava/lang/String;

    const-string v1, "applyEffect() - No IZoeController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public willRestartPreviewAfterApplying()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method
