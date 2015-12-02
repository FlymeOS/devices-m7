.class public final Lcom/htc/camera/effect/ai;
.super Lcom/htc/camera/effect/GpuEffectBase;
.source "NashEffect.java"

# interfaces
.implements Lcom/htc/camera/effect/z;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 20
    const-string v7, "nash"

    new-instance v8, Lcom/htc/camera/effect/GpuEffectInfo;

    const-string v9, "D_Stylized_Nash"

    new-array v10, v6, [Lcom/htc/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v10, v2

    invoke-direct {v8, v9, v10}, Lcom/htc/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/htc/camera/effect/GpuEffectParameters;)V

    invoke-direct {p0, v7, p1, v8}, Lcom/htc/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;Lcom/htc/camera/effect/GpuEffectInfo;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/camera/effect/ai;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f08027a

    return v0
.end method
