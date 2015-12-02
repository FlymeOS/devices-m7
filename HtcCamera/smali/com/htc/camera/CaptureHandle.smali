.class public Lcom/htc/camera/CaptureHandle;
.super Lcom/htc/camera/SessionHandle;
.source "CaptureHandle.java"


# instance fields
.field public final cameraMode:Lcom/htc/camera/CameraMode;

.field public final cameraType:Lcom/htc/camera/CameraType;

.field public final captureTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraMode;Lcom/htc/camera/CameraType;)V
    .locals 3

    .prologue
    .line 18
    const-string v0, "Capture"

    invoke-direct {p0, v0}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    .line 20
    iput-object p2, p0, Lcom/htc/camera/CaptureHandle;->cameraType:Lcom/htc/camera/CameraType;

    .line 21
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/htc/camera/CaptureHandle;->creationTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/camera/CaptureHandle;->captureTime:Ljava/util/Date;

    .line 22
    return-void
.end method
