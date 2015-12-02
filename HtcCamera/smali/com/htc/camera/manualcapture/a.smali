.class public Lcom/htc/camera/manualcapture/a;
.super Lcom/htc/camera/component/t;
.source "ManualCaptureControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/t",
        "<",
        "Lcom/htc/camera/manualcapture/ManualCaptureController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "Manual Capture Controller"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/manualcapture/ManualCaptureController;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureController;

    invoke-direct {v0, p1}, Lcom/htc/camera/manualcapture/ManualCaptureController;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/htc/camera/manualcapture/a;->a(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/manualcapture/ManualCaptureController;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportManualCapture()Z

    move-result v0

    return v0
.end method
