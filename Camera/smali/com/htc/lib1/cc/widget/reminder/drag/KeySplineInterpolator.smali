.class public Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;
.super Ljava/lang/Object;
.source "KeySplineInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private m_fX1:F

.field private m_fX2:F

.field private m_fY1:F

.field private m_fY2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fX1:F

    .line 15
    iput p3, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fX2:F

    .line 16
    iput p2, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fY1:F

    .line 17
    iput p4, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fY2:F

    .line 18
    return-void
.end method


# virtual methods
.method calcA(FF)F
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, v2, p2

    sub-float/2addr v0, v1

    mul-float v1, v2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method calcB(FF)F
    .locals 2

    .prologue
    .line 52
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p2

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method calcBezier(FFF)F
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->calcA(FF)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, p2, p3}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->calcB(FF)F

    move-result v1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->calcC(F)F

    move-result v1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method calcC(F)F
    .locals 1

    .prologue
    .line 56
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 3

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fX1:F

    iget v1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fY1:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fX2:F

    iget v1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fY2:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->getTForX(F)F

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fY1:F

    iget v2, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fY2:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->calcBezier(FFF)F

    move-result p1

    goto :goto_0
.end method

.method getSlope(FFF)F
    .locals 3

    .prologue
    .line 40
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, p2, p3}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->calcA(FF)F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, p2, p3}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->calcB(FF)F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, p2}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->calcC(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method getTForX(F)F
    .locals 7

    .prologue
    .line 22
    .line 23
    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 24
    iget v2, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fX1:F

    iget v3, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fX2:F

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->getSlope(FFF)F

    move-result v2

    .line 25
    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    .line 29
    :cond_0
    return v0

    .line 26
    :cond_1
    iget v3, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fX1:F

    iget v4, p0, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->m_fX2:F

    invoke-virtual {p0, v0, v3, v4}, Lcom/htc/lib1/cc/widget/reminder/drag/KeySplineInterpolator;->calcBezier(FFF)F

    move-result v3

    sub-float/2addr v3, p1

    .line 27
    div-float v2, v3, v2

    sub-float v2, v0, v2

    .line 23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method
