.class public Lcom/htc/camera/CaptureEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "CaptureEventArgs.java"


# instance fields
.field public final cameraMode:Lcom/htc/camera/CameraMode;

.field public final captureHandle:Lcom/htc/camera/CaptureHandle;

.field public final failedReason:Lcom/htc/camera/CaptureFailedReason;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CaptureHandle;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/camera/CaptureEventArgs;-><init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CaptureHandle;Lcom/htc/camera/CaptureFailedReason;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/htc/camera/CaptureHandle;->cameraMode:Lcom/htc/camera/CameraMode;

    :goto_0
    iput-object v0, p0, Lcom/htc/camera/CaptureEventArgs;->cameraMode:Lcom/htc/camera/CameraMode;

    .line 24
    iput-object p1, p0, Lcom/htc/camera/CaptureEventArgs;->captureHandle:Lcom/htc/camera/CaptureHandle;

    .line 25
    iput-object p2, p0, Lcom/htc/camera/CaptureEventArgs;->failedReason:Lcom/htc/camera/CaptureFailedReason;

    .line 26
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
