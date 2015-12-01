.class Lcom/htc/camera/CameraThread$ModeChangeHandle;
.super Lcom/htc/camera/SessionHandle;
.source "CameraThread.java"


# instance fields
.field public final targetMode:Lcom/htc/camera/CameraMode;


# direct methods
.method public constructor <init>(Lcom/htc/camera/CameraMode;)V
    .locals 1

    .prologue
    .line 226
    const-string v0, "ChangeMode"

    invoke-direct {p0, v0}, Lcom/htc/camera/SessionHandle;-><init>(Ljava/lang/String;)V

    .line 227
    iput-object p1, p0, Lcom/htc/camera/CameraThread$ModeChangeHandle;->targetMode:Lcom/htc/camera/CameraMode;

    .line 228
    return-void
.end method
