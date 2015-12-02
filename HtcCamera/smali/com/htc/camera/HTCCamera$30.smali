.class Lcom/htc/camera/HTCCamera$30;
.super Landroid/content/BroadcastReceiver;
.source "HTCCamera.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 3333
    iput-object p1, p0, Lcom/htc/camera/HTCCamera$30;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 3337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3338
    const-string v1, "HTCCamera"

    const-string v2, "onReceive() - Control intent received : "

    invoke-static {v1, v2, v0}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3339
    const-string v1, "com.htc.camera.intent.action.CLOSE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3342
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$30;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isCaptureUIBlocked:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3344
    const-string v0, "HTCCamera"

    const-string v1, "onReceive() - UI blocked"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3367
    :cond_0
    :goto_0
    return-void

    .line 3349
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$30;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3351
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - Taking picture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera$30;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->takingPictureState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3356
    :cond_2
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$30;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3358
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - Recording state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/HTCCamera$30;->this$0:Lcom/htc/camera/HTCCamera;

    iget-object v2, v2, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3363
    :cond_3
    const-string v0, "HTCCamera"

    const-string v1, "onReceive() - Finish activity"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3364
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$30;->this$0:Lcom/htc/camera/HTCCamera;

    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_SELF_FINISHING:Lcom/htc/camera/base/EventKey;

    sget-object v2, Lcom/htc/camera/base/EventArgs;->EMPTY:Lcom/htc/camera/base/EventArgs;

    # invokes: Lcom/htc/camera/HTCCamera;->raiseEvent(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->access$4800(Lcom/htc/camera/HTCCamera;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V

    .line 3365
    iget-object v0, p0, Lcom/htc/camera/HTCCamera$30;->this$0:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->finish()V

    goto :goto_0
.end method
