.class Lcom/htc/camera/component/ContinuousBurstUI$4;
.super Lcom/htc/camera/trigger/Trigger;
.source "ContinuousBurstUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/ContinuousBurstUI;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/camera/component/ContinuousBurstUI$4;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-direct {p0, p2, p3}, Lcom/htc/camera/trigger/Trigger;-><init>(Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 6

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$4;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # invokes: Lcom/htc/camera/component/ContinuousBurstUI;->linkToController()Z
    invoke-static {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1000(Lcom/htc/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$4;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/htc/camera/component/ContinuousBurstUI$4;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_Controller:Lcom/htc/camera/component/ContinuousBurstController;
    invoke-static {v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$1100(Lcom/htc/camera/component/ContinuousBurstUI;)Lcom/htc/camera/component/ContinuousBurstController;

    move-result-object v1

    const/16 v2, 0x2715

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/camera/component/ContinuousBurstUI;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;)Z

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$4;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    const/16 v1, 0x1f4

    # setter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0, v1}, Lcom/htc/camera/component/ContinuousBurstUI;->access$202(Lcom/htc/camera/component/ContinuousBurstUI;I)I

    .line 407
    iget-object v0, p0, Lcom/htc/camera/component/ContinuousBurstUI$4;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/ContinuousBurstUI;->getSettings()Lcom/htc/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_continuous_burst_long_press_timeout"

    iget-object v2, p0, Lcom/htc/camera/component/ContinuousBurstUI$4;->this$0:Lcom/htc/camera/component/ContinuousBurstUI;

    # getter for: Lcom/htc/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v2}, Lcom/htc/camera/component/ContinuousBurstUI;->access$200(Lcom/htc/camera/component/ContinuousBurstUI;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 408
    return-void
.end method
