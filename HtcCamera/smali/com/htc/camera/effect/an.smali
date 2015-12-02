.class public Lcom/htc/camera/effect/an;
.super Lcom/htc/camera/effect/VideoSceneBase;
.source "NormalVideoScene.java"

# interfaces
.implements Lcom/htc/camera/effect/ad;


# direct methods
.method protected constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 16
    const-string v0, "normal-video"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/VideoSceneBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getCapabilities()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7fffffff

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/camera/effect/an;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f080207

    return v0
.end method

.method public isFixedResolution()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
