.class Lcom/android/server/wifi/WifiHtcOffload$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiHtcOffload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiHtcOffload;->setIntentReceiver_WifiOffload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiHtcOffload;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiHtcOffload;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x4

    const/16 v9, -0xc8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1063
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1065
    const-string v6, "newRssi"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1066
    .local v3, "rssi":I
    const-string v6, "WifiHtcOffload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_RSSI_CHANGE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "newRssi"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    sget-object v6, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    if-eqz v6, :cond_0

    .line 1068
    sget-object v6, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    sget-object v7, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    const v8, 0x240c6

    invoke-virtual {v7, v8, v3, v9}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1153
    .end local v3    # "rssi":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1069
    :cond_1
    const-string v8, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1070
    const-string v6, "WifiHtcOffload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SUPPLICANT_STATE_CHANGE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "newState"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1071
    :cond_2
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1072
    const-string v8, "WifiHtcOffload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_NETWORK_STATE_CHANGE "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v8, :cond_0

    .line 1078
    const-string v6, "WifiHtcOffload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWifiInfo.getSSID() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiHtcOffload;->access$900(Lcom/android/server/wifi/WifiHtcOffload;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiHtcOffload;->access$900(Lcom/android/server/wifi/WifiHtcOffload;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    const-string v8, "<unknown ssid>"

    if-eq v6, v8, :cond_0

    sget-boolean v6, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    if-eqz v6, :cond_0

    .line 1080
    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v6}, Lcom/android/server/wifi/WifiHtcOffload;->access$100(Lcom/android/server/wifi/WifiHtcOffload;)Lcom/android/server/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNative;->startWifiOffloadCommand(Z)Z

    .line 1081
    const-string v6, "WifiHtcOffload"

    const-string v8, "set vh_wifi_to_mobile to false"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    sput-boolean v7, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    goto/16 :goto_0

    .line 1085
    :cond_3
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1086
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    move v2, v6

    .line 1087
    .local v2, "mode":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 1088
    const-string v8, "WifiHtcOffload"

    const-string v9, "Airplane Mode..............ON"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iput-boolean v7, v8, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    .line 1090
    sput-boolean v7, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    .line 1091
    iget-object v7, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mAirplaneModeOn:Z
    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiHtcOffload;->access$1002(Lcom/android/server/wifi/WifiHtcOffload;Z)Z

    goto/16 :goto_0

    .end local v2    # "mode":Z
    :cond_4
    move v2, v7

    .line 1086
    goto :goto_1

    .line 1094
    .restart local v2    # "mode":Z
    :cond_5
    const-string v8, "WifiHtcOffload"

    const-string v9, "Airplane Mode..............OFF"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iput-boolean v6, v8, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    .line 1096
    sput-boolean v6, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    .line 1097
    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mAirplaneModeOn:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiHtcOffload;->access$1002(Lcom/android/server/wifi/WifiHtcOffload;Z)Z

    goto/16 :goto_0

    .line 1099
    .end local v2    # "mode":Z
    :cond_6
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1100
    const-string v7, "WifiHtcOffload"

    const-string v8, "EVENT_SCREEN_ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v7, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mScreenOn:Z
    invoke-static {v7, v6}, Lcom/android/server/wifi/WifiHtcOffload;->access$602(Lcom/android/server/wifi/WifiHtcOffload;Z)Z

    goto/16 :goto_0

    .line 1102
    :cond_7
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1103
    const-string v6, "WifiHtcOffload"

    const-string v8, "EVENT_SCREEN_OFF"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mScreenOn:Z
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiHtcOffload;->access$602(Lcom/android/server/wifi/WifiHtcOffload;Z)Z

    goto/16 :goto_0

    .line 1105
    :cond_8
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1109
    const-string v8, "wifi_state"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1110
    .local v5, "wifiState":I
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 1114
    :goto_2
    :pswitch_1
    const-string v8, "WifiHtcOffload"

    const-string v9, "WifiState is Disabling"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :pswitch_2
    if-ne v5, v10, :cond_9

    .line 1117
    const-string v8, "WifiHtcOffload"

    const-string v9, "WifiState is Disabled"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_9
    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iput-boolean v7, v8, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    .line 1119
    sput-boolean v7, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    .line 1120
    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iput-boolean v7, v8, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    .line 1121
    sput-boolean v7, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    .line 1122
    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iput-boolean v6, v8, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    .line 1123
    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iput-boolean v7, v6, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffload:Z

    .line 1124
    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iput-boolean v7, v6, Lcom/android/server/wifi/WifiHtcOffload;->mStartOffloadNotification:Z

    goto/16 :goto_0

    .line 1112
    :pswitch_3
    const-string v8, "WifiHtcOffload"

    const-string v9, "WifiState is Disabled"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1129
    :pswitch_4
    const-string v8, "WifiHtcOffload"

    const-string v9, "WifiState is Enabled"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiHtcOffload;->access$100(Lcom/android/server/wifi/WifiHtcOffload;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/wifi/WifiNative;->setWifiOffloadEnabledCommand(Z)Z

    .line 1131
    iget-object v8, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v8}, Lcom/android/server/wifi/WifiHtcOffload;->access$100(Lcom/android/server/wifi/WifiHtcOffload;)Lcom/android/server/wifi/WifiNative;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/wifi/WifiNative;->startWifiOffloadCommand(Z)Z

    .line 1132
    iget-object v7, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiHtcOffload;->getWifiOffloadPersistState()Z

    .line 1133
    iget-object v7, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-virtual {v7, v6}, Lcom/android/server/wifi/WifiHtcOffload;->setWifiOffloadEnabled(Z)Z

    goto/16 :goto_0

    .line 1137
    .end local v5    # "wifiState":I
    :cond_a
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1138
    const-string v6, "WifiHtcOffload"

    const-string v7, "SCAN_RESULTS_AVAILABLE_ACTION"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1139
    :cond_b
    const-string v6, "android.net.wifi.trigger_notification"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1140
    const-string v6, "WifiHtcOffload"

    const-string v8, "OFFLOAD_TRIGGER_NOTIFICATION_ACTION"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-string v6, "findAP"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1142
    .local v1, "findAP":I
    sget-object v6, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    if-eqz v6, :cond_0

    .line 1143
    sget-object v6, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    sget-object v8, Lcom/android/server/wifi/WifiHtcOffload;->mOffloadHandler:Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;

    const v9, 0x240c8

    invoke-virtual {v8, v9, v1, v7}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1144
    .end local v1    # "findAP":I
    :cond_c
    const-string v6, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1145
    const-string v6, "connected"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1146
    .local v4, "state":Z
    const-string v6, "WifiHtcOffload"

    const-string v7, "Supplicant connection established"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    if-eqz v4, :cond_d

    .line 1148
    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiHtcOffload;->startWifiOffloadHandler()V

    goto/16 :goto_0

    .line 1150
    :cond_d
    iget-object v6, p0, Lcom/android/server/wifi/WifiHtcOffload$2;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiHtcOffload;->stopWifiOffloadHandler()V

    goto/16 :goto_0

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
