.class public abstract Lcom/htc/camera/duallens/c;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IDualLensServiceManager.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract resumeDualLensService(Lcom/htc/camera/Handle;)V
.end method

.method public abstract setDualLensServiceState(Ljava/lang/String;)Z
.end method

.method public abstract suspendDualLensService()Lcom/htc/camera/Handle;
.end method
