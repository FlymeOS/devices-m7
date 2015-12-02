.class Lcom/htc/camera/component/ad;
.super Lcom/htc/camera/component/t;
.source "CpuControllerProxy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/component/ac;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "CPU Controller (Proxy)"

    sget-object v1, Lcom/htc/camera/component/ComponentCategory;->Realtime:Lcom/htc/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;Lcom/htc/camera/component/ComponentCategory;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/ac;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/htc/camera/component/ac;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/ac;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/ad;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/ac;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isHtcDevice()Z

    move-result v0

    return v0
.end method
