.class public final Lcom/htc/camera/effect/ae;
.super Lcom/htc/camera/effect/SceneEffectBase;
.source "LandscapeScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 13
    const-string v0, "landscape"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getCapabilities()I
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getCapabilities()I

    move-result v0

    .line 38
    and-int/lit8 v0, v0, -0x5

    .line 39
    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/camera/effect/ae;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0803a6

    return v0
.end method
