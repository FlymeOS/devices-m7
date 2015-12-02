.class Lcom/htc/camera/manualcapture/ManualCaptureUI$8;
.super Ljava/lang/Object;
.source "ManualCaptureUI.java"

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
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 4
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
    .line 728
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    sget-object v1, Lcom/htc/camera/manualcapture/IManualCaptureController;->PROPERTY_IS_MANUAL_CAPTURE_ENABLED:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->getProperty(Lcom/htc/camera/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    sget-object v1, Lcom/htc/camera/manualcapture/ManualCaptureUI$14;->$SwitchMap$com$htc$camera$TakingPictureState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, Lcom/htc/camera/TakingPictureState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 735
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->closeProcessingDialog()V
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1400(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    .line 736
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->cancelLongExposureReminderToast()V
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1500(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    .line 737
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->onFinishShutterCountDown()V
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1600(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    goto :goto_0

    .line 741
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_IsControllerReady:Z
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1700(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->enableToggleButtons()V
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1800(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    goto :goto_0

    .line 746
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->disableToggleButtons()V
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1900(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V

    .line 747
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$2000(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/ICaptureBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CurrentShutterData:Lcom/htc/camera/manualcapture/MModeData;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$700(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/MModeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/MModeData;->toDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$2100(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$8;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBar:Lcom/htc/camera/ICaptureBar;
    invoke-static {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$2000(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/ICaptureBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/camera/ICaptureBar;->setCaptureBarVisibility(Z)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_CaptureBarVisibilityHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$2102(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
