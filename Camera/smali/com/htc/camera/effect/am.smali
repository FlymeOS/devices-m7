.class public Lcom/htc/camera/effect/am;
.super Lcom/htc/camera/effect/ColorEffectBase;
.source "NoneEffect.java"

# interfaces
.implements Lcom/htc/camera/effect/z;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 16
    const-string v0, "none"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/ColorEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getCapabilities()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7fffffff

    return v0
.end method

.method public getDisabledImageSettings()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/camera/effect/am;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f08038d

    return v0
.end method
