.class public final Lcom/htc/camera/effect/DotsEffect;
.super Lcom/htc/camera/effect/GpuEffectBase;
.source "DotsEffect.java"

# interfaces
.implements Lcom/htc/camera/effect/z;


# instance fields
.field private m_DotSize:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 21
    const-string v0, "dots"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 14
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/camera/effect/DotsEffect;->m_DotSize:I

    .line 22
    return-void
.end method

.method private getDotSizeParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/4 v6, 0x1

    move v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method


# virtual methods
.method protected getAppliedGpuEffectInfo()Lcom/htc/camera/effect/GpuEffectInfo;
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lcom/htc/camera/effect/GpuEffectInfo;

    const-string v1, "5_dots"

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/htc/camera/effect/GpuEffectParameters;

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/camera/effect/DotsEffect;->m_DotSize:I

    invoke-direct {p0, v4}, Lcom/htc/camera/effect/DotsEffect;->getDotSizeParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/htc/camera/effect/GpuEffectParameters;)V

    return-object v0
.end method

.method public getDotSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/htc/camera/effect/DotsEffect;->m_DotSize:I

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/htc/camera/effect/DotsEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 84
    const v0, 0x7f080278

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 57
    invoke-virtual {p0}, Lcom/htc/camera/effect/DotsEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lcom/htc/camera/effect/DotsEffect;->setDotSize(I)V

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    iput v1, p0, Lcom/htc/camera/effect/DotsEffect;->m_DotSize:I

    goto :goto_0
.end method

.method public setDotSize(I)V
    .locals 1

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/camera/effect/DotsEffect;->m_DotSize:I

    .line 69
    invoke-virtual {p0}, Lcom/htc/camera/effect/DotsEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/DotsEffect;->getDotSizeParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/DotsEffect;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;)Z

    .line 71
    :cond_0
    return-void
.end method
