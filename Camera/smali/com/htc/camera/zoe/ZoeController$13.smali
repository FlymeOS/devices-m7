.class Lcom/htc/camera/zoe/ZoeController$13;
.super Ljava/lang/Object;
.source "ZoeController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/zoe/ZoeController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/zoe/ZoeController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iput-object p2, p0, Lcom/htc/camera/zoe/ZoeController$13;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1254
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    iget-object v0, v0, Lcom/htc/camera/zoe/ZoeController;->isZoeActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->getCameraMode()Lcom/htc/camera/CameraMode;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2700(Lcom/htc/camera/zoe/ZoeController;)Lcom/htc/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/CameraMode;->Photo:Lcom/htc/camera/CameraMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_Recorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2400(Lcom/htc/camera/zoe/ZoeController;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->m_IsRecording:Z
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2300(Lcom/htc/camera/zoe/ZoeController;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->val$cameraThread:Lcom/htc/camera/CameraThread;

    iget-object v0, v0, Lcom/htc/camera/CameraThread;->isPreviewStarted:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # invokes: Lcom/htc/camera/zoe/ZoeController;->prepareMediaRecorder(Z)Z
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeController;->access$2100(Lcom/htc/camera/zoe/ZoeController;Z)Z

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2800(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture rotation is changed, but preview is not started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # setter for: Lcom/htc/camera/zoe/ZoeController;->m_IsCaptureRotationChanged:Z
    invoke-static {v0, v2}, Lcom/htc/camera/zoe/ZoeController;->access$2002(Lcom/htc/camera/zoe/ZoeController;Z)Z

    goto :goto_0

    .line 1267
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/zoe/ZoeController$13;->this$0:Lcom/htc/camera/zoe/ZoeController;

    # getter for: Lcom/htc/camera/zoe/ZoeController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/zoe/ZoeController;->access$2900(Lcom/htc/camera/zoe/ZoeController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture rotation is changed, but recording is started"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
