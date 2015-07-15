.class Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;
.super Landroid/os/Handler;
.source "WifiHtcOffload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiHtcOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiHtcOffload;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiHtcOffload;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    .line 161
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 162
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    const-string v15, "WifiHtcOffload"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleMessage().what "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$000(Lcom/android/server/wifi/WifiHtcOffload;)Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->CanUseHtcRoaming()Z

    move-result v15

    if-nez v15, :cond_3

    .line 174
    :cond_0
    sget-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    if-nez v15, :cond_2

    .line 175
    const-string v15, "WifiHtcOffload"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Offloading vh_offload_enabled: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    const-string v15, "WifiHtcOffload"

    const-string v16, "Cannot Offload due to bt-sco, bt-a2dp, p2p or mirror state is connected"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_3
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 296
    const-string v15, "WifiHtcOffload"

    const-string v16, "handleMessage(default)"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiHtcOffload;->setWifiOffloadEnabled(Z)Z

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 187
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/server/wifi/WifiHtcOffload;->startWifiOffload(Z)Z

    goto :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    .line 190
    :pswitch_2
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 191
    .local v10, "newRssi":I
    const-string v15, "WifiHtcOffload"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RSSI_CHANGED_EVENT newRssi: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " 24G TH MIN: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_24G_THRESHOLD_MIN:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "   5G TH MIN: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_5G_THRESHOLD_MIN:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$100(Lcom/android/server/wifi/WifiHtcOffload;)Lcom/android/server/wifi/WifiNative;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v13

    .line 194
    .local v13, "sigpoll":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mOffloadRSSI:I
    invoke-static {v15, v10}, Lcom/android/server/wifi/WifiHtcOffload;->access$202(Lcom/android/server/wifi/WifiHtcOffload;I)I

    .line 195
    sput v10, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_rssi:I

    goto/16 :goto_0

    .line 198
    .end local v10    # "newRssi":I
    .end local v13    # "sigpoll":Ljava/lang/String;
    :pswitch_3
    const-string v15, "WifiHtcOffload"

    const-string v16, "SCAN_RESULTS_AVAILABLE_EVENT received by OffloadHandler"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    :pswitch_4
    const-string v15, "WifiHtcOffload"

    const-string v16, "OFFLOAD_TRIGGER_NOTIFICATION_EVENT received by OffloadHandler"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v4, 0x1

    .line 203
    .local v4, "findAP":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-virtual {v15, v4}, Lcom/android/server/wifi/WifiHtcOffload;->triggerOffloadNotification(Z)Z

    goto/16 :goto_0

    .line 202
    .end local v4    # "findAP":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 206
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # invokes: Lcom/android/server/wifi/WifiHtcOffload;->handleOffloadNotification_WifiOffload()V
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$300(Lcom/android/server/wifi/WifiHtcOffload;)V

    goto/16 :goto_0

    .line 209
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # invokes: Lcom/android/server/wifi/WifiHtcOffload;->handleOffloadTrigger_WifiOffload()V
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$400(Lcom/android/server/wifi/WifiHtcOffload;)V

    goto/16 :goto_0

    .line 212
    :pswitch_7
    const-string v15, "WifiHtcOffload"

    const-string v16, "TX_FAIL_EVENT received in OffloadHandler"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iget-boolean v15, v15, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadEnabled:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iget-boolean v15, v15, Lcom/android/server/wifi/WifiHtcOffload;->mForceWifiOffload:Z

    if-eqz v15, :cond_1

    .line 215
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$100(Lcom/android/server/wifi/WifiHtcOffload;)Lcom/android/server/wifi/WifiNative;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "signalPoll":Ljava/lang/String;
    const/4 v3, 0x0

    .line 217
    .local v3, "currentRSSI":I
    const/4 v2, 0x0

    .line 218
    .local v2, "currentFREQ":I
    const/4 v9, 0x0

    .line 221
    .local v9, "newLinkSpeed":I
    if-eqz v12, :cond_c

    .line 222
    const-string v15, "\n"

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "lines":[Ljava/lang/String;
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4
    if-ge v5, v6, :cond_c

    aget-object v7, v1, v5

    .line 224
    .local v7, "line":Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "prop":[Ljava/lang/String;
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    .line 223
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 227
    :cond_9
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v11, v15

    const-string v16, "RSSI"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 228
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_5

    .line 229
    :cond_a
    const/4 v15, 0x0

    aget-object v15, v11, v15

    const-string v16, "FREQUENCY"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 230
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_5

    .line 231
    :cond_b
    const/4 v15, 0x0

    aget-object v15, v11, v15

    const-string v16, "LINKSPEED"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 232
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_5

    .line 240
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v11    # "prop":[Ljava/lang/String;
    :cond_c
    if-eqz v12, :cond_1

    sget-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const/16 v15, -0xc7

    if-lt v3, v15, :cond_1

    const/4 v15, -0x1

    if-eq v2, v15, :cond_1

    const/16 v15, -0x270f

    if-eq v3, v15, :cond_1

    .line 242
    const-string v15, "WifiHtcOffload"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WiFioffload RSSI ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " LINKSPEED = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    div-int/lit16 v0, v9, 0x3e8

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "FREQ: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v15, 0xfa0

    if-le v2, v15, :cond_d

    const/4 v15, 0x1

    :goto_6
    sput-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_5G:Z

    .line 246
    sget-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_5G:Z

    if-eqz v15, :cond_e

    sget v15, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_TO_3G_THRESHOLD:I

    add-int/lit8 v14, v15, -0x5

    .line 247
    .local v14, "wifi_to_3g_threshold":I
    :goto_7
    const-string v15, "WifiHtcOffload"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "vh_offload_enabled: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " vh_mobile_available: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " vh_mobile_link_speed: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_link_speed:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " vh_mobile_signalStrength: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " GSM_THRESHOLD: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/server/wifi/WifiHtcOffload;->GSM_THRESHOLD:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " vh_wifi_to_mobile: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-boolean v17, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-gt v3, v14, :cond_1

    sget-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_to_mobile:Z

    if-nez v15, :cond_1

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->phoneManager:Landroid/telephony/TelephonyManager;
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$500(Lcom/android/server/wifi/WifiHtcOffload;)Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->setMobileNetworkType(Ljava/lang/String;)Z

    .line 256
    sget-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_offload_enabled:Z

    if-eqz v15, :cond_12

    sget-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_available:Z

    if-eqz v15, :cond_12

    sget v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    sget v16, Lcom/android/server/wifi/WifiHtcOffload;->GSM_THRESHOLD:I

    move/from16 v0, v16

    if-lt v15, v0, :cond_12

    sget v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_signalStrength:I

    const/16 v16, 0x63

    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    .line 259
    sput v3, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_rssi:I

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # setter for: Lcom/android/server/wifi/WifiHtcOffload;->mOffloadRSSI:I
    invoke-static {v15, v3}, Lcom/android/server/wifi/WifiHtcOffload;->access$202(Lcom/android/server/wifi/WifiHtcOffload;I)I

    .line 261
    div-int/lit16 v15, v9, 0x3e8

    sput v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_link_speed:I

    .line 262
    const-string v16, "WifiHtcOffload"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WiFioffload was triggered RSSI: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v17, Lcom/android/server/wifi/WifiHtcOffload;->vh_wifi_rssi:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " ,linkspeed: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v17, Lcom/android/server/wifi/WifiHtcOffload;->vh_mobile_link_speed:I

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", AP: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v15, Lcom/android/server/wifi/WifiHtcOffload;->vh_5G:Z

    if-eqz v15, :cond_f

    const-string v15, "5GHz"

    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # getter for: Lcom/android/server/wifi/WifiHtcOffload;->mScreenOn:Z
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$600(Lcom/android/server/wifi/WifiHtcOffload;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    iget-boolean v15, v15, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    if-eqz v15, :cond_10

    .line 270
    const-string v15, "WifiHtcOffload"

    const-string v16, "WiFioffload is first time, only pop notification dialog..."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wifi/WifiHtcOffload;->mWifiOffloadFirstTime:Z

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # invokes: Lcom/android/server/wifi/WifiHtcOffload;->handleOffloadNotification_WifiOffload()V
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$300(Lcom/android/server/wifi/WifiHtcOffload;)V

    goto/16 :goto_0

    .line 244
    .end local v14    # "wifi_to_3g_threshold":I
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 246
    :cond_e
    sget v14, Lcom/android/server/wifi/WifiHtcOffload;->WIFI_TO_3G_THRESHOLD:I

    goto/16 :goto_7

    .line 262
    .restart local v14    # "wifi_to_3g_threshold":I
    :cond_f
    const-string v15, "2.4GHz"

    goto :goto_8

    .line 275
    :cond_10
    const-string v15, "WifiHtcOffload"

    const-string v16, "WiFioffload is triggered when screen ON, do roaming check first..."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # invokes: Lcom/android/server/wifi/WifiHtcOffload;->handleOffloadTrigger_WifiOffload()V
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$400(Lcom/android/server/wifi/WifiHtcOffload;)V

    goto/16 :goto_0

    .line 281
    :cond_11
    const-string v15, "WifiHtcOffload"

    const-string v16, "WiFioffload is triggered when screen ON, do roaming check first..."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    # invokes: Lcom/android/server/wifi/WifiHtcOffload;->handleOffloadTrigger_WifiOffload()V
    invoke-static {v15}, Lcom/android/server/wifi/WifiHtcOffload;->access$400(Lcom/android/server/wifi/WifiHtcOffload;)V

    goto/16 :goto_0

    .line 287
    :cond_12
    const-string v15, "WifiHtcOffload"

    const-string v16, "WiFioffload is triggered but Mobile is not available, check if any better AP"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiHtcOffload$OffloadHandler;->this$0:Lcom/android/server/wifi/WifiHtcOffload;

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiHtcOffload;->sendHighTxPerEventBroadcast()V

    goto/16 :goto_0

    .line 234
    .end local v14    # "wifi_to_3g_threshold":I
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "lines":[Ljava/lang/String;
    .restart local v11    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v15

    goto/16 :goto_5

    .line 182
    :pswitch_data_0
    .packed-switch 0x240c6
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
