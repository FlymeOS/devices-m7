.class public final Lcom/htc/camera/effect/DepthOfFieldEffect;
.super Lcom/htc/camera/effect/GpuEffectBase;
.source "DepthOfFieldEffect.java"

# interfaces
.implements Lcom/htc/camera/effect/z;


# instance fields
.field private m_Center:Landroid/graphics/PointF;

.field private m_Radius:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 26
    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/GpuEffectBase;-><init>(Ljava/lang/String;Lcom/htc/camera/HTCCamera;)V

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Radius:I

    .line 27
    return-void
.end method

.method private getGpuEffectParameters(Landroid/graphics/PointF;I)Lcom/htc/camera/effect/GpuEffectParameters;
    .locals 7

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->width:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 55
    invoke-virtual {p0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/Size;

    iget v0, v0, Lcom/htc/camera/imaging/Size;->height:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 57
    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param1"

    add-int v4, v2, p2

    const/4 v6, 0x1

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    return-object v0
.end method


# virtual methods
.method protected getAppliedGpuEffectInfo()Lcom/htc/camera/effect/GpuEffectInfo;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v7, Lcom/htc/camera/effect/GpuEffectInfo;

    const-string v8, "2_dof"

    const/4 v0, 0x2

    new-array v9, v0, [Lcom/htc/camera/effect/GpuEffectParameters;

    new-instance v0, Lcom/htc/camera/effect/GpuEffectParameters;

    const-string v1, "GE-param0"

    const/16 v2, 0x64

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/camera/effect/GpuEffectParameters;-><init>(Ljava/lang/String;IIIIZ)V

    aput-object v0, v9, v3

    iget-object v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    iget v1, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Radius:I

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getGpuEffectParameters(Landroid/graphics/PointF;I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v0

    aput-object v0, v9, v6

    invoke-direct {v7, v8, v9}, Lcom/htc/camera/effect/GpuEffectInfo;-><init>(Ljava/lang/String;[Lcom/htc/camera/effect/GpuEffectParameters;)V

    return-object v7
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMenuIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Radius:I

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f080272

    return v0
.end method

.method protected resetParametersOverride()V
    .locals 6

    .prologue
    const-wide v4, 0x400199999999999aL    # 2.2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/high16 v1, 0x3f000000    # 0.5f

    .line 74
    invoke-virtual {p0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->setCenter(Landroid/graphics/PointF;)V

    .line 78
    invoke-virtual {p0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

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

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->setRadius(I)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 83
    invoke-virtual {p0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getCameraActivity()Lcom/htc/camera/HTCCamera;

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

    iput v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Radius:I

    goto :goto_0
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 93
    invoke-virtual {p0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Radius:I

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getGpuEffectParameters(Landroid/graphics/PointF;I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 102
    iput p1, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Radius:I

    .line 103
    invoke-virtual {p0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->isApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/camera/effect/DepthOfFieldEffect;->m_Center:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Lcom/htc/camera/effect/DepthOfFieldEffect;->getGpuEffectParameters(Landroid/graphics/PointF;I)Lcom/htc/camera/effect/GpuEffectParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/effect/DepthOfFieldEffect;->setGpuEffectParameters(Lcom/htc/camera/effect/GpuEffectParameters;)Z

    .line 105
    :cond_0
    return-void
.end method
