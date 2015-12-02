.class final Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;
.super Lcom/htc/camera/Handle;
.source "CameraDeviceManager.java"


# instance fields
.field public final cameraController:Lcom/htc/camera/CameraController;

.field public referenceCount:I


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraController;)V
    .locals 1

    .prologue
    .line 58
    const-string v0, "Preserve Camera"

    invoke-direct {p0, v0}, Lcom/htc/camera/Handle;-><init>(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->referenceCount:I

    .line 59
    iput-object p1, p0, Lcom/htc/camera/component/CameraDeviceManager$CameraPreservationHandle;->cameraController:Lcom/htc/camera/CameraController;

    .line 60
    return-void
.end method
