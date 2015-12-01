.class public Lcom/htc/camera/effect/bm;
.super Lcom/htc/camera/effect/GpuEffectBase;
.source "VintageRedEffect.java"

# interfaces
.implements Lcom/htc/camera/effect/z;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 12

    .prologue
    .line 13
    const-string v7, "vintage-red"

    new-instance v8, Lcom/htc/camera/effect/GpuEffectInfo;

    const-string v9, "1_lomo"

    const/4 v0, 0x2

    new-array v10, v0, [Lcom/htc/camera/effect/GpuEffectParameters;

    const/4 v11, 0x0

    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v11

    const/4 v11, 0x1

    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v11

    invoke-direct {v8, v9, v10}, Lcom/htc/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/htc/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/htc/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htc/camera/effect/bm;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f080275

    return v0
.end method
