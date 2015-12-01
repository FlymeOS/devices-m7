.class public Lcom/htc/camera/gl/Point3D;
.super Ljava/lang/Object;
.source "Point3D.java"

# interfaces
.implements Lcom/htc/camera/x;
.implements Ljava/lang/Cloneable;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/htc/camera/gl/Point3D;->x:F

    .line 26
    iput p2, p0, Lcom/htc/camera/gl/Point3D;->y:F

    .line 27
    iput p3, p0, Lcom/htc/camera/gl/Point3D;->z:F

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/gl/Point3D;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p1, :cond_0

    .line 33
    iget v0, p1, Lcom/htc/camera/gl/Point3D;->x:F

    iput v0, p0, Lcom/htc/camera/gl/Point3D;->x:F

    .line 34
    iget v0, p1, Lcom/htc/camera/gl/Point3D;->y:F

    iput v0, p0, Lcom/htc/camera/gl/Point3D;->y:F

    .line 35
    iget v0, p1, Lcom/htc/camera/gl/Point3D;->z:F

    iput v0, p0, Lcom/htc/camera/gl/Point3D;->z:F

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/camera/gl/Point3D;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/htc/camera/gl/Point3D;

    iget v1, p0, Lcom/htc/camera/gl/Point3D;->x:F

    iget v2, p0, Lcom/htc/camera/gl/Point3D;->y:F

    iget v3, p0, Lcom/htc/camera/gl/Point3D;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/gl/Point3D;-><init>(FFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/htc/camera/gl/Point3D;->clone()Lcom/htc/camera/gl/Point3D;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lcom/htc/camera/gl/Point3D;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget v1, p0, Lcom/htc/camera/gl/Point3D;->x:F

    iget v2, p1, Lcom/htc/camera/gl/Point3D;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/camera/gl/Point3D;->y:F

    iget v2, p1, Lcom/htc/camera/gl/Point3D;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/camera/gl/Point3D;->z:F

    iget v2, p1, Lcom/htc/camera/gl/Point3D;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    instance-of v0, p1, Lcom/htc/camera/gl/Point3D;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/htc/camera/gl/Point3D;

    invoke-virtual {p0, p1}, Lcom/htc/camera/gl/Point3D;->equals(Lcom/htc/camera/gl/Point3D;)Z

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    const-string v0, "(%.4f, %.4f, %.4f)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/camera/gl/Point3D;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/camera/gl/Point3D;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/camera/gl/Point3D;->z:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
