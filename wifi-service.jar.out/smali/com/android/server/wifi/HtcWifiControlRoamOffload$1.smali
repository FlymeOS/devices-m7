.class Lcom/android/server/wifi/HtcWifiControlRoamOffload$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWifiControlRoamOffload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiControlRoamOffload;->setupControlRoamOffload_IntentReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiControlRoamOffload;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$1;->this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, "btState":I
    const-string v2, "HtcWifiControlRoamOffload: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    packed-switch v1, :pswitch_data_0

    .line 88
    :pswitch_0
    const-string v2, "HtcWifiControlRoamOffload: "

    const-string v3, "unkown BT state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v1    # "btState":I
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v1    # "btState":I
    :pswitch_1
    const-string v2, "HtcWifiControlRoamOffload: "

    const-string v3, "BT SCO on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$1;->this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mBtScoConnected:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->access$002(Lcom/android/server/wifi/HtcWifiControlRoamOffload;Z)Z

    .line 80
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$1;->this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    invoke-virtual {v2}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->disableOffloadFeature()V

    goto :goto_0

    .line 83
    :pswitch_2
    const-string v2, "HtcWifiControlRoamOffload: "

    const-string v3, "BT SCO off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$1;->this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/wifi/HtcWifiControlRoamOffload;->mBtScoConnected:Z
    invoke-static {v2, v3}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->access$002(Lcom/android/server/wifi/HtcWifiControlRoamOffload;Z)Z

    .line 85
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiControlRoamOffload$1;->this$0:Lcom/android/server/wifi/HtcWifiControlRoamOffload;

    invoke-virtual {v2}, Lcom/android/server/wifi/HtcWifiControlRoamOffload;->enableOffloadFeature()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
