.class public final Lcom/htc/camera/effect/DistortionEffect;
.super Lcom/htc/camera/effect/GpuEffectBase;
.source "DistortionEffect.java"

# interfaces
.implements Lcom/htc/camera/effect/z;


# instance fields
.field private m_Center:Landroid/graphics/PointF;

.field private m_Distortion:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 24
    const-string v0, "distortion"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    .line 25
    return-void
.end method

.method private getCenterParameters(Landroid/graphics/PointF;)Lcom/htc/camera/effect/GpuEffectParameters;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 52
    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    invoke-virtual {p0}, Lcom/htc/camera/effect/DistortionEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v2}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/camera/imaging/Size;

    iget v2, v2, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/htc/camera/effect/DistortionEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v3}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/camera/imaging/Size;

    iget v3, v3, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v3, v3

    iget v5, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v6, 0x1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method

.method private getDistortionParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 74
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
    .line 33
    new-instance v0, Lcom/htc/camera/effect/GpuEffectInfo;

    const-string v1, "3_distortion"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/htc/camera/effect/GpuEffectParameters;

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Distortion:I

    invoke-direct {p0, v4}, Lcom/htc/camera/effect/DistortionEffect;->getDistortionParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    invoke-direct {p0, v4}, Lcom/htc/camera/effect/DistortionEffect;->getCenterParameters(Landroid/graphics/PointF;)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/htc/camera/effect/GpuEffectParameters;)V

    return-object v0
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDistortion()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Distortion:I

    return v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/htc/camera/effect/DistortionEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f080273

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 83
    invoke-virtual {p0}, Lcom/htc/camera/effect/DistortionEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/DistortionEffect;->setCenter(Landroid/graphics/PointF;)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/htc/camera/effect/DistortionEffect;->setDistortion(I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 91
    iput v2, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Distortion:I

    goto :goto_0
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Center:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 101
    invoke-virtual {p0}, Lcom/htc/camera/effect/DistortionEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/DistortionEffect;->getCenterParameters(Landroid/graphics/PointF;)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/DistortionEffect;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public setDistortion(I)V
    .locals 1

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/camera/effect/DistortionEffect;->m_Distortion:I

    .line 111
    invoke-virtual {p0}, Lcom/htc/camera/effect/DistortionEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/htc/camera/effect/DistortionEffect;->getDistortionParameters(I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/DistortionEffect;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;)Z

    .line 113
    :cond_0
    return-void
.end method
