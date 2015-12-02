.class Lcom/htc/camera/splitcapture/SplitVideoUI$22;
.super Lcom/htc/camera/trigger/Trigger;
.source "SplitVideoUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$4600(Lcom/htc/camera/splitcapture/SplitVideoUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity is pausing. Reset states"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-ne v0, v1, :cond_1

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->showProcessingDialog()V
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$4700(Lcom/htc/camera/splitcapture/SplitVideoUI;)V

    .line 1253
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_StateBeforePausing:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;
    invoke-static {v1, v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$4802(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/splitcapture/SplitVideoCaptureState;)Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 1254
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_Controller:Lcom/htc/camera/splitcapture/SplitVideoController;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$300(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/splitcapture/SplitVideoController;

    move-result-object v1

    const/16 v2, 0x2717

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->sendMessage(Lcom/htc/camera/component/Component;I)Z
    invoke-static {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$4900(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/component/Component;I)Z

    .line 1255
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$22;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/4 v1, 0x0

    # invokes: Lcom/htc/camera/splitcapture/SplitVideoUI;->resetState(Z)V
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$4200(Lcom/htc/camera/splitcapture/SplitVideoUI;Z)V

    .line 1257
    :cond_2
    return-void
.end method
