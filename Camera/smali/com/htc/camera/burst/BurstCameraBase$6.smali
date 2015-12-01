.class Lcom/htc/camera/burst/BurstCameraBase$6;
.super Ljava/lang/Object;
.source "BurstCameraBase.java"

# interfaces
.implements Lcom/htc/camera/k;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/burst/BurstCameraBase;

.field final synthetic val$isBurst:Z

.field final synthetic val$sessionHandle:Lcom/htc/camera/Handle;


# direct methods
.method constructor <init>(Lcom/htc/camera/burst/BurstCameraBase;ZLcom/htc/camera/Handle;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iput-boolean p2, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->val$isBurst:Z

    iput-object p3, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->val$sessionHandle:Lcom/htc/camera/Handle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLcom/htc/camera/CameraController;)V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # getter for: Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/burst/BurstCameraBase;->access$1200(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPEG call-back - Start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-boolean v0, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->val$isBurst:Z

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->val$sessionHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/burst/BurstCameraBase;->onBurstShotJpegReceived(Lcom/htc/camera/Handle;[B)Z

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    # getter for: Lcom/htc/camera/burst/BurstCameraBase;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/burst/BurstCameraBase;->access$1300(Lcom/htc/camera/burst/BurstCameraBase;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPEG call-back - End"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->this$0:Lcom/htc/camera/burst/BurstCameraBase;

    iget-object v1, p0, Lcom/htc/camera/burst/BurstCameraBase$6;->val$sessionHandle:Lcom/htc/camera/Handle;

    invoke-virtual {v0, v1, p1}, Lcom/htc/camera/burst/BurstCameraBase;->onOneShotJpegReceived(Lcom/htc/camera/Handle;[B)Z

    goto :goto_0
.end method
