.class Lcom/htc/camera/capturemode/CaptureModeManager$10;
.super Ljava/lang/Object;
.source "CaptureModeManager.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/IntentEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/capturemode/CaptureModeManager;


# direct methods
.method constructor <init>(Lcom/htc/camera/capturemode/CaptureModeManager;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/htc/camera/capturemode/CaptureModeManager$10;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/IntentEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/IntentEventArgs;",
            ">;",
            "Lcom/htc/camera/IntentEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 676
    const/4 v1, 0x0

    .line 678
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$10;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    iget-object v2, p3, Lcom/htc/camera/IntentEventArgs;->intent:Landroid/content/Intent;

    const-string v3, "initial-capture-mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/htc/camera/capturemode/CaptureModeManager;->getCommandCaptureMode(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v0, v2}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$700(Lcom/htc/camera/capturemode/CaptureModeManager;Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$10;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # getter for: Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$800(Lcom/htc/camera/capturemode/CaptureModeManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EVENT_NEW_INTENT initial-capture-mode extra:"

    iget-object v3, p3, Lcom/htc/camera/IntentEventArgs;->intent:Landroid/content/Intent;

    const-string v4, "initial-capture-mode"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 683
    iget-object v0, p3, Lcom/htc/camera/IntentEventArgs;->intent:Landroid/content/Intent;

    const-string v2, "keycode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 684
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$10;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # getter for: Lcom/htc/camera/capturemode/CaptureModeManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$900(Lcom/htc/camera/capturemode/CaptureModeManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_NEW_INTENT keycode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$10;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # invokes: Lcom/htc/camera/capturemode/CaptureModeManager;->getSettings()Lcom/htc/camera/CameraSettings;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$1000(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/htc/camera/CameraSettings;->PROPERTY_CAMERA_HWKEY_CONTROLTYPE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/htc/camera/CameraSettings;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraHwKeyType;

    .line 686
    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1

    .line 687
    sget-object v2, Lcom/htc/camera/capturemode/CaptureModeManager$11;->$SwitchMap$com$htc$camera$CameraHwKeyType:[I

    invoke-virtual {v0}, Lcom/htc/camera/CameraHwKeyType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 701
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$10;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # invokes: Lcom/htc/camera/capturemode/CaptureModeManager;->getSelfieMode()Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$1200(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    .line 706
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_2

    .line 707
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$10;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    invoke-virtual {v0, v1}, Lcom/htc/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/htc/camera/capturemode/CaptureMode;)Z

    .line 708
    :cond_2
    return-void

    .line 690
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/capturemode/CaptureModeManager$10;->this$0:Lcom/htc/camera/capturemode/CaptureModeManager;

    # getter for: Lcom/htc/camera/capturemode/CaptureModeManager;->m_DefaultCaptureMode:Lcom/htc/camera/capturemode/CaptureMode;
    invoke-static {v0}, Lcom/htc/camera/capturemode/CaptureModeManager;->access$1100(Lcom/htc/camera/capturemode/CaptureModeManager;)Lcom/htc/camera/capturemode/CaptureMode;

    move-result-object v1

    goto :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 0

    .prologue
    .line 672
    check-cast p3, Lcom/htc/camera/IntentEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/capturemode/CaptureModeManager$10;->onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/IntentEventArgs;)V

    return-void
.end method
