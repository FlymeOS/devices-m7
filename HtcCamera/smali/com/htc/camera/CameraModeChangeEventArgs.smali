.class public Lcom/htc/camera/CameraModeChangeEventArgs;
.super Lcom/htc/camera/event/EventArgs;
.source "CameraModeChangeEventArgs.java"


# instance fields
.field public final handle:Lcom/htc/camera/Handle;

.field public final targetMode:Lcom/htc/camera/CameraMode;


# direct methods
.method public constructor <init>(Lcom/htc/camera/Handle;Lcom/htc/camera/CameraMode;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/camera/event/EventArgs;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/htc/camera/CameraModeChangeEventArgs;->handle:Lcom/htc/camera/Handle;

    .line 19
    iput-object p2, p0, Lcom/htc/camera/CameraModeChangeEventArgs;->targetMode:Lcom/htc/camera/CameraMode;

    .line 20
    return-void
.end method
