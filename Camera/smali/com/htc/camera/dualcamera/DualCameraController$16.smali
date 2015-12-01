.class Lcom/htc/camera/dualcamera/DualCameraController$16;
.super Ljava/lang/Object;
.source "DualCameraController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraController;

.field final synthetic val$cameraThread:Lcom/htc/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iput-object p2, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1405
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1411
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2100(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPropertyChanged() - Attach record surface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->val$cameraThread:Lcom/htc/camera/CameraThread;

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1414
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    const-class v3, Lcom/htc/camera/IViewFinder3D;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2200(Lcom/htc/camera/dualcamera/DualCameraController;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    .line 1415
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;
    invoke-static {v3}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2300(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/ICaptureResolutionManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_CaptureResolutionManager:Lcom/htc/camera/ICaptureResolutionManager;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2300(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/ICaptureResolutionManager;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/camera/ICaptureResolutionManager;->videoResolution:Lcom/htc/camera/property/Property;

    invoke-virtual {v1}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/camera/Resolution;

    .line 1416
    :cond_1
    if-nez v0, :cond_2

    .line 1417
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2400(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - No IViewFinder3D interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1423
    :catch_0
    move-exception v0

    .line 1425
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2700(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPropertyChanged() - getHtcRecordSurface"

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1418
    :cond_2
    if-nez v1, :cond_3

    .line 1419
    :try_start_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2500(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - No video resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    :cond_3
    iget-object v3, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    sget-object v5, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0, v2, v4, v1, v5}, Lcom/htc/camera/IViewFinder3D;->attachRenderingSurface(Landroid/view/Surface;IILcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v0

    # setter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;
    invoke-static {v3, v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2602(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1432
    :pswitch_1
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    sget-object v2, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    if-ne v0, v2, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2600(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2800(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPropertyChanged() - Detach record surface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    const-class v2, Lcom/htc/camera/IViewFinder3D;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2900(Lcom/htc/camera/dualcamera/DualCameraController;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    .line 1438
    if-eqz v0, :cond_4

    .line 1439
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2600(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/Handle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/IViewFinder3D;->detachRenderingSurface(Lcom/htc/camera/Handle;)V

    .line 1442
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # setter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2602(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 1441
    :cond_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$3000(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPropertyChanged() - No IViewFinder3D interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1447
    :pswitch_2
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$27;->$SwitchMap$com$htc$camera$dualcamera$DualCameraController$DualCameraState:[I

    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_State:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$400(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 1460
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2600(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$3100(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPropertyChanged() - Detach record surface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    const-class v2, Lcom/htc/camera/IViewFinder3D;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$3200(Lcom/htc/camera/dualcamera/DualCameraController;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IViewFinder3D;

    .line 1464
    if-eqz v0, :cond_5

    .line 1465
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2600(Lcom/htc/camera/dualcamera/DualCameraController;)Lcom/htc/camera/Handle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/camera/IViewFinder3D;->detachRenderingSurface(Lcom/htc/camera/Handle;)V

    .line 1468
    :goto_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # setter for: Lcom/htc/camera/dualcamera/DualCameraController;->m_RenderingSurfaceHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->access$2602(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto/16 :goto_0

    .line 1450
    :pswitch_3
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 1451
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->stopSecondaryPreview()Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1500(Lcom/htc/camera/dualcamera/DualCameraController;)Z

    .line 1452
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_2

    .line 1455
    :pswitch_4
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    .line 1456
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->stopSecondaryPreview()Z
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$1500(Lcom/htc/camera/dualcamera/DualCameraController;)Z

    .line 1457
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraController;->changeStateTo(Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V
    invoke-static {v0, v2}, Lcom/htc/camera/dualcamera/DualCameraController;->access$500(Lcom/htc/camera/dualcamera/DualCameraController;Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;)V

    goto :goto_2

    .line 1467
    :cond_5
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraController$16;->this$0:Lcom/htc/camera/dualcamera/DualCameraController;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraController;->access$3300(Lcom/htc/camera/dualcamera/DualCameraController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onPropertyChanged() - No IViewFinder3D interface"

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1447
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
