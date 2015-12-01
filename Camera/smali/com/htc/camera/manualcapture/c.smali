.class public Lcom/htc/camera/manualcapture/c;
.super Lcom/htc/camera/component/cn;
.source "ManualCaptureUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/manualcapture/ManualCaptureUI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Manual Capture UI"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/manualcapture/ManualCaptureUI;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/htc/camera/manualcapture/ManualCaptureUI;

    invoke-direct {v0, p1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/htc/camera/manualcapture/c;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/manualcapture/ManualCaptureUI;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->supportManualCapture()Z

    move-result v0

    return v0
.end method
