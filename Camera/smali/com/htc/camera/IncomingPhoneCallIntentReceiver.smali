.class public Lcom/htc/camera/IncomingPhoneCallIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IncomingPhoneCallIntentReceiver.java"


# instance fields
.field private mSettings:Lcom/htc/camera/Settings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/htc/camera/Settings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/camera/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/htc/camera/IncomingPhoneCallIntentReceiver;->mSettings:Lcom/htc/camera/Settings;

    .line 31
    iget-object v0, p0, Lcom/htc/camera/IncomingPhoneCallIntentReceiver;->mSettings:Lcom/htc/camera/Settings;

    const-string v1, "Camera_Application_hashCode"

    invoke-virtual {v0, v1}, Lcom/htc/camera/Settings;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 32
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 34
    if-eq v1, v0, :cond_0

    .line 35
    const-string v0, "IncomingPhoneCallIntentReceiver"

    const-string v1, "IncomingPhoneCallIntentReceiver"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.camera.intent.action.CAMCORDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v1, "com.htc.camera.intent.extra.rec"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    const-string v0, "IncomingPhoneCallIntentReceiver"

    const-string v1, "IncomingPhoneCallIntentReceiver sendBroadcast"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->getDefault()Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lib3/phonecontacts/telephony/HtcTelephonyManager;->showIncallScreen()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "IncomingPhoneCallIntentReceiver"

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

    .line 49
    :cond_0
    const-string v0, "IncomingPhoneCallIntentReceiver"

    const-string v1, "Same process got IncomingPhoneCallIntentReceiver"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
