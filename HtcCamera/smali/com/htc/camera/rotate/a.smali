.class public Lcom/htc/camera/rotate/a;
.super Ljava/lang/Object;
.source "OrientationConfig.java"


# direct methods
.method public static a(I)I
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iget v0, v0, Lcom/htc/camera/rotate/UIRotation;->surfaceRotation:I

    sub-int v0, p0, v0

    .line 15
    if-gez v0, :cond_0

    .line 16
    add-int/lit8 v0, v0, 0x4

    .line 18
    :cond_0
    return v0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/htc/camera/rotate/a;->a(I)I

    move-result v0

    .line 24
    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method
