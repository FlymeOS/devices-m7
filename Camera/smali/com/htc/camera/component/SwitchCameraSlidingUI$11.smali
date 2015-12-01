.class Lcom/htc/camera/component/SwitchCameraSlidingUI$11;
.super Ljava/lang/Object;
.source "SwitchCameraSlidingUI.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/SwitchCameraSlidingUI;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/capturemode/CaptureModeEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 581
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;->captureMode:Lcom/htc/camera/capturemode/CaptureMode;

    invoke-virtual {v0}, Lcom/htc/camera/capturemode/CaptureMode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2400(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastMainCameraCaptureModeName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2402(Lcom/htc/camera/component/SwitchCameraSlidingUI;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_last_main_camera_capture_mode"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2500(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastFrontCameraCaptureModeName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2502(Lcom/htc/camera/component/SwitchCameraSlidingUI;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_last_front_camera_capture_mode"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2600(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 593
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastSplitCameraCaptureModeName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2602(Lcom/htc/camera/component/SwitchCameraSlidingUI;Ljava/lang/String;)Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_last_split_camera_capture_mode"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # getter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastHumanJointCameraCaptureModeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2700(Lcom/htc/camera/component/SwitchCameraSlidingUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    # setter for: Lcom/htc/camera/component/SwitchCameraSlidingUI;->m_LastHumanJointCameraCaptureModeName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->access$2702(Lcom/htc/camera/component/SwitchCameraSlidingUI;Ljava/lang/String;)Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->this$0:Lcom/htc/camera/component/SwitchCameraSlidingUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/SwitchCameraSlidingUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_last_human_joint_capture_mode"

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 577
    check-cast p3, Lcom/htc/camera/capturemode/CaptureModeEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/SwitchCameraSlidingUI$11;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/capturemode/CaptureModeEventArgs;)V

    return-void
.end method
