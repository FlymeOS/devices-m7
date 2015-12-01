.class public final Lcom/htc/camera/effect/ap;
.super Lcom/htc/camera/effect/SceneEffectBase;
.source "PortraitScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 15
    const-string v0, "portrait"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/htc/camera/effect/SceneEffectBase;->applyEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 34
    return-void
.end method

.method protected cancelEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/htc/camera/effect/SceneEffectBase;->cancelEffect(Lcom/htc/camera/effect/EffectBase;)V

    .line 52
    return-void
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getCapabilities()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/effect/ap;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f0803a5

    return v0
.end method
