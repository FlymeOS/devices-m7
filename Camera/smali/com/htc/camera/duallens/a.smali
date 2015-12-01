.class public final Lcom/htc/camera/duallens/a;
.super Lcom/htc/camera/component/t;
.source "DualLensServiceManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/duallens/DualLensServiceManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Dual-lens Service Manager"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/duallens/DualLensServiceManager;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/camera/duallens/DualLensServiceManager;

    invoke-direct {v0, p1}, Lcom/htc/camera/duallens/DualLensServiceManager;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/htc/camera/duallens/a;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/duallens/DualLensServiceManager;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->hasSubCamera()Z

    move-result v0

    return v0
.end method
