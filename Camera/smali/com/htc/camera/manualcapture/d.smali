.class public Lcom/htc/camera/manualcapture/d;
.super Lcom/htc/camera/component/t;
.source "ManualModeInterfaceBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Manual Mode Interface"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/t;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public b(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/htc/camera/manualcapture/HTCManualModeInterface;

    invoke-direct {v0, p1}, Lcom/htc/camera/manualcapture/HTCManualModeInterface;-><init>(Lcom/htc/camera/CameraThread;)V

    return-object v0
.end method
