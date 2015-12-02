.class public Lcom/htc/camera/capturemode/CaptureModeEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "CaptureModeEventArgs.java"


# instance fields
.field public final captureMode:Lcom/htc/camera/capturemode/CaptureMode;


# direct methods
.method public constructor <init>(Lcom/htc/camera/capturemode/CaptureMode;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    .line 18
    return-void
.end method
