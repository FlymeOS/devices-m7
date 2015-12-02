.class public abstract Lcom/htc/camera/v;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ICameraDeviceManager.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract beginPreserveCamera(Lcom/htc/camera/CameraController;)Lcom/htc/camera/Handle;
.end method

.method public abstract closeCamera(Lcom/htc/camera/CameraController;)V
.end method

.method public abstract endPreserveCamera(Lcom/htc/camera/Handle;)V
.end method

.method public abstract openCamera(Lcom/htc/camera/CameraType;Lcom/htc/camera/Reference;)Lcom/htc/camera/CameraOpenFailedReason;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/CameraType;",
            "Lcom/htc/camera/Reference",
            "<",
            "Lcom/htc/camera/CameraController;",
            ">;)",
            "Lcom/htc/camera/CameraOpenFailedReason;"
        }
    .end annotation
.end method
