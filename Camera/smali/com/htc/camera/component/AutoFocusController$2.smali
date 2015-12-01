.class Lcom/htc/camera/component/AutoFocusController$2;
.super Ljava/lang/Object;
.source "AutoFocusController.java"

# interfaces
.implements Lcom/htc/camera/debug/b;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/AutoFocusController;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/AutoFocusController;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/htc/camera/component/AutoFocusController$2;->this$0:Lcom/htc/camera/component/AutoFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout(Lcom/htc/camera/Handle;Ljava/lang/String;JJLjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    sget-boolean v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/htc/camera/component/AutoFocusController$19;->$SwitchMap$com$htc$camera$FeatureConfig$DriverCallbackTimeoutHandlingPolicy:[I

    invoke-static {}, Lcom/htc/camera/FeatureConfig;->getDriverCallbackTimeoutHandlingPolicy()Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/FeatureConfig$DriverCallbackTimeoutHandlingPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$2;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$700(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTimeout() - Auto-focus fail"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$2;->this$0:Lcom/htc/camera/component/AutoFocusController;

    check-cast p7, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V
    invoke-static {v0, p7, v2}, Lcom/htc/camera/component/AutoFocusController;->access$800(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V

    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Auto-focus call-back timeout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$2;->this$0:Lcom/htc/camera/component/AutoFocusController;

    # getter for: Lcom/htc/camera/component/AutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/AutoFocusController;->access$900(Lcom/htc/camera/component/AutoFocusController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTimeout() - Auto-focus fail"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/htc/camera/component/AutoFocusController$2;->this$0:Lcom/htc/camera/component/AutoFocusController;

    check-cast p7, Lcom/htc/camera/component/AutoFocusController$FocusHandle;

    # invokes: Lcom/htc/camera/component/AutoFocusController;->onAutoFocusFinished(Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V
    invoke-static {v0, p7, v2}, Lcom/htc/camera/component/AutoFocusController;->access$800(Lcom/htc/camera/component/AutoFocusController;Lcom/htc/camera/component/AutoFocusController$FocusHandle;Z)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
