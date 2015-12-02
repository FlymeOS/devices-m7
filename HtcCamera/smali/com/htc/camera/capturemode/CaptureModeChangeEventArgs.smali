.class public Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;
.super Lcom/htc/camera/capturemode/CaptureModeEventArgs;
.source "CaptureModeChangeEventArgs.java"


# instance fields
.field public final isSuccessful:Z

.field public final oldCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

.field public final restartingPreview:Z


# direct methods
.method public constructor <init>(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode;Z)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode;ZZ)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/capturemode/CaptureMode;Lcom/htc/camera/capturemode/CaptureMode;ZZ)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p2}, Lcom/htc/camera/capturemode/CaptureModeEventArgs;-><init>(Lcom/htc/camera/capturemode/CaptureMode;)V

    .line 22
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->oldCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 23
    iput-boolean p3, p0, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->restartingPreview:Z

    .line 24
    iput-boolean p4, p0, Lcom/htc/camera/capturemode/CaptureModeChangeEventArgs;->isSuccessful:Z

    .line 25
    return-void
.end method
