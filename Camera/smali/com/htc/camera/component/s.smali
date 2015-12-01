.class public abstract Lcom/htc/camera/component/s;
.super Lcom/htc/camera/component/CameraComponent;
.source "CameraThreadComponent.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;)V
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p3}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Lcom/htc/camera/CameraThread;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final getCameraMode()Lcom/htc/camera/CameraMode;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/htc/camera/component/s;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->mode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraMode;

    return-object v0
.end method

.method protected final getCameraType()Lcom/htc/camera/CameraType;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/camera/component/s;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    return-object v0
.end method
