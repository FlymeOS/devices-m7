.class Lcom/htc/camera/bi/VideoDurationStatisticController$2;
.super Lcom/htc/camera/trigger/Trigger;
.source "VideoDurationStatisticController.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/VideoDurationStatisticController;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$2;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$2;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getComponentManager()Lcom/htc/camera/component/UIComponentManager;

    move-result-object v0

    const-class v1, Lcom/htc/camera/capturemode/ICaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/ICaptureModeManager;

    .line 82
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/htc/camera/bi/VideoDurationStatisticController$2;->this$0:Lcom/htc/camera/bi/VideoDurationStatisticController;

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    # setter for: Lcom/htc/camera/bi/VideoDurationStatisticController;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v1, v0}, Lcom/htc/camera/bi/VideoDurationStatisticController;->access$002(Lcom/htc/camera/bi/VideoDurationStatisticController;Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/capturemode/CaptureMode;

    .line 86
    :cond_0
    return-void
.end method
