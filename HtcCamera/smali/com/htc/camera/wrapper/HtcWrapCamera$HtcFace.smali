.class public Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;
.super Landroid/hardware/Camera$Face;
.source "HtcWrapCamera.java"


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rightEye:Landroid/graphics/Point;

.field public smile_degree:I

.field public smile_score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->id:I

    .line 38
    iput-object v1, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->leftEye:Landroid/graphics/Point;

    .line 39
    iput-object v1, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->rightEye:Landroid/graphics/Point;

    .line 40
    iput-object v1, p0, Lcom/htc/camera/wrapper/HtcWrapCamera$HtcFace;->mouth:Landroid/graphics/Point;

    .line 34
    return-void
.end method
