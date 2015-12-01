.class Lcom/htc/camera/dualcamera/HumanJointCaptureMode$7;
.super Ljava/lang/Object;
.source "HumanJointCaptureMode.java"

# interfaces
.implements Lcom/htc/camera/base/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/f",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$7;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/Object;Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$7;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 268
    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$7;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    # invokes: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->onDualCameraControllerFound(Lcom/htc/camera/dualcamera/IDualCameraController;)V
    invoke-static {v1, v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$400(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;Lcom/htc/camera/dualcamera/IDualCameraController;)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$7;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    # getter for: Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->access$500(Lcom/htc/camera/dualcamera/HumanJointCaptureMode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPropertyChanged() - No IDualCameraController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/htc/camera/dualcamera/HumanJointCaptureMode$7;->this$0:Lcom/htc/camera/dualcamera/HumanJointCaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/HumanJointCaptureMode;->release()V

    goto :goto_0
.end method
