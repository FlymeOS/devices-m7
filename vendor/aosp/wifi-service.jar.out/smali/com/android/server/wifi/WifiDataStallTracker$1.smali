.class Lcom/android/server/wifi/WifiDataStallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDataStallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiDataStallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiDataStallTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiDataStallTracker;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    iget-object v5, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsScreenOn:Z
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiDataStallTracker;->access$002(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z

    .line 114
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->startDataStallAlarm()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsScreenOn:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$002(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z

    .line 118
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallAlarm()V

    goto :goto_0

    .line 125
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 126
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 128
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v1

    .line 129
    .local v1, "mIsOldWifiConnected":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v6, v4}, Lcom/android/server/wifi/WifiDataStallTracker;->access$102(Lcom/android/server/wifi/WifiDataStallTracker;Z)Z

    .line 130
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v4

    if-eq v1, v4, :cond_0

    .line 132
    const-string v4, "WifiDataStallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->startDataStallAlarm()V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 129
    goto :goto_1

    .line 136
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallAlarm()V

    goto :goto_0

    .line 138
    .end local v1    # "mIsOldWifiConnected":Z
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string v4, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    const-string v4, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/WifiDisplayStatus;

    .line 140
    .local v3, "status":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v3, :cond_8

    .line 142
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 143
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->access$200(Lcom/android/server/wifi/WifiDataStallTracker;)I

    move-result v4

    if-nez v4, :cond_0

    .line 144
    const-string v4, "WifiDataStallTracker"

    const-string v5, "WifiDisplay connected, stopDataStallAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v4, v7}, Lcom/android/server/wifi/WifiDataStallTracker;->access$202(Lcom/android/server/wifi/WifiDataStallTracker;I)I

    .line 146
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 148
    :cond_6
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v4

    if-nez v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->access$200(Lcom/android/server/wifi/WifiDataStallTracker;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 150
    const-string v4, "WifiDataStallTracker"

    const-string v6, "WifiDisplay disconnected, startDataStallAlarm if Wifi connected"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # setter for: Lcom/android/server/wifi/WifiDataStallTracker;->mOldWifiDisplayStatus:I
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiDataStallTracker;->access$202(Lcom/android/server/wifi/WifiDataStallTracker;I)I

    .line 152
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    # getter for: Lcom/android/server/wifi/WifiDataStallTracker;->mIsWifiConnected:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->access$100(Lcom/android/server/wifi/WifiDataStallTracker;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 153
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->startDataStallAlarm()V

    goto/16 :goto_0

    .line 155
    :cond_7
    iget-object v4, p0, Lcom/android/server/wifi/WifiDataStallTracker$1;->this$0:Lcom/android/server/wifi/WifiDataStallTracker;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiDataStallTracker;->stopDataStallAlarm()V

    goto/16 :goto_0

    .line 159
    :cond_8
    const-string v4, "WifiDataStallTracker"

    const-string v5, "Broadcast Receiver: DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED, WifiDisplayStatus = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
