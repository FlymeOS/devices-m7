.class public final Lcom/htc/camera/burst/a;
.super Lcom/htc/camera/component/t;
.source "BurstCameraBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/burst/IBurstCamera;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "Burst Camera"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/burst/IBurstCamera;
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/htc/camera/CameraController;->getContiBurstSupportMode()Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    move-result-object v0

    .line 28
    :goto_0
    sget-object v1, Lcom/htc/camera/CameraController$ContiBurstSupportMode;->Take:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    if-ne v0, v1, :cond_2

    .line 30
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lcom/htc/camera/burst/NvClassicBurstCamera;

    invoke-direct {v0, p1}, Lcom/htc/camera/burst/NvClassicBurstCamera;-><init>(Lcom/htc/camera/CameraThread;)V

    .line 50
    :goto_1
    return-object v0

    .line 26
    :cond_0
    sget-object v0, Lcom/htc/camera/CameraController$ContiBurstSupportMode;->Auto:Lcom/htc/camera/CameraController$ContiBurstSupportMode;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/htc/camera/burst/QctClassicBurstCamera;

    invoke-direct {v0, p1}, Lcom/htc/camera/burst/QctClassicBurstCamera;-><init>(Lcom/htc/camera/CameraThread;)V

    goto :goto_1

    .line 47
    :cond_2
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    new-instance v0, Lcom/htc/camera/burst/NvClassicBurstCamera;

    invoke-direct {v0, p1}, Lcom/htc/camera/burst/NvClassicBurstCamera;-><init>(Lcom/htc/camera/CameraThread;)V

    goto :goto_1

    .line 50
    :cond_3
    new-instance v0, Lcom/htc/camera/burst/QctAutoBurstCamera;

    invoke-direct {v0, p1}, Lcom/htc/camera/burst/QctAutoBurstCamera;-><init>(Lcom/htc/camera/CameraThread;)V

    goto :goto_1
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/htc/camera/burst/a;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/burst/IBurstCamera;

    move-result-object v0

    return-object v0
.end method
