.class Lcom/htc/camera/splitcapture/SplitVideoUI$33;
.super Ljava/lang/Object;
.source "SplitVideoUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/splitcapture/SplitVideoUI;)V
    .locals 0

    .prologue
    .line 2566
    iput-object p1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

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
            "Lcom/htc/camera/UIState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->isSplitCaptureActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2589
    :cond_0
    :goto_0
    return-void

    .line 2573
    :cond_1
    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$46;->$SwitchMap$com$htc$camera$UIState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/UIState;

    invoke-virtual {v0}, Lcom/htc/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2577
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7000(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/Handle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/camera/IUIRotationManager;->unlockRotation(Lcom/htc/camera/Handle;)V

    .line 2580
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    const/4 v1, 0x0

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 2585
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v0}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v0, v0, Lcom/htc/camera/splitcapture/SplitVideoUI;->captureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->UNAVAILABLE:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    if-eq v0, v1, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    iget-object v1, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_RotationManager:Lcom/htc/camera/IUIRotationManager;
    invoke-static {v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$6900(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/IUIRotationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    invoke-virtual {v2}, Lcom/htc/camera/splitcapture/SplitVideoUI;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/camera/splitcapture/SplitVideoUI$33;->this$0:Lcom/htc/camera/splitcapture/SplitVideoUI;

    # getter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_CurrentCapturingRotation:Lcom/htc/camera/rotate/UIRotation;
    invoke-static {v3}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7100(Lcom/htc/camera/splitcapture/SplitVideoUI;)Lcom/htc/camera/rotate/UIRotation;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/camera/IUIRotationManager;->lockRotation(Ljava/lang/String;Lcom/htc/camera/rotate/UIRotation;)Lcom/htc/camera/Handle;

    move-result-object v1

    # setter for: Lcom/htc/camera/splitcapture/SplitVideoUI;->m_LockedCapturingRotationHandle:Lcom/htc/camera/Handle;
    invoke-static {v0, v1}, Lcom/htc/camera/splitcapture/SplitVideoUI;->access$7002(Lcom/htc/camera/splitcapture/SplitVideoUI;Lcom/htc/camera/Handle;)Lcom/htc/camera/Handle;

    goto :goto_0

    .line 2573
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
