.class Lcom/htc/camera/dualcamera/DualCameraUI$1;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

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
            "<[F>;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, [F

    const/4 v2, 0x1

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->copyAccelerometerValues([FZ)V
    invoke-static {v1, v0, v2}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$000(Lcom/htc/camera/dualcamera/DualCameraUI;[FZ)V

    .line 111
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$100(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/dualcamera/DualCameraController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->captureStyle:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;
    invoke-static {v0}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$100(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/dualcamera/DualCameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$1;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_LastAccelerometerValues:[F
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$200(Lcom/htc/camera/dualcamera/DualCameraUI;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/dualcamera/DualCameraController;->updateAccelerometerValues([F)V

    .line 120
    :cond_1
    return-void
.end method
