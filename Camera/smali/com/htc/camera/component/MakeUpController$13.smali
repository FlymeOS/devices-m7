.class Lcom/htc/camera/component/MakeUpController$13;
.super Lcom/htc/camera/trigger/Trigger;
.source "MakeUpController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/MakeUpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/MakeUpController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController$13;->this$0:Lcom/htc/camera/component/MakeUpController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$13;->this$0:Lcom/htc/camera/component/MakeUpController;

    # getter for: Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v0}, Lcom/htc/camera/component/MakeUpController;->access$300(Lcom/htc/camera/component/MakeUpController;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->cameraController:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$13;->this$0:Lcom/htc/camera/component/MakeUpController;

    # getter for: Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/MakeUpController;->access$600(Lcom/htc/camera/component/MakeUpController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnter() - Dual-capture is enabled, apply make-up level to secondary camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$13;->this$0:Lcom/htc/camera/component/MakeUpController;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/MakeUpController;->access$500(Lcom/htc/camera/component/MakeUpController;Z)V

    .line 332
    :cond_0
    return-void
.end method
