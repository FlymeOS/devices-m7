.class Lcom/htc/camera/component/PhoneCallUI$1;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneCallUI.java"


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # setter for: Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I
    invoke-static {v0, p1}, Lcom/htc/camera/component/PhoneCallUI;->access$002(Lcom/htc/camera/component/PhoneCallUI;I)I

    .line 99
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$500(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", incomingNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 133
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # invokes: Lcom/htc/camera/component/PhoneCallUI;->closePopupObjects()V
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$100(Lcom/htc/camera/component/PhoneCallUI;)V

    goto :goto_0

    .line 107
    :pswitch_1
    if-nez p2, :cond_0

    .line 108
    const-string p2, ""

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # setter for: Lcom/htc/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/htc/camera/component/PhoneCallUI;->access$202(Lcom/htc/camera/component/PhoneCallUI;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # invokes: Lcom/htc/camera/component/PhoneCallUI;->getCallerContentBackgroundWorker(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/htc/camera/component/PhoneCallUI;->access$300(Lcom/htc/camera/component/PhoneCallUI;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PhoneCallUI;->phoneCallPopUp()V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->recordingState:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    .line 117
    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    invoke-virtual {v0, v1}, Lcom/htc/camera/RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->triggerRecord(Z)V

    .line 123
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->showIncallScreen()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # invokes: Lcom/htc/camera/component/PhoneCallUI;->closePopupObjects()V
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$100(Lcom/htc/camera/component/PhoneCallUI;)V

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$1;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$400(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchMethodException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
