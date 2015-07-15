.class Lcom/android/server/wifi/WifiHtcNetworkSelection$1;
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
    .line 918
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x0

    const/16 v7, -0xc8

    .line 921
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 923
    const-string v4, "newRssi"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 924
    .local v1, "rssi":I
    const-string v4, "WifiHtcNetworkSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RSSI_CHANGED_ACTION "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "newRssi"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    sget-object v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    if-eqz v4, :cond_0

    .line 926
    sget-object v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    sget-object v5, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    const v6, 0x240c6

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 997
    .end local v1    # "rssi":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 928
    :cond_1
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 929
    const-string v4, "WifiHtcNetworkSelection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPLICANT_STATE_CHANGED_ACTION "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "newState"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_2
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 931
    const-string v5, "WifiHtcNetworkSelection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NETWORK_STATE_CHANGED_ACTION "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_3

    .line 937
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$000(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$000(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "00:00:00:00:00:00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 938
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$000(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_bssid:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 939
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$000(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v4

    # setter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_ssid:Landroid/net/wifi/WifiSsid;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$202(Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;

    goto/16 :goto_0

    .line 942
    :cond_3
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 944
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiHtcOffload:Lcom/android/server/wifi/WifiHtcOffload;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$300(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Lcom/android/server/wifi/WifiHtcOffload;

    sget-boolean v4, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    if-eqz v4, :cond_0

    .line 945
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$000(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_bssid:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 946
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$000(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->prev_ssid:Landroid/net/wifi/WifiSsid;
    invoke-static {}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$200()Landroid/net/wifi/WifiSsid;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    goto/16 :goto_0

    .line 949
    :cond_4
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 950
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "ACTION_SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mScreenOn:Z
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$402(Lcom/android/server/wifi/WifiHtcNetworkSelection;Z)Z

    goto/16 :goto_0

    .line 952
    :cond_5
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 953
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "ACTION_SCREEN_OFF"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # setter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mScreenOn:Z
    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$402(Lcom/android/server/wifi/WifiHtcNetworkSelection;Z)Z

    goto/16 :goto_0

    .line 955
    :cond_6
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 961
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 962
    .local v3, "wifiState":I
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 966
    :goto_1
    :pswitch_1
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "WifiState is Disabling"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :pswitch_2
    if-ne v3, v8, :cond_0

    .line 969
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "WifiState is Disabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 964
    :pswitch_3
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "WifiState is Disabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 974
    :pswitch_4
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "WifiState is Enabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->getWifiNsPersistState()Z

    goto/16 :goto_0

    .line 980
    .end local v3    # "wifiState":I
    :cond_7
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 981
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "SCAN_RESULTS_AVAILABLE_ACTION"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    sget-object v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    if-eqz v4, :cond_0

    .line 983
    sget-object v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    sget-object v5, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    const v6, 0x240cb

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 984
    :cond_8
    const-string v4, "android.net.wifi.HIGH_TXPER_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 985
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "NETWORK_HIGH_TXPER_ACTION"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    sget-object v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    if-eqz v4, :cond_0

    .line 987
    sget-object v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    sget-object v5, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mNetworkSelectionHandler:Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;

    const v6, 0x240c5

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 988
    :cond_9
    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    const-string v4, "connected"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 990
    .local v2, "state":Z
    const-string v4, "WifiHtcNetworkSelection"

    const-string v5, "Supplicant connection established"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    if-eqz v2, :cond_a

    .line 992
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->startWifiNetworkSelectionHandler()V

    goto/16 :goto_0

    .line 994
    :cond_a
    iget-object v4, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$1;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->stopWifiNetworkSelectionHandler()V

    goto/16 :goto_0

    .line 962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
