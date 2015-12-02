.class final Lcom/htc/camera/component/y;
.super Lcom/htc/camera/component/t;
.source "ContinuousBurstControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/component/ContinuousBurstController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Continuous Burst Controller"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/ContinuousBurstController;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/htc/camera/component/ContinuousBurstController;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/ContinuousBurstController;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/y;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/ContinuousBurstController;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 22
    invoke-static {p1}, Lcom/htc/camera/component/ContinuousBurstController;->isSupported(Lcom/htc/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
