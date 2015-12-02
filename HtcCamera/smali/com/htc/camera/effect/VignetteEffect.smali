.class public final Lcom/htc/camera/effect/VignetteEffect;
.super Lcom/htc/camera/effect/GpuEffectBase;
.source "VignetteEffect.java"

# interfaces
.implements Lcom/htc/camera/effect/z;


# instance fields
.field private m_Radius:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 1

    .prologue
    .line 26
    const-string v0, "vignette"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/effect/VignetteEffect;->m_Radius:I

    .line 27
    return-void
.end method

.method private getRadiusParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;
    .locals 7

    .prologue
    .line 71
    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v4}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/camera/imaging/Size;

    iget v4, v4, Lcom/htc/camera/imaging/Size;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v5}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/camera/imaging/Size;

    iget v5, v5, Lcom/htc/camera/imaging/Size;->height:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method


# virtual methods
.method protected getAppliedGpuEffectInfo()Lcom/htc/camera/effect/GpuEffectInfo;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v7, Lcom/htc/camera/effect/GpuEffectInfo;

    const-string v8, "4_spotlight"

    const/4 v0, 0x2

    new-array v9, v0, [Lcom/htc/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/16 v2, 0x46

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v9, v3

    iget v0, p0, Lcom/htc/camera/effect/VignetteEffect;->m_Radius:I

    invoke-direct {p0, v0}, Lcom/htc/camera/effect/VignetteEffect;->getRadiusParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v0

    aput-object v0, v9, v6

    invoke-direct {v7, v8, v9}, Lcom/htc/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/htc/camera/effect/GpuEffectParameters;)V

    return-object v7
.end method

.method public getAppliedImageSettings()Lcom/htc/camera/ImageSettings;
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/htc/camera/effect/GpuEffectBase;->getAppliedImageSettings()Lcom/htc/camera/ImageSettings;

    move-result-object v0

    .line 36
    const v1, 0x3e2b020c    # 0.167f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/ImageSettings;->brightness:Ljava/lang/Float;

    .line 37
    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/ImageSettings;->contrast:Ljava/lang/Float;

    .line 38
    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/camera/ImageSettings;->saturation:Ljava/lang/Float;

    .line 39
    return-object v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/htc/camera/effect/VignetteEffect;->m_Radius:I

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f080274

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 6

    .prologue
    const-wide v4, 0x400199999999999aL    # 2.2

    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 85
    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/VignetteEffect;->setRadius(I)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/htc/camera/effect/VignetteEffect;->m_Radius:I

    goto :goto_0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 96
    iput p1, p0, Lcom/htc/camera/effect/VignetteEffect;->m_Radius:I

    .line 97
    invoke-virtual {p0}, Lcom/htc/camera/effect/VignetteEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/VignetteEffect;->getRadiusParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/VignetteEffect;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;)Z

    .line 99
    :cond_0
    return-void
.end method
