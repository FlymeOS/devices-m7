.class public Lcom/htc/camera/gl/Quadrangle;
.super Lcom/htc/camera/gl/Shape;
.source "Quadrangle.java"


# instance fields
.field private final m_Points:[Lcom/htc/camera/gl/Point3D;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/camera/gl/Shape;-><init>()V

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/gl/Point3D;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/gl/Point3D;

    invoke-direct {v2}, Lcom/htc/camera/gl/Point3D;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/gl/Point3D;

    invoke-direct {v2}, Lcom/htc/camera/gl/Point3D;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/camera/gl/Point3D;

    invoke-direct {v2}, Lcom/htc/camera/gl/Point3D;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/camera/gl/Point3D;

    invoke-direct {v2}, Lcom/htc/camera/gl/Point3D;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    .line 21
    return-void
.end method


# virtual methods
.method protected onUpdateVertices()[Lcom/htc/camera/gl/Point3D;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    return-object v0
.end method

.method public final setBounds(FFFF)V
    .locals 6

    .prologue
    .line 81
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/gl/Quadrangle;->setBounds(FFFFF)V

    .line 82
    return-void
.end method

.method public final setBounds(FFFFF)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v3

    iput p1, v0, Lcom/htc/camera/gl/Point3D;->x:F

    .line 86
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v3

    iput p2, v0, Lcom/htc/camera/gl/Point3D;->y:F

    .line 87
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v3

    iput p5, v0, Lcom/htc/camera/gl/Point3D;->z:F

    .line 88
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v1

    iput p3, v0, Lcom/htc/camera/gl/Point3D;->x:F

    .line 89
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v1

    iput p2, v0, Lcom/htc/camera/gl/Point3D;->y:F

    .line 90
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v1

    iput p5, v0, Lcom/htc/camera/gl/Point3D;->z:F

    .line 91
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v2

    iput p3, v0, Lcom/htc/camera/gl/Point3D;->x:F

    .line 92
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v2

    iput p4, v0, Lcom/htc/camera/gl/Point3D;->y:F

    .line 93
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v2

    iput p5, v0, Lcom/htc/camera/gl/Point3D;->z:F

    .line 94
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v4

    iput p1, v0, Lcom/htc/camera/gl/Point3D;->x:F

    .line 95
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v4

    iput p4, v0, Lcom/htc/camera/gl/Point3D;->y:F

    .line 96
    iget-object v0, p0, Lcom/htc/camera/gl/Quadrangle;->m_Points:[Lcom/htc/camera/gl/Point3D;

    aget-object v0, v0, v4

    iput p5, v0, Lcom/htc/camera/gl/Point3D;->z:F

    .line 97
    invoke-virtual {p0}, Lcom/htc/camera/gl/Quadrangle;->invalidateVertices()V

    .line 98
    return-void
.end method

.method public final setBounds(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/camera/gl/Quadrangle;->setBounds(Landroid/graphics/RectF;F)V

    .line 70
    return-void
.end method

.method public final setBounds(Landroid/graphics/RectF;F)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 73
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 74
    :goto_0
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    .line 75
    :goto_1
    if-eqz p1, :cond_3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 76
    :goto_2
    if-eqz p1, :cond_0

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    :cond_0
    move-object v0, p0

    move v5, p2

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/gl/Quadrangle;->setBounds(FFFFF)V

    .line 78
    return-void

    :cond_1
    move v1, v4

    .line 73
    goto :goto_0

    :cond_2
    move v2, v4

    .line 74
    goto :goto_1

    :cond_3
    move v3, v4

    .line 75
    goto :goto_2
.end method
