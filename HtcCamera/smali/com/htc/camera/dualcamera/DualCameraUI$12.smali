.class Lcom/htc/camera/dualcamera/DualCameraUI$12;
.super Ljava/lang/Object;
.source "DualCameraUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$12;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

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
            "Lcom/htc/camera/TakingPictureState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1388
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$12;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/DualCameraUI;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/TakingPictureState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$12;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->showPreviewResizeUI(Z)V
    invoke-static {v0, v3}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$2300(Lcom/htc/camera/dualcamera/DualCameraUI;Z)V

    .line 1391
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$12;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$12;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$100(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/dualcamera/DualCameraController;

    move-result-object v1

    const/16 v2, 0x272e

    iget-object v4, p0, Lcom/htc/camera/dualcamera/DualCameraUI$12;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-virtual {v4}, Lcom/htc/camera/dualcamera/DualCameraUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/camera/HTCCamera;->needsActionScreen()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v4, v3

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4100(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1393
    :cond_0
    return-void
.end method
