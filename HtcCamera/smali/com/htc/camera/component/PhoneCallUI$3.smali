.class Lcom/htc/camera/component/PhoneCallUI$3;
.super Ljava/lang/Object;
.source "PhoneCallUI.java"

# interfaces
.implements Lcom/htc/camera/base/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/base/b",
        "<",
        "Lcom/htc/camera/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PhoneCallUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PhoneCallUI;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Ljava/lang/Object;Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/EventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;",
            "Lcom/htc/camera/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/camera/component/PhoneCallUI;->access$2200(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausingEvent m_nCurCallState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_nCurCallState:I
    invoke-static {v2}, Lcom/htc/camera/component/PhoneCallUI;->access$000(Lcom/htc/camera/component/PhoneCallUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v0}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/htc/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 354
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1400(Lcom/htc/camera/component/PhoneCallUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.camera.intent.action.CAMCORDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    const-string v2, "com.htc.camera.intent.extra.rec"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    iget-object v2, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    invoke-virtual {v2}, Lcom/htc/camera/component/PhoneCallUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$2300(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pausing- enable phone dialer"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # invokes: Lcom/htc/camera/component/PhoneCallUI;->closePopupObjects()V
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$100(Lcom/htc/camera/component/PhoneCallUI;)V

    .line 361
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->m_phoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$1600(Lcom/htc/camera/component/PhoneCallUI;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 362
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$2400(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pausing TelephonyManager - unregister"

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # setter for: Lcom/htc/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z
    invoke-static {v1, v3}, Lcom/htc/camera/component/PhoneCallUI;->access$1402(Lcom/htc/camera/component/PhoneCallUI;Z)Z

    .line 367
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 368
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->showIncallScreen()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    iget-object v1, p0, Lcom/htc/camera/component/PhoneCallUI$3;->this$0:Lcom/htc/camera/component/PhoneCallUI;

    # getter for: Lcom/htc/camera/component/PhoneCallUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/component/PhoneCallUI;->access$2500(Lcom/htc/camera/component/PhoneCallUI;)Ljava/lang/String;

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

    goto :goto_0
.end method
