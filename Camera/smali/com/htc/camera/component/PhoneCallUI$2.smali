.class Lcom/htc/camera/component/PhoneCallUI$2;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/htc/camera/RecordingState;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_supportDualSIM:Z
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$1500(Lcom/htc/camera/component/PhoneCallUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    sget-object v1, Lcom/htc/camera/component/PhoneCallUI$7;->$SwitchMap$com$htc$camera$RecordingState:[I

    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, Lcom/htc/camera/RecordingState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 305
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1600(Lcom/htc/camera/component/PhoneCallUI;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 306
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$1700(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager - register"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.camera.intent.action.CAMCORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v1, "com.htc.camera.intent.extra.rec"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v1}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 311
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$1800(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "record Starting - disable phone dialer "

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # setter for: Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v0, v4}, Lcom/htc/camera/component/PhoneCallUI;->access$1402(Lcom/htc/camera/component/PhoneCallUI;Z)Z

    goto :goto_0

    .line 319
    :pswitch_1
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 320
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1400(Lcom/htc/camera/component/PhoneCallUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.camera.intent.action.CAMCORDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    const-string v2, "com.htc.camera.intent.extra.rec"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v2}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1900(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "record Stopping- enable phone dialer"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1600(Lcom/htc/camera/component/PhoneCallUI;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 327
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$2000(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager - unregister"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # setter for: Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v1, v3}, Lcom/htc/camera/component/PhoneCallUI;->access$1402(Lcom/htc/camera/component/PhoneCallUI;Z)Z

    .line 331
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 332
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->showIncallScreen()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$2;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$2100(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

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

    goto/16 :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
