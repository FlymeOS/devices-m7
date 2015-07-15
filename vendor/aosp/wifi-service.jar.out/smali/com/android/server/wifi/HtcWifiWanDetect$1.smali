.class Lcom/android/server/wifi/HtcWifiWanDetect$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcWifiWanDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiWanDetect;->setupWanDetectReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiWanDetect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiWanDetect;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 94
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    sget-object v2, Lcom/android/server/wifi/HtcWifiWanDetect$4;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 124
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # setter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiConnected:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$002(Lcom/android/server/wifi/HtcWifiWanDetect;Z)Z

    .line 100
    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    const-string v2, "wifiInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiInfo;

    # setter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3, v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$102(Lcom/android/server/wifi/HtcWifiWanDetect;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 102
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # getter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionFirstConnection:Z
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$200(Lcom/android/server/wifi/HtcWifiWanDetect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->doWanDetection()V
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$300(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # setter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionFirstConnection:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$202(Lcom/android/server/wifi/HtcWifiWanDetect;Z)Z

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # setter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mWifiConnected:Z
    invoke-static {v2, v4}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$002(Lcom/android/server/wifi/HtcWifiWanDetect;Z)Z

    .line 110
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # setter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mHtcWanDetectionFirstConnection:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$202(Lcom/android/server/wifi/HtcWifiWanDetect;Z)Z

    .line 111
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->clearWanErrorNotification()V
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$400(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    goto :goto_0

    .line 116
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    const-string v2, "com.htc.wifi.LAN_DETECTION_RETRY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->doLanDetection()V
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$500(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    goto :goto_0

    .line 118
    :cond_3
    const-string v2, "com.htc.wifi.WAN_DETECTION_RETRY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->doWanDetection()V
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$300(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    goto :goto_0

    .line 120
    :cond_4
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$1;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # invokes: Lcom/android/server/wifi/HtcWifiWanDetect;->clearWanErrorNotification()V
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$400(Lcom/android/server/wifi/HtcWifiWanDetect;)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
