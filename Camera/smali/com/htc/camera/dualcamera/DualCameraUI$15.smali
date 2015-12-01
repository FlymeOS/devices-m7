.class Lcom/htc/camera/dualcamera/DualCameraUI$15;
.super Lcom/htc/camera/base/DynamicPropertyChangedListener;
.source "DualCameraUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/base/DynamicPropertyChangedListener",
        "<",
        "Lcom/htc/camera/dualcamera/HumanJointMaskType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/dualcamera/DualCameraUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/base/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1437
    iput-object p1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/base/DynamicPropertyChangedListener;-><init>(Lcom/htc/camera/base/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPropertyChanged(Lcom/htc/camera/base/PropertyKey;Lcom/htc/camera/base/PropertyChangeEventArgs;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/dualcamera/HumanJointMaskType;",
            ">;",
            "Lcom/htc/camera/base/PropertyChangeEventArgs",
            "<",
            "Lcom/htc/camera/dualcamera/HumanJointMaskType;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1441
    iget-object v0, p0, Lcom/htc/camera/dualcamera/DualCameraUI$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    iget-object v1, p0, Lcom/htc/camera/dualcamera/DualCameraUI$15;->this$0:Lcom/htc/camera/dualcamera/DualCameraUI;

    # getter for: Lcom/htc/camera/dualcamera/DualCameraUI;->m_Controller:Lcom/htc/camera/dualcamera/DualCameraController;
    invoke-static {v1}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$100(Lcom/htc/camera/dualcamera/DualCameraUI;)Lcom/htc/camera/dualcamera/DualCameraController;

    move-result-object v1

    const/16 v2, 0x2738

    iget-object v5, p2, Lcom/htc/camera/base/PropertyChangeEventArgs;->newValue:Ljava/lang/Object;

    move v4, v3

    # invokes: Lcom/htc/camera/dualcamera/DualCameraUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z
    invoke-static/range {v0 .. v5}, Lcom/htc/camera/dualcamera/DualCameraUI;->access$4300(Lcom/htc/camera/dualcamera/DualCameraUI;Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 1442
    return-void
.end method
