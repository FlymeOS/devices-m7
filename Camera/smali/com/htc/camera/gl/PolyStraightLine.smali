.class public Lcom/htc/camera/gl/PolyStraightLine;
.super Lcom/htc/camera/gl/Line;
.source "PolyStraightLine.java"


# instance fields
.field private m_Points:[Lcom/htc/camera/gl/Point3D;


# virtual methods
.method protected onUpdateVertices()[Lcom/htc/camera/gl/Point3D;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/camera/gl/PolyStraightLine;->m_Points:[Lcom/htc/camera/gl/Point3D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/gl/PolyStraightLine;->m_Points:[Lcom/htc/camera/gl/Point3D;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/htc/camera/gl/Point3D;

    goto :goto_0
.end method
