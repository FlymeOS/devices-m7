.class Lcom/android/server/wifi/WifiHtcNetworkSelection$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiHtcNetworkSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiHtcNetworkSelection;->setIntentReceiver_WifiNetwSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$5;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1101
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "Get WIFI_P2P_CONNECTION_CHANGED_ACTION intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1103
    .local v0, "mNetworkInfo_intent":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 1104
    .local v1, "state":Landroid/net/NetworkInfo$State;
    const-string v2, "WifiHtcNetworkSelection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 1106
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$5;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$500(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/wifi/WifiNative;->setP2pConnected(Z)V

    .line 1107
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$5;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # setter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mP2pIsConnected:Z
    invoke-static {v2, v6}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$802(Lcom/android/server/wifi/WifiHtcNetworkSelection;Z)Z

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 1109
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$5;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v2}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$500(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/wifi/WifiNative;->setP2pConnected(Z)V

    .line 1110
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$5;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # setter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mP2pIsConnected:Z
    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$802(Lcom/android/server/wifi/WifiHtcNetworkSelection;Z)Z

    goto :goto_0
.end method
