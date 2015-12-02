.class public Lcom/htc/camera/CameraDeviceEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "CameraDeviceEventArgs.java"


# instance fields
.field public final cameraController:Lcom/htc/camera/CameraController;

.field public final cameraHandle:Lcom/htc/camera/Handle;

.field public final cameraType:Lcom/htc/camera/CameraType;

.field public final openFailedReason:Lcom/htc/camera/CameraOpenFailedReason;


# direct methods
.method public constructor <init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/htc/camera/CameraDeviceEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    .line 32
    iput-object p1, p0, Lcom/htc/camera/CameraDeviceEventArgs;->cameraHandle:Lcom/htc/camera/Handle;

    .line 33
    if-nez p2, :cond_0

    .line 34
    iput-object v1, p0, Lcom/htc/camera/CameraDeviceEventArgs;->cameraType:Lcom/htc/camera/CameraType;

    .line 37
    :goto_0
    iput-object v1, p0, Lcom/htc/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/htc/camera/CameraOpenFailedReason;

    .line 38
    return-void

    .line 36
    :cond_0
    invoke-virtual {p2}, Lcom/htc/camera/CameraController;->getCameraType()Lcom/htc/camera/CameraType;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/CameraDeviceEventArgs;->cameraType:Lcom/htc/camera/CameraType;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/camera/CameraDeviceEventArgs;-><init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraOpenFailedReason;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraType;Lcom/htc/camera/CameraOpenFailedReason;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/camera/CameraDeviceEventArgs;->cameraController:Lcom/htc/camera/CameraController;

    .line 25
    iput-object p1, p0, Lcom/htc/camera/CameraDeviceEventArgs;->cameraHandle:Lcom/htc/camera/Handle;

    .line 26
    iput-object p2, p0, Lcom/htc/camera/CameraDeviceEventArgs;->cameraType:Lcom/htc/camera/CameraType;

    .line 27
    iput-object p3, p0, Lcom/htc/camera/CameraDeviceEventArgs;->openFailedReason:Lcom/htc/camera/CameraOpenFailedReason;

    .line 28
    return-void
.end method
