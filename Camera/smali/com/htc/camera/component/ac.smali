.class final Lcom/htc/camera/component/ac;
.super Lcom/htc/camera/component/ProxyComponent;
.source "CpuControllerProxy.java"

# interfaces
.implements Lcom/htc/camera/ICpuController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/ProxyComponent",
        "<",
        "Lcom/htc/camera/ICpuController;",
        ">;",
        "Lcom/htc/camera/ICpuController;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 3

    .prologue
    .line 17
    const-string v0, "CPU Controller (Proxy)"

    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    const-class v2, Lcom/htc/camera/ICpuController;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/htc/camera/component/ProxyComponent;-><init>(Ljava/lang/String;Lcom/htc/camera/CameraThread;Lcom/htc/camera/component/au;Ljava/lang/Class;)V

    .line 18
    return-void
.end method
