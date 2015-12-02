.class final Lcom/htc/camera/CameraThread$ErrorCallback;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/htc/camera/i;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 3391
    iput-object p1, p0, Lcom/htc/camera/CameraThread$ErrorCallback;->this$0:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/CameraThread;Lcom/htc/camera/CameraThread$1;)V
    .locals 0

    .prologue
    .line 3391
    invoke-direct {p0, p1}, Lcom/htc/camera/CameraThread$ErrorCallback;-><init>(Lcom/htc/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onError(ILcom/htc/camera/CameraController;)V
    .locals 3

    .prologue
    .line 3395
    const-string v0, "CameraThread"

    const-string v1, "got ErrorCallback !!!"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3396
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 3397
    const-string v0, "CameraThread"

    const-string v1, "error = Camera.CAMERA_ERROR_SERVER_DIED"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread$ErrorCallback;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$200(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3411
    const-string v0, "CameraThread"

    const-string v1, "got ErrorCallback, Camera app finished"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    iget-object v0, p0, Lcom/htc/camera/CameraThread$ErrorCallback;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mCameraActivity:Lcom/htc/camera/HTCCamera;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$200(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->finish()V

    .line 3416
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/CameraThread$ErrorCallback;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mPhotoCaptureHandler:Lcom/htc/camera/z;
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$2200(Lcom/htc/camera/CameraThread;)Lcom/htc/camera/z;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3418
    const-string v0, "CameraThread"

    const-string v1, "onError() - Cancel taking picture"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    iget-object v0, p0, Lcom/htc/camera/CameraThread$ErrorCallback;->this$0:Lcom/htc/camera/CameraThread;

    # invokes: Lcom/htc/camera/CameraThread;->cancelTakingPictureInternal()V
    invoke-static {v0}, Lcom/htc/camera/CameraThread;->access$2300(Lcom/htc/camera/CameraThread;)V

    .line 3421
    :cond_1
    :goto_1
    return-void

    .line 3398
    :cond_2
    const/16 v0, 0x3d0

    if-ne p1, v0, :cond_3

    .line 3399
    const-string v0, "CameraThread"

    const-string v1, "error = HtcWrapCamera.CAMERA_STEREO_PROHIBIT"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    iget-object v0, p0, Lcom/htc/camera/CameraThread$ErrorCallback;->this$0:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    iget-object v1, p0, Lcom/htc/camera/CameraThread$ErrorCallback;->this$0:Lcom/htc/camera/CameraThread;

    # getter for: Lcom/htc/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/camera/CameraThread;->access$2100(Lcom/htc/camera/CameraThread;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 3404
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 3405
    const-string v0, "CameraThread"

    const-string v1, "error = Camera.CAMERA_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3407
    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "unknown error"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
