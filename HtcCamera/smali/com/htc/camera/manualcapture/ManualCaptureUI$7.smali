.class Lcom/htc/camera/manualcapture/ManualCaptureUI$7;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/manualcapture/ManualCaptureUI;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 701
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$900(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/FocusToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$900(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/FocusToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/FocusToggleButton;->collapse()V

    .line 705
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$400(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ShutterToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->collapse()V

    .line 706
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1000(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ISOToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/ISOToggleButton;->collapse()V

    .line 707
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1100(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ExposureToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->collapse()V

    .line 708
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1200(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/WBToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/manualcapture/WBToggleButton;->collapse()V

    .line 711
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_FocusToggleButton:Lcom/htc/camera/manualcapture/FocusToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$900(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/FocusToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/FocusToggleButton;->setProgress(I)V

    .line 712
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ShutterToggleButton:Lcom/htc/camera/manualcapture/ShutterToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$400(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ShutterToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ShutterToggleButton;->setProgress(I)V

    .line 713
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ISOToggleButton:Lcom/htc/camera/manualcapture/ISOToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1000(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ISOToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ISOToggleButton;->setProgress(I)V

    .line 714
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_ExposureToggleButton:Lcom/htc/camera/manualcapture/ExposureToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1100(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ExposureToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/ExposureToggleButton;->setProgress(I)V

    .line 715
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_WBToggleButton:Lcom/htc/camera/manualcapture/WBToggleButton;
    invoke-static {v0}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1200(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/WBToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/camera/manualcapture/WBToggleButton;->setProgress(I)V

    .line 717
    iget-object v0, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/ManualCaptureUI$7;->this$0:Lcom/htc/camera/manualcapture/ManualCaptureUI;

    # getter for: Lcom/htc/camera/manualcapture/ManualCaptureUI;->m_Controller:Lcom/htc/camera/manualcapture/ManualCaptureController;
    invoke-static {v1}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$600(Lcom/htc/camera/manualcapture/ManualCaptureUI;)Lcom/htc/camera/manualcapture/ManualCaptureController;

    move-result-object v1

    const/16 v2, 0x3f8

    const/4 v3, 0x1

    # invokes: Lcom/htc/camera/manualcapture/ManualCaptureUI;->sendMessage(Lcom/htc/camera/component/Component;IZ)Z
    invoke-static {v0, v1, v2, v3}, Lcom/htc/camera/manualcapture/ManualCaptureUI;->access$1300(Lcom/htc/camera/manualcapture/ManualCaptureUI;Lcom/htc/camera/component/Component;IZ)Z

    .line 719
    :cond_0
    return-void
.end method
