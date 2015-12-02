.class public final Lcom/htc/camera/effect/e;
.super Lcom/htc/camera/effect/SceneEffectBase;
.source "CloseUpScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ab;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 12
    const-string v0, "flowers"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getCapabilities()I
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/htc/camera/effect/SceneEffectBase;->getCapabilities()I

    move-result v0

    .line 37
    and-int/lit8 v0, v0, -0x5

    .line 38
    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/htc/camera/effect/e;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f0803af

    return v0
.end method
