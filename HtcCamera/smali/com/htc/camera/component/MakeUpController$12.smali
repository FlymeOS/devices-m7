.class Lcom/htc/camera/component/MakeUpController$12;
.super Lcom/htc/camera/trigger/Trigger;
.source "MakeUpController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/MakeUpController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/MakeUpController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/htc/camera/component/MakeUpController$12;->this$0:Lcom/htc/camera/component/MakeUpController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onExit()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$12;->this$0:Lcom/htc/camera/component/MakeUpController;

    # getter for: Lcom/htc/camera/component/MakeUpController;->m_DualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;
    invoke-static {v0}, Lcom/htc/camera/component/MakeUpController;->access$300(Lcom/htc/camera/component/MakeUpController;)Lcom/htc/camera/dualcamera/IDualCameraController;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$12;->this$0:Lcom/htc/camera/component/MakeUpController;

    # getter for: Lcom/htc/camera/component/MakeUpController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/MakeUpController;->access$400(Lcom/htc/camera/component/MakeUpController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnter() - Dual-capture is enabled, apply make-up level to secondary camera"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/htc/camera/component/MakeUpController$12;->this$0:Lcom/htc/camera/component/MakeUpController;

    const/4 v1, 0x1

    # invokes: Lcom/htc/camera/component/MakeUpController;->applyMakeUpLevel(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/MakeUpController;->access$500(Lcom/htc/camera/component/MakeUpController;Z)V

    .line 320
    :cond_0
    return-void
.end method
