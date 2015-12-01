.class public abstract Lcom/htc/camera/ag;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "ISharedBackgroundWorker.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 17
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract cancelTask(Lcom/htc/camera/Handle;)Z
.end method

.method public abstract enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;
.end method
