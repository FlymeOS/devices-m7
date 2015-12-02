.class Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode$1;
.super Ljava/lang/Object;
.source "MultiCameraModesCaptureMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode$1;->this$0:Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;

    # invokes: Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->updateCameraMode()V
    invoke-static {v0}, Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;->access$000(Lcom/htc/camera/capturemode/MultiCameraModesCaptureMode;)V

    .line 26
    return-void
.end method
