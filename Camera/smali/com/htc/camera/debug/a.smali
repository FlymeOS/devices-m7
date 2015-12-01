.class public abstract Lcom/htc/camera/debug/a;
.super Lcom/htc/camera/component/ServiceCameraComponent;
.source "IOperationTimeoutController.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/camera/component/ServiceCameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/CameraThread;Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract startTimer(Ljava/lang/String;JLcom/htc/camera/debug/b;Lcom/htc/camera/t;Ljava/lang/Object;)Lcom/htc/camera/Handle;
.end method

.method public abstract stopTimer(Lcom/htc/camera/Handle;)V
.end method
