.class public Lcom/htc/camera/CameraPreviewEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "CameraPreviewEventArgs.java"


# instance fields
.field public final handle:Lcom/htc/camera/Handle;

.field public final startResult:Lcom/htc/camera/CameraPreviewStartResult;


# direct methods
.method public constructor <init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraPreviewStartResult;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/htc/camera/CameraPreviewEventArgs;->handle:Lcom/htc/camera/Handle;

    .line 19
    iput-object p2, p0, Lcom/htc/camera/CameraPreviewEventArgs;->startResult:Lcom/htc/camera/CameraPreviewStartResult;

    .line 20
    return-void
.end method
