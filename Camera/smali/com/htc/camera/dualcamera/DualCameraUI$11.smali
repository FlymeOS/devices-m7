.class Lcom/htc/camera/dualcamera/DualCameraUI$11;
.super Lcom/htc/camera/data/Trigger;
.source "DualCameraUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/data/Trigger",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/camera/data/Trigger;-><init>(Lcom/htc/camera/base/e;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 4

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_DUAL_CAPTURE_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/SupportState;->UNKNOWN:Lcom/htc/camera/SupportState;

    if-ne v0, v1, :cond_1

    .line 1341
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraThread()Lcom/htc/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraController()Lcom/htc/camera/CameraController;

    move-result-object v1

    .line 1342
    if-eqz v1, :cond_1

    .line 1346
    invoke-virtual {v1}, Lcom/htc/camera/CameraController;->isDualCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1347
    sget-object v0, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    .line 1350
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    sget-object v3, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_DUAL_CAPTURE_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v2, v3, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3600(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1351
    iget-object v2, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3700(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dual-capture is "

    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1354
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->canEnableHumanJoint()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1356
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    .line 1363
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3800(Lcom/htc/camera/dualcamera/DualCameraUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Human-joint mode is "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1366
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    sget-object v2, Lcom/htc/camera/dualcamera/IDualCameraController;->PROPERTY_HUMAN_JOINT_SUPPORT_STATE:Lcom/htc/camera/base/PropertyKey;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3900(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->lockOrUnlockCpu()V
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3500(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    .line 1370
    return-void

    .line 1349
    :cond_2
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_0

    .line 1358
    :cond_3
    sget-object v2, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    if-ne v0, v2, :cond_0

    .line 1360
    const-string v0, "human-joint-mode"

    invoke-virtual {v1, v0}, Lcom/htc/camera/CameraController;->getStringCameraParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/camera/SupportState;->SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/htc/camera/SupportState;->NOT_SUPPORT:Lcom/htc/camera/SupportState;

    goto :goto_1
.end method

.method protected onExit()V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->resetPreviewRenderingStates()V
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4000(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    .line 1378
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$11;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->unlockCpu()V
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$3400(Lcom/htc/camera/dualcamera/DualCameraUI;)V

    .line 1380
    :cond_0
    return-void
.end method
