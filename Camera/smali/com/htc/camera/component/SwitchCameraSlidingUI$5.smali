.class Lcom/htc/camera/component/SwitchCameraSlidingUI$5;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->sendHideUIMessage(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1200(Lcom/htc/camera/component/SwitchCameraSlidingUI;Z)V

    .line 506
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1300(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iget-object v2, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModeManager:Lcom/htc/camera/capturemode/ICaptureModeManager;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1300(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Lcom/htc/camera/capturemode/ICaptureModeManager;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/capturemode/ICaptureModeManager;->captureMode:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSwipeCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;
    invoke-static {v2, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1500(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/capturemode/CaptureMode;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    move-result-object v0

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CurrentSwipeCaptureMode:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;
    invoke-static {v1, v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1402(Lcom/htc/camera/component/SwitchCameraSlidingUI;Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModesInitialized:Z
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1600(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->isMainCaptureModeSupported()Z
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1700(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1800(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSelfieCaptureModeSupported()Z
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1900(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1800(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SELFIE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # invokes: Lcom/htc/camera/component/SwitchCameraSlidingUI;->isSplitCaptureModeSupported()Z
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2000(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModes:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1800(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SPLIT_CAPTURE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$5;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    const/4 v1, 0x1

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_CaptureModesInitialized:Z
    invoke-static {v0, v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$1602(Lcom/htc/camera/component/SwitchCameraSlidingUI;Z)Z

    .line 523
    :cond_4
    return-void
.end method
