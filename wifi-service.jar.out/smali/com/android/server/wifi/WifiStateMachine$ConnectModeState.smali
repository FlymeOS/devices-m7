.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 9171
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 92
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 9181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move-object/from16 v2, v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9183
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v87, v0

    sparse-switch v87, :sswitch_data_0

    .line 10123
    const/16 v87, 0x0

    .line 10125
    :goto_0
    return v87

    .line 9185
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$18102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9186
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 9187
    .local v25, "bssid":Ljava/lang/String;
    if-eqz v25, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v87

    if-eqz v87, :cond_1

    .line 9189
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$12500(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v25

    .line 9191
    :cond_1
    if-eqz v25, :cond_2

    .line 9193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v88, v0

    monitor-enter v88

    .line 9194
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v89

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v90, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v90 .. v90}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v90

    const/16 v91, 0x0

    move-object/from16 v0, v89

    move/from16 v1, v90

    move-object/from16 v2, v25

    move/from16 v3, v91

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v89

    move-object/from16 v0, v87

    move/from16 v1, v89

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->didBlackListBSSID:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9196
    monitor-exit v88
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9198
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v87

    const v88, 0x2402b

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 10125
    .end local v25    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v87, 0x1

    goto :goto_0

    .line 9196
    .restart local v25    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v87

    :try_start_1
    monitor-exit v88
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v87

    .line 9203
    .end local v25    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleAssociateRejectEvent(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 9206
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleAssociatedWithEvent(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 9211
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v87

    const v88, 0x24007

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 9218
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v87

    const v88, 0x2406c

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 9222
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v87

    const v88, 0x2406d

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    goto :goto_1

    .line 9227
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Ljava/lang/String;

    .line 9228
    .local v70, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v87, v0

    const v88, 0x2400d

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_4

    const-string v31, "temp-disabled"

    .line 9230
    .local v31, "en":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "ConnectModeState SSID state="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " nid="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v89, v0

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " ["

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, "]"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v88, v0

    monitor-enter v88

    .line 9233
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v89

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v90, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v87, v0

    const v91, 0x2400e

    move/from16 v0, v87

    move/from16 v1, v91

    if-ne v0, v1, :cond_5

    const/16 v87, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v91, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v91 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v91

    invoke-virtual/range {v91 .. v91}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v91

    move-object/from16 v0, v89

    move/from16 v1, v90

    move/from16 v2, v87

    move-object/from16 v3, v70

    move-object/from16 v4, v91

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 9235
    monitor-exit v88

    goto/16 :goto_1

    :catchall_1
    move-exception v87

    monitor-exit v88
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v87

    .line 9228
    .end local v31    # "en":Ljava/lang/String;
    :cond_4
    const-string v31, "re-enabled"

    goto/16 :goto_2

    .line 9233
    .restart local v31    # "en":Ljava/lang/String;
    :cond_5
    const/16 v87, 0x0

    goto :goto_3

    .line 9238
    .end local v31    # "en":Ljava/lang/String;
    .end local v70    # "substr":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$13300(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v68

    .line 9241
    .local v68, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v68 .. v68}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v87

    if-nez v87, :cond_7

    .line 9242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v87

    sget-object v88, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    if-eq v0, v1, :cond_6

    .line 9246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Call handleNetworkDisconnect(message) in ConnectModeState, WifiMonitor.SUPPLICANT_STATE_CHANGE_EVENT"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 9251
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Detected an interface down, restart driver"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$13500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x2000d

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 9262
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v87

    if-nez v87, :cond_3

    sget-object v87, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v68

    move-object/from16 v1, v87

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$10500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v87

    sget-object v88, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    if-eq v0, v1, :cond_3

    .line 9264
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v87

    if-eqz v87, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9268
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 9271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9275
    .end local v68    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v87, v0

    const/16 v88, 0x1

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_9

    .line 9276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 9279
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 9280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$7002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 9284
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/net/wifi/WifiConfiguration;

    .line 9285
    .local v27, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v88, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v27

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v54

    .line 9286
    .local v54, "res":I
    if-gez v54, :cond_b

    .line 9287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9308
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x20034

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move/from16 v3, v54

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9289
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v28

    .line 9290
    .local v28, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v28, :cond_a

    if-eqz v27, :cond_a

    .line 9291
    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v87, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v88, v0

    move/from16 v0, v87

    move/from16 v1, v88

    if-ge v0, v1, :cond_a

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v87, v0

    const/16 v88, 0x2

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_a

    .line 9296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, v87

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v87 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v87

    move-object/from16 v0, v87

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v88, v0

    add-int/lit8 v88, v88, 0x1

    move/from16 v0, v88

    move-object/from16 v1, v87

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, -0x3

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    invoke-virtual/range {v87 .. v91}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_4

    .line 9311
    .end local v27    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v28    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v54    # "res":I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v48

    .line 9312
    .local v48, "ok":Z
    if-nez v48, :cond_c

    .line 9313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9315
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v89, v0

    if-eqz v48, :cond_d

    const/16 v87, 0x1

    :goto_5
    move-object/from16 v0, v88

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v87

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_d
    const/16 v87, -0x1

    goto :goto_5

    .line 9318
    .end local v48    # "ok":Z
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v87, v0

    const/16 v88, 0x1

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_10

    const/16 v49, 0x1

    .line 9321
    .local v49, "others":Z
    :goto_6
    if-eqz v49, :cond_e

    .line 9322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    const/16 v89, 0x1

    const/16 v90, 0x0

    invoke-virtual/range {v87 .. v90}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v87 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v87

    move-object/from16 v0, v87

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v88, v0

    add-int/lit8 v88, v88, 0x1

    move/from16 v0, v88

    move-object/from16 v1, v87

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9334
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    const-string v89, "any"

    invoke-virtual/range {v87 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v88

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v89, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v87, v0

    const/16 v90, 0x1

    move/from16 v0, v87

    move/from16 v1, v90

    if-ne v0, v1, :cond_11

    const/16 v87, 0x1

    :goto_7
    move-object/from16 v0, v88

    move/from16 v1, v89

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    move-result v48

    .line 9337
    .restart local v48    # "ok":Z
    if-nez v48, :cond_12

    .line 9338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9348
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v89, v0

    if-eqz v48, :cond_13

    const/16 v87, 0x1

    :goto_9
    move-object/from16 v0, v88

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v87

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9318
    .end local v48    # "ok":Z
    .end local v49    # "others":Z
    :cond_10
    const/16 v49, 0x0

    goto/16 :goto_6

    .line 9336
    .restart local v49    # "others":Z
    :cond_11
    const/16 v87, 0x0

    goto :goto_7

    .line 9343
    .restart local v48    # "ok":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    .line 9344
    .local v32, "enableconfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v32, :cond_f

    .line 9345
    const/16 v87, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_8

    .line 9348
    .end local v32    # "enableconfig":Landroid/net/wifi/WifiConfiguration;
    :cond_13
    const/16 v87, -0x1

    goto :goto_9

    .line 9351
    .end local v48    # "ok":Z
    .end local v49    # "others":Z
    :sswitch_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v76

    .line 9352
    .local v76, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v88

    sub-long v88, v76, v88

    const-wide/32 v90, 0x927c0

    cmp-long v87, v88, v90

    if-lez v87, :cond_3

    .line 9353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 9354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-wide/from16 v1, v76

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18902(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 9358
    .end local v76    # "time":J
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    const/16 v89, 0x5

    invoke-virtual/range {v87 .. v89}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v87

    const/16 v88, 0x1

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_14

    .line 9360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25013

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 9362
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25012

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9368
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v88

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Ljava/lang/String;

    move-object/from16 v0, v88

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 9371
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->clearBlacklist()Z

    goto/16 :goto_1

    .line 9374
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v48

    .line 9376
    .restart local v48    # "ok":Z
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v87

    if-eqz v87, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "wifistatemachine did save config "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9377
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    const v89, 0x2003a

    if-eqz v48, :cond_16

    const/16 v87, 0x1

    :goto_a
    move-object/from16 v0, v88

    move-object/from16 v1, p1

    move/from16 v2, v89

    move/from16 v3, v87

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9380
    const-string v87, "backup"

    invoke-static/range {v87 .. v87}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v34

    .line 9382
    .local v34, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v34, :cond_3

    .line 9384
    :try_start_3
    const-string v87, "com.android.providers.settings"

    move-object/from16 v0, v34

    move-object/from16 v1, v87

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 9385
    :catch_0
    move-exception v87

    goto/16 :goto_1

    .line 9377
    .end local v34    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_16
    const/16 v87, -0x1

    goto :goto_a

    .line 9391
    .end local v48    # "ok":Z
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v88, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v89

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move-object/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 9396
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Ljava/lang/String;

    .line 9398
    .local v67, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v87

    if-eqz v87, :cond_17

    if-eqz v67, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v87

    move-object/from16 v0, v87

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v87, v0

    if-eqz v87, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v87

    move-object/from16 v0, v87

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "\""

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, "\""

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_17

    .line 9401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v88

    move-object/from16 v0, v88

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v88, v0

    const/16 v89, 0x0

    const-string v90, "AUTH_FAILED no identity"

    const/16 v91, 0x0

    invoke-virtual/range {v87 .. v91}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 9405
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    const/16 v88, -0x1

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 9410
    .end local v67    # "ssid":Ljava/lang/String;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Received SUP_REQUEST_SIM_AUTH"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9411
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 9412
    .local v53, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v53, :cond_19

    .line 9413
    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v87, v0

    const/16 v88, 0x4

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_18

    .line 9414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 9415
    :cond_18
    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v87, v0

    const/16 v88, 0x5

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_3

    .line 9416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_1

    .line 9419
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Invalid sim auth request"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9423
    .end local v53    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v88, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v89

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move-object/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 9428
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    const/16 v88, -0x1

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_1

    .line 9433
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v87 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 9437
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v87 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_1

    .line 9441
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v87

    if-eqz v87, :cond_3

    .line 9442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Reconnecting to give a chance to un-connected TLS networks"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19200(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v87 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_1

    .line 9449
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$5300()I

    move-result v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9450
    const/16 v87, 0x1

    goto/16 :goto_0

    .line 9460
    :sswitch_1a
    const/16 v29, 0x0

    .line 9461
    .local v29, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    if-eq v0, v1, :cond_1a

    .line 9465
    const/16 v29, 0x1

    .line 9466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9470
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/net/wifi/WifiConfiguration;

    .line 9471
    .restart local v27    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    .line 9472
    .local v46, "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v57, v0

    .line 9473
    .local v57, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " my state "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$19400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v89

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " nid="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " roam="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9478
    if-nez v27, :cond_1b

    .line 9479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9484
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v88, v0

    move-object/from16 v0, v87

    move/from16 v1, v46

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v89, v0

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " nid="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    const/16 v88, -0x1

    move-object/from16 v0, v87

    move-object/from16 v1, v27

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v55

    .line 9490
    .local v55, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v46

    .line 9491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    const/16 v88, 0x0

    move-object/from16 v0, v87

    move/from16 v1, v46

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, v87

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v87

    if-eqz v87, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v87

    if-eqz v87, :cond_1f

    .line 9499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v87 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v88

    move-object/from16 v0, v88

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    const/16 v88, -0x1

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move/from16 v1, v57

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$19502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v87

    if-nez v87, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v87

    if-eqz v87, :cond_1d

    .line 9510
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRoamingState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9511
    :cond_1d
    if-eqz v29, :cond_1e

    .line 9512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9514
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$20000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9517
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "Failed to connect config: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " netId: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25002

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9530
    .end local v27    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v29    # "didDisconnect":Z
    .end local v46    # "netId":I
    .end local v55    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v57    # "roam":I
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    .line 9531
    .restart local v46    # "netId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/net/wifi/WifiConfiguration;

    .line 9532
    .restart local v27    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v87

    move-object/from16 v0, v87

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v88, v0

    add-int/lit8 v88, v88, 0x1

    move/from16 v0, v88

    move-object/from16 v1, v87

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mUserConnection:Z
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$20102(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9539
    if-eqz v27, :cond_20

    .line 9540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v88, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v27

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v55

    .line 9541
    .restart local v55    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v46

    .line 9543
    .end local v55    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, v87

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v27

    .line 9545
    if-nez v27, :cond_24

    .line 9546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "CONNECT_NETWORK id="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " my state "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v89

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9560
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "any"

    move-object/from16 v0, v87

    move/from16 v1, v46

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9562
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v87, v0

    const/16 v88, 0x3f2

    move/from16 v0, v87

    move/from16 v1, v88

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v87, v0

    const/16 v88, 0x3e8

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_22

    .line 9570
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "CONNECT_NETWORK"

    move-object/from16 v0, v87

    move-object/from16 v1, v27

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 9573
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mAutoRoaming:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19502(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v87

    const/16 v88, 0x1

    const/16 v89, 0x1

    move-object/from16 v0, v87

    move/from16 v1, v46

    move/from16 v2, v88

    move/from16 v3, v89

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, v87

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9580
    const/16 v29, 0x0

    .line 9581
    .restart local v29    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v87

    const/16 v88, -0x1

    move/from16 v0, v87

    move/from16 v1, v88

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v87

    move/from16 v0, v87

    move/from16 v1, v46

    if-eq v0, v1, :cond_23

    .line 9586
    const/16 v29, 0x1

    .line 9587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9591
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    const/16 v88, 0x0

    move-object/from16 v0, v87

    move/from16 v1, v46

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, v87

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(I)Z

    move-result v87

    if-eqz v87, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v87

    if-eqz v87, :cond_27

    .line 9595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastConnectAttempt:J
    invoke-static/range {v87 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$18702(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v88

    move-object/from16 v0, v88

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->targetWificonfiguration:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v87

    const v88, 0x25001

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 9600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25003

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9601
    if-eqz v29, :cond_26

    .line 9603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$19800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9550
    .end local v29    # "didDisconnect":Z
    :cond_24
    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v87, v0

    if-eqz v87, :cond_25

    const-string v84, " skipped"

    .line 9551
    .local v84, "wasSkipped":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "CONNECT_NETWORK id="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " config="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v89, v0

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " cnid="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v89, v0

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " supstate="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " my state "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$20300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v89

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " uid = "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v89, v0

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 9550
    .end local v84    # "wasSkipped":Ljava/lang/String;
    :cond_25
    const-string v84, ""

    goto/16 :goto_c

    .line 9609
    .restart local v29    # "didDisconnect":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$20500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9612
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "Failed to connect config: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " netId: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25002

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9619
    .end local v27    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v29    # "didDisconnect":Z
    .end local v46    # "netId":I
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v87

    move-object/from16 v0, v87

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v88, v0

    add-int/lit8 v88, v88, 0x1

    move/from16 v0, v88

    move-object/from16 v1, v87

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9622
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$20602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9623
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/net/wifi/WifiConfiguration;

    .line 9624
    .restart local v27    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v27, :cond_28

    .line 9625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " my state "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$20700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v89

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25008

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9633
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v88

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastSavedConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$20602(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9634
    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v47, v0

    .line 9635
    .local v47, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "SAVE_NETWORK id="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " config="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v89, v0

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " nid="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v89, v0

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " supstate="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$9100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v89

    invoke-virtual/range {v89 .. v89}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " my state "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v89, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v89 .. v89}, Lcom/android/server/wifi/WifiStateMachine;->access$20800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v89

    invoke-interface/range {v89 .. v89}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    const/16 v88, -0x1

    move-object/from16 v0, v87

    move-object/from16 v1, v27

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v55

    .line 9642
    .restart local v55    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v87

    const/16 v88, -0x1

    move/from16 v0, v87

    move/from16 v1, v88

    if-eq v0, v1, :cond_2d

    .line 9643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v87

    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v88

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_2a

    .line 9644
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v87

    if-eqz v87, :cond_29

    .line 9648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Reconfiguring IP on connection"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9653
    :cond_29
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v87

    if-eqz v87, :cond_2a

    .line 9654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Reconfiguring proxy on connection"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$7200(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9658
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25009

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9659
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$600()Z

    move-result v87

    if-eqz v87, :cond_2b

    .line 9660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "Success save network nid="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v89

    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9664
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v88, v0

    monitor-enter v88

    .line 9670
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v87, v0

    const v89, 0x25007

    move/from16 v0, v87

    move/from16 v1, v89

    if-ne v0, v1, :cond_2c

    const/16 v83, 0x1

    .line 9671
    .local v83, "user":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v87

    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v89

    const/16 v90, 0x1

    move-object/from16 v0, v87

    move/from16 v1, v89

    move/from16 v2, v83

    move/from16 v3, v90

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()V

    .line 9674
    monitor-exit v88

    goto/16 :goto_1

    .end local v83    # "user":Z
    :catchall_2
    move-exception v87

    monitor-exit v88
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v87

    .line 9670
    :cond_2c
    const/16 v83, 0x0

    goto :goto_d

    .line 9676
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Failed to save network"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6600()I

    move-result v88

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$5202(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25008

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9684
    .end local v27    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v47    # "nid":I
    .end local v55    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v80

    .line 9686
    .local v80, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v80, :cond_2f

    .line 9687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21102(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9694
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mRcsOnline:Z

    move/from16 v87, v0

    const/16 v88, 0x1

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_2e

    .line 9695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->CmccRmsSender()V

    .line 9700
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v87

    if-eqz v87, :cond_30

    .line 9701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25006

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$7100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 9689
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v88

    move-object/from16 v1, v80

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastForgetConfigurationAttempt:Landroid/net/wifi/WifiConfiguration;
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21102(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto :goto_e

    .line 9703
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Failed to forget network"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x25005

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9709
    .end local v80    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v85, v0

    check-cast v85, Landroid/net/wifi/WpsInfo;

    .line 9711
    .local v85, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v85

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v87, v0

    packed-switch v87, :pswitch_data_0

    .line 9722
    new-instance v86, Landroid/net/wifi/WpsResult;

    sget-object v87, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v86 .. v87}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 9723
    .local v86, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Invalid setup for WPS"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9726
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    const/16 v88, -0x1

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9728
    move-object/from16 v0, v86

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v87, v0

    sget-object v88, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    if-ne v0, v1, :cond_31

    .line 9729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x2500b

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move-object/from16 v3, v86

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21300(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9713
    .end local v86    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v86

    .line 9714
    .restart local v86    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 9716
    .end local v86    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v86

    .line 9717
    .restart local v86    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 9719
    .end local v86    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v86

    .line 9720
    .restart local v86    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_f

    .line 9732
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "Failed to start WPS with config "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v85 .. v85}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const v88, 0x2500c

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    move/from16 v2, v88

    move/from16 v3, v89

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 9737
    .end local v85    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v86    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_20
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v87

    if-eqz v87, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "Network connection established"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9738
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v88, v0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$9302(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Ljava/lang/String;

    move-object/from16 v0, v88

    move-object/from16 v1, v87

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$9202(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 9742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$9300(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v88

    invoke-virtual/range {v87 .. v88}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 9744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$9600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchFrequency()I
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v88

    invoke-virtual/range {v87 .. v88}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 9747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    sget-object v88, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$14400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 9748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$9200(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v87, v0

    if-eqz v87, :cond_33

    .line 9754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v87, v0

    const/16 v88, 0x1

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->addNewDBRecord_NetworkSelection(Z)V

    .line 9758
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$20900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9763
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect(Landroid/os/Message;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$11600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 9777
    :sswitch_22
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v87

    if-eqz v87, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9786
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v87, v0

    if-eqz v87, :cond_35

    .line 9787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v87, v0

    const/16 v88, 0x1

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->handleDisconnectReason(I)V

    .line 9790
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$15200(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 9794
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "PERF_LOCK_EVENT received"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPerfLock:Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;

    move-result-object v88

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Ljava/lang/String;

    move-object/from16 v0, v88

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->acquire(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9798
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "PERF_UNLOCK_EVENT received"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPerfLock:Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$6500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine$WifiPerfLock;->release()V

    goto/16 :goto_1

    .line 9805
    :sswitch_25
    monitor-enter p0

    .line 9806
    const/4 v12, 0x0

    .line 9808
    .local v12, "MsgDetail":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->getHotspotRemindType()I

    move-result v87

    const/16 v88, 0x3

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_37

    .line 9809
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v40

    .line 9810
    .local v40, "mHtcTelephonyManager":Lcom/htc/service/HtcTelephonyManager;
    if-eqz v40, :cond_36

    .line 9812
    const-string v87, "getAllIMSI"

    const/16 v88, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v82

    .line 9813
    .local v82, "uiccResult":Landroid/os/Bundle;
    if-eqz v82, :cond_36

    invoke-virtual/range {v82 .. v82}, Landroid/os/Bundle;->size()I

    move-result v87

    if-lez v87, :cond_36

    .line 9814
    const-string v87, "slot1_gsm_imsi"

    const/16 v88, 0x0

    move-object/from16 v0, v82

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 9815
    .local v81, "uiccImsi":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "CTRL-RSP-"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Ljava/lang/String;

    move-object/from16 v0, v88

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9844
    .end local v40    # "mHtcTelephonyManager":Lcom/htc/service/HtcTelephonyManager;
    .end local v81    # "uiccImsi":Ljava/lang/String;
    .end local v82    # "uiccResult":Landroid/os/Bundle;
    :cond_36
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    .line 9845
    monitor-exit p0

    goto/16 :goto_1

    :catchall_3
    move-exception v87

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v87

    .line 9820
    :cond_37
    :try_start_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v75

    .line 9821
    .local v75, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v75, :cond_38

    invoke-virtual/range {v75 .. v75}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v87

    if-eqz v87, :cond_38

    .line 9834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEapSimAkaSlot:I
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$21800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v87

    invoke-static/range {v87 .. v87}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v69

    .line 9835
    .local v69, "subId":[J
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "CTRL-RSP-"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Ljava/lang/String;

    move-object/from16 v0, v88

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const/16 v88, 0x0

    aget-wide v88, v69, v88

    move-object/from16 v0, v75

    move-wide/from16 v1, v88

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9839
    goto :goto_10

    .line 9840
    .end local v69    # "subId":[J
    :cond_38
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "CTRL-RSP-"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Ljava/lang/String;

    move-object/from16 v0, v88

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v75 .. v75}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v12

    goto/16 :goto_10

    .line 9848
    .end local v12    # "MsgDetail":Ljava/lang/String;
    .end local v75    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :sswitch_26
    monitor-enter p0

    .line 9849
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v87

    const-string v88, "phone"

    invoke-virtual/range {v87 .. v88}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/telephony/TelephonyManager;

    .line 9850
    .local v41, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v41 .. v41}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v58

    .line 9851
    .local v58, "simOperator":Ljava/lang/String;
    const-string v87, "WifiStateMachine"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "SIM/AKA getSimOperator(): "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9852
    if-nez v58, :cond_39

    .line 9853
    monitor-exit p0

    goto/16 :goto_1

    .line 9870
    .end local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v58    # "simOperator":Ljava/lang/String;
    :catchall_4
    move-exception v87

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v87

    .line 9856
    .restart local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v58    # "simOperator":Ljava/lang/String;
    :cond_39
    :try_start_8
    const-string v42, "630"

    .line 9857
    .local v42, "mcc":Ljava/lang/String;
    const-string v43, "302"

    .line 9858
    .local v43, "mnc":Ljava/lang/String;
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v87

    const/16 v88, 0x5

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_3b

    .line 9859
    const/16 v87, 0x0

    const/16 v88, 0x3

    move-object/from16 v0, v58

    move/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    .line 9860
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "0"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const/16 v88, 0x3

    const/16 v89, 0x5

    move-object/from16 v0, v58

    move/from16 v1, v88

    move/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 9865
    :cond_3a
    :goto_11
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "@wlan.mnc"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ".mcc"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ".3gppnetwork.org"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 9866
    .local v52, "realm":Ljava/lang/String;
    const-string v87, "WifiStateMachine"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "SIM/AKA realm: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9868
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "CTRL-DAT-"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Ljava/lang/String;

    move-object/from16 v0, v88

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9869
    .restart local v12    # "MsgDetail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    invoke-virtual {v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    .line 9870
    monitor-exit p0

    goto/16 :goto_1

    .line 9861
    .end local v12    # "MsgDetail":Ljava/lang/String;
    .end local v52    # "realm":Ljava/lang/String;
    :cond_3b
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v87

    const/16 v88, 0x6

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_3a

    .line 9862
    const/16 v87, 0x0

    const/16 v88, 0x3

    move-object/from16 v0, v58

    move/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    .line 9863
    const/16 v87, 0x3

    const/16 v88, 0x6

    move-object/from16 v0, v58

    move/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v43

    goto/16 :goto_11

    .line 9873
    .end local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v42    # "mcc":Ljava/lang/String;
    .end local v43    # "mnc":Ljava/lang/String;
    .end local v58    # "simOperator":Ljava/lang/String;
    :sswitch_27
    const-string v13, "CTRL-DAT-"

    .local v13, "MsgDetail0":Ljava/lang/String;
    const-string v12, "FAIL"

    .line 9875
    .restart local v12    # "MsgDetail":Ljava/lang/String;
    const/16 v71, 0x0

    .line 9876
    .local v71, "szAutn":Ljava/lang/String;
    const/16 v87, 0x3

    :try_start_9
    move/from16 v0, v87

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v72, v0

    .line 9879
    .local v72, "szRand":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v87

    const-string v88, "phone"

    invoke-virtual/range {v87 .. v88}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/telephony/TelephonyManager;

    .line 9881
    .restart local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const-string v87, "phone"

    invoke-static/range {v87 .. v87}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v50

    .line 9882
    .local v50, "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    const/16 v18, 0x0

    .line 9883
    .local v18, "aszRspResult":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Ljava/lang/String;

    .local v74, "szTmpMsg0":Ljava/lang/String;
    move-object/from16 v73, v74

    .line 9884
    .local v73, "szTmpMsg":Ljava/lang/String;
    const/16 v87, 0x3a

    move-object/from16 v0, v73

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 9885
    .local v14, "MsgEnd":I
    const/16 v87, -0x1

    move/from16 v0, v87

    if-ne v14, v0, :cond_3c

    .line 9886
    invoke-virtual/range {v73 .. v73}, Ljava/lang/String;->length()I

    move-result v14

    .line 9887
    :cond_3c
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const/16 v88, 0x0

    move-object/from16 v0, v73

    move/from16 v1, v88

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 9888
    add-int/lit8 v87, v14, 0x1

    move-object/from16 v0, v73

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v73

    .line 9889
    const/16 v87, 0x3a

    move-object/from16 v0, v73

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 9890
    const/16 v87, -0x1

    move/from16 v0, v87

    if-eq v14, v0, :cond_3d

    .line 9891
    const/16 v87, 0x0

    const/16 v88, 0x0

    move-object/from16 v0, v73

    move/from16 v1, v88

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v88

    aput-object v88, v72, v87

    .line 9892
    add-int/lit8 v87, v14, 0x1

    move-object/from16 v0, v73

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v73

    .line 9895
    :cond_3d
    const-string v87, "gsm.sim.types"

    const-string v88, ""

    invoke-static/range {v87 .. v88}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 9898
    .local v59, "simType":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, ""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    sget-object v88, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    .line 9899
    .local v61, "simType3G":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, ""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    sget-object v88, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_2G_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v60

    .line 9900
    .local v60, "simType2G":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, ""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    sget-object v88, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_DBDM_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 9901
    .local v62, "simTypeDBDM":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, ""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    sget-object v88, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_WIBRO_ONLY_SIM_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    .line 9902
    .local v64, "simTypeWIBRO_ONLY":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, ""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    sget-object v88, Lcom/android/internal/telephony/RILConstants$SimTypes;->RIL_DUAL_CARD:Lcom/android/internal/telephony/RILConstants$SimTypes;

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 9904
    .local v63, "simTypeDUAL":Ljava/lang/String;
    const-string v87, "AUTH_AKA-"

    move-object/from16 v0, v74

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v87

    if-eqz v87, :cond_45

    .line 9905
    move-object/from16 v0, v59

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-nez v87, :cond_3e

    move-object/from16 v0, v59

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-nez v87, :cond_3e

    move-object/from16 v0, v59

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-nez v87, :cond_3e

    move-object/from16 v0, v59

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_44

    .line 9907
    :cond_3e
    move-object/from16 v71, v73

    .line 9908
    const/16 v26, 0x0

    .line 9909
    .local v26, "bundle":Landroid/os/Bundle;
    const/16 v33, 0x0

    .line 9911
    .local v33, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AKA: szRand[0] ="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const/16 v89, 0x0

    aget-object v89, v72, v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AKA: szAutn = "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v87

    const-string v88, "phone"

    invoke-virtual/range {v87 .. v88}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/telephony/TelephonyManager;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 9920
    .local v78, "tm":Landroid/telephony/TelephonyManager;
    const/16 v51, 0x0

    .line 9921
    .local v51, "rand":[B
    const/16 v20, 0x0

    .line 9923
    .local v20, "autn":[B
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const/16 v88, 0x0

    aget-object v88, v72, v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B

    move-result-object v51

    .line 9924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v71

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v20

    .line 9928
    :goto_12
    :try_start_b
    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v87, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v88, v0

    add-int v87, v87, v88

    move/from16 v0, v87

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 9929
    .local v19, "authdata":[B
    const/16 v87, 0x0

    const/16 v88, 0x0

    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v89, v0

    move-object/from16 v0, v51

    move/from16 v1, v87

    move-object/from16 v2, v19

    move/from16 v3, v88

    move/from16 v4, v89

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 9930
    const/16 v87, 0x0

    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v88, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v89, v0

    move-object/from16 v0, v20

    move/from16 v1, v87

    move-object/from16 v2, v19

    move/from16 v3, v88

    move/from16 v4, v89

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 9932
    const/16 v87, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v87

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v23

    .line 9938
    .local v23, "base64Challenge":Ljava/lang/String;
    const/16 v17, 0x2

    .line 9940
    .local v17, "appType":I
    const/16 v79, 0x0

    .line 9941
    .local v79, "tmResponse":Ljava/lang/String;
    if-eqz v78, :cond_40

    invoke-virtual/range {v78 .. v78}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v87

    if-eqz v87, :cond_40

    .line 9942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEapSimAkaSlot:I
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$21800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v87

    invoke-static/range {v87 .. v87}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v69

    .line 9943
    .restart local v69    # "subId":[J
    const/16 v87, 0x0

    aget-wide v88, v69, v87

    move-object/from16 v0, v78

    move-wide/from16 v1, v88

    move/from16 v3, v17

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 9949
    .end local v69    # "subId":[J
    :goto_13
    if-eqz v79, :cond_43

    .line 9950
    const/16 v87, 0x0

    move-object/from16 v0, v79

    move/from16 v1, v87

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v56

    .line 9952
    .local v56, "result2":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AKA: result2[0]: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const/16 v89, 0x0

    aget-byte v89, v56, v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$22000(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9953
    const/16 v87, 0x0

    aget-byte v87, v56, v87

    const/16 v88, -0x25

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_41

    .line 9955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "AKA: Enter AKA successful case"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$22100(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9956
    const/16 v87, 0x1

    aget-byte v16, v56, v87

    .line 9957
    .local v16, "akares_len":I
    const/16 v87, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v87

    move/from16 v2, v16

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22200([BII)Ljava/lang/String;

    move-result-object v15

    .line 9959
    .local v15, "akares":Ljava/lang/String;
    add-int/lit8 v8, v16, 0x2

    .line 9960
    .local v8, "Ck_offset":I
    aget-byte v7, v56, v8

    .line 9961
    .local v7, "Ck_len":I
    add-int/lit8 v87, v8, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v87

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v7}, Lcom/android/server/wifi/WifiStateMachine;->access$22200([BII)Ljava/lang/String;

    move-result-object v6

    .line 9963
    .local v6, "Ck":Ljava/lang/String;
    add-int/lit8 v87, v8, 0x1

    add-int v11, v87, v7

    .line 9964
    .local v11, "Ik_offset":I
    aget-byte v10, v56, v11

    .line 9965
    .local v10, "Ik_len":I
    add-int/lit8 v87, v11, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v87

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$22200([BII)Ljava/lang/String;

    move-result-object v9

    .line 9967
    .local v9, "Ik":Ljava/lang/String;
    add-int/lit8 v87, v11, 0x1

    add-int v39, v87, v10

    .line 9968
    .local v39, "kc_offset":I
    aget-byte v38, v56, v39

    .line 9969
    .local v38, "kc_len":I
    add-int/lit8 v87, v39, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v87

    move/from16 v2, v38

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22200([BII)Ljava/lang/String;

    move-result-object v37

    .line 9971
    .local v37, "kc":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "OK:"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AKA: MsgDetail= "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 10066
    .end local v6    # "Ck":Ljava/lang/String;
    .end local v7    # "Ck_len":I
    .end local v8    # "Ck_offset":I
    .end local v9    # "Ik":Ljava/lang/String;
    .end local v10    # "Ik_len":I
    .end local v11    # "Ik_offset":I
    .end local v14    # "MsgEnd":I
    .end local v15    # "akares":Ljava/lang/String;
    .end local v16    # "akares_len":I
    .end local v17    # "appType":I
    .end local v18    # "aszRspResult":[Ljava/lang/String;
    .end local v19    # "authdata":[B
    .end local v20    # "autn":[B
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v26    # "bundle":Landroid/os/Bundle;
    .end local v33    # "i":I
    .end local v37    # "kc":Ljava/lang/String;
    .end local v38    # "kc_len":I
    .end local v39    # "kc_offset":I
    .end local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v50    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .end local v51    # "rand":[B
    .end local v56    # "result2":[B
    .end local v59    # "simType":Ljava/lang/String;
    .end local v60    # "simType2G":Ljava/lang/String;
    .end local v61    # "simType3G":Ljava/lang/String;
    .end local v62    # "simTypeDBDM":Ljava/lang/String;
    .end local v63    # "simTypeDUAL":Ljava/lang/String;
    .end local v64    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .end local v72    # "szRand":[Ljava/lang/String;
    .end local v73    # "szTmpMsg":Ljava/lang/String;
    .end local v74    # "szTmpMsg0":Ljava/lang/String;
    .end local v78    # "tm":Landroid/telephony/TelephonyManager;
    .end local v79    # "tmResponse":Ljava/lang/String;
    :cond_3f
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v88

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 9945
    .restart local v14    # "MsgEnd":I
    .restart local v17    # "appType":I
    .restart local v18    # "aszRspResult":[Ljava/lang/String;
    .restart local v19    # "authdata":[B
    .restart local v20    # "autn":[B
    .restart local v23    # "base64Challenge":Ljava/lang/String;
    .restart local v26    # "bundle":Landroid/os/Bundle;
    .restart local v33    # "i":I
    .restart local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v50    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .restart local v51    # "rand":[B
    .restart local v59    # "simType":Ljava/lang/String;
    .restart local v60    # "simType2G":Ljava/lang/String;
    .restart local v61    # "simType3G":Ljava/lang/String;
    .restart local v62    # "simTypeDBDM":Ljava/lang/String;
    .restart local v63    # "simTypeDUAL":Ljava/lang/String;
    .restart local v64    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .restart local v72    # "szRand":[Ljava/lang/String;
    .restart local v73    # "szTmpMsg":Ljava/lang/String;
    .restart local v74    # "szTmpMsg0":Ljava/lang/String;
    .restart local v78    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v79    # "tmResponse":Ljava/lang/String;
    :cond_40
    :try_start_c
    move-object/from16 v0, v78

    move/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v79

    goto/16 :goto_13

    .line 9976
    .restart local v56    # "result2":[B
    :cond_41
    const/16 v87, 0x0

    aget-byte v87, v56, v87

    const/16 v88, -0x24

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_42

    .line 9977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "AKA: Enter synchronization error case"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$22300(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9978
    const/16 v87, 0x1

    aget-byte v22, v56, v87

    .line 9979
    .local v22, "auts_len":I
    const/16 v87, 0x2

    move-object/from16 v0, v56

    move/from16 v1, v87

    move/from16 v2, v22

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22200([BII)Ljava/lang/String;

    move-result-object v21

    .line 9980
    .local v21, "auts":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "FAIL:dc0e"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AKA AUTH_AKA- FAIL, MsgDetail= "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_14

    .line 10063
    .end local v14    # "MsgEnd":I
    .end local v17    # "appType":I
    .end local v18    # "aszRspResult":[Ljava/lang/String;
    .end local v19    # "authdata":[B
    .end local v20    # "autn":[B
    .end local v21    # "auts":Ljava/lang/String;
    .end local v22    # "auts_len":I
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v26    # "bundle":Landroid/os/Bundle;
    .end local v33    # "i":I
    .end local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v50    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .end local v51    # "rand":[B
    .end local v56    # "result2":[B
    .end local v59    # "simType":Ljava/lang/String;
    .end local v60    # "simType2G":Ljava/lang/String;
    .end local v61    # "simType3G":Ljava/lang/String;
    .end local v62    # "simTypeDBDM":Ljava/lang/String;
    .end local v63    # "simTypeDUAL":Ljava/lang/String;
    .end local v64    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .end local v72    # "szRand":[Ljava/lang/String;
    .end local v73    # "szTmpMsg":Ljava/lang/String;
    .end local v74    # "szTmpMsg0":Ljava/lang/String;
    .end local v78    # "tm":Landroid/telephony/TelephonyManager;
    .end local v79    # "tmResponse":Ljava/lang/String;
    :catch_1
    move-exception v30

    .line 10064
    .local v30, "e":Ljava/lang/Exception;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 9983
    .end local v30    # "e":Ljava/lang/Exception;
    .restart local v14    # "MsgEnd":I
    .restart local v17    # "appType":I
    .restart local v18    # "aszRspResult":[Ljava/lang/String;
    .restart local v19    # "authdata":[B
    .restart local v20    # "autn":[B
    .restart local v23    # "base64Challenge":Ljava/lang/String;
    .restart local v26    # "bundle":Landroid/os/Bundle;
    .restart local v33    # "i":I
    .restart local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v50    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .restart local v51    # "rand":[B
    .restart local v56    # "result2":[B
    .restart local v59    # "simType":Ljava/lang/String;
    .restart local v60    # "simType2G":Ljava/lang/String;
    .restart local v61    # "simType3G":Ljava/lang/String;
    .restart local v62    # "simTypeDBDM":Ljava/lang/String;
    .restart local v63    # "simTypeDUAL":Ljava/lang/String;
    .restart local v64    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .restart local v72    # "szRand":[Ljava/lang/String;
    .restart local v73    # "szTmpMsg":Ljava/lang/String;
    .restart local v74    # "szTmpMsg0":Ljava/lang/String;
    .restart local v78    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v79    # "tmResponse":Ljava/lang/String;
    :cond_42
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "AKA: still fail case"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "bad response - "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$22400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9985
    const-string v12, "FAIL"

    goto/16 :goto_14

    .line 9988
    .end local v56    # "result2":[B
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "bad response - "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$22500(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9989
    const-string v12, "FAIL"

    goto/16 :goto_1

    .line 9995
    .end local v17    # "appType":I
    .end local v19    # "authdata":[B
    .end local v20    # "autn":[B
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v26    # "bundle":Landroid/os/Bundle;
    .end local v33    # "i":I
    .end local v51    # "rand":[B
    .end local v78    # "tm":Landroid/telephony/TelephonyManager;
    .end local v79    # "tmResponse":Ljava/lang/String;
    :cond_44
    const-string v12, "null"

    goto/16 :goto_14

    .line 9997
    :cond_45
    const-string v87, "AUTH_SIM-"

    move-object/from16 v0, v74

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v87

    if-eqz v87, :cond_3f

    .line 9998
    const/16 v87, 0x3a

    move-object/from16 v0, v73

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 9999
    const/16 v87, -0x1

    move/from16 v0, v87

    if-eq v14, v0, :cond_46

    .line 10000
    const/16 v87, 0x1

    const/16 v88, 0x0

    move-object/from16 v0, v73

    move/from16 v1, v88

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v88

    aput-object v88, v72, v87

    .line 10001
    const/16 v87, 0x2

    add-int/lit8 v88, v14, 0x1

    move-object/from16 v0, v73

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v88

    aput-object v88, v72, v87

    .line 10006
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v87

    const-string v88, "phone"

    invoke-virtual/range {v87 .. v88}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/telephony/TelephonyManager;

    .line 10010
    .restart local v78    # "tm":Landroid/telephony/TelephonyManager;
    const-string v12, "OK"

    .line 10011
    const/16 v35, 0x0

    .local v35, "ii":I
    :goto_15
    const/16 v87, 0x3

    move/from16 v0, v35

    move/from16 v1, v87

    if-ge v0, v1, :cond_3f

    .line 10012
    aget-object v87, v72, v35

    invoke-virtual/range {v87 .. v87}, Ljava/lang/String;->length()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result v87

    const/16 v88, 0x20

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_49

    .line 10015
    const/16 v51, 0x0

    .line 10017
    .restart local v51    # "rand":[B
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    aget-object v88, v72, v35

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->parseHex(Ljava/lang/String;)[B
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$21900(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v51

    .line 10022
    const/16 v87, 0x2

    :try_start_f
    move-object/from16 v0, v51

    move/from16 v1, v87

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v23

    .line 10028
    .restart local v23    # "base64Challenge":Ljava/lang/String;
    const/16 v17, 0x1

    .line 10030
    .restart local v17    # "appType":I
    const/16 v79, 0x0

    .line 10031
    .restart local v79    # "tmResponse":Ljava/lang/String;
    if-eqz v78, :cond_47

    invoke-virtual/range {v78 .. v78}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v87

    if-eqz v87, :cond_47

    .line 10032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEapSimAkaSlot:I
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$21800(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v87

    invoke-static/range {v87 .. v87}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v69

    .line 10033
    .restart local v69    # "subId":[J
    const/16 v87, 0x0

    aget-wide v88, v69, v87

    move-object/from16 v0, v78

    move-wide/from16 v1, v88

    move/from16 v3, v17

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v79

    .line 10039
    .end local v69    # "subId":[J
    :goto_16
    if-eqz v79, :cond_48

    invoke-virtual/range {v79 .. v79}, Ljava/lang/String;->length()I

    move-result v87

    const/16 v88, 0x4

    move/from16 v0, v87

    move/from16 v1, v88

    if-le v0, v1, :cond_48

    .line 10040
    const/16 v87, 0x0

    move-object/from16 v0, v79

    move/from16 v1, v87

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v56

    .line 10042
    .restart local v56    # "result2":[B
    const/16 v87, 0x0

    aget-byte v66, v56, v87

    .line 10043
    .local v66, "sres_len":I
    const/16 v87, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v87

    move/from16 v2, v66

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22200([BII)Ljava/lang/String;

    move-result-object v65

    .line 10044
    .local v65, "sres":Ljava/lang/String;
    add-int/lit8 v39, v66, 0x1

    .line 10045
    .restart local v39    # "kc_offset":I
    aget-byte v38, v56, v39

    .line 10046
    .restart local v38    # "kc_len":I
    add-int/lit8 v87, v39, 0x1

    move-object/from16 v0, v56

    move/from16 v1, v87

    move/from16 v2, v38

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->makeHex([BII)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$22200([BII)Ljava/lang/String;

    move-result-object v37

    .line 10047
    .restart local v37    # "kc":Ljava/lang/String;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ":"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 10011
    .end local v17    # "appType":I
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v37    # "kc":Ljava/lang/String;
    .end local v38    # "kc_len":I
    .end local v39    # "kc_offset":I
    .end local v56    # "result2":[B
    .end local v65    # "sres":Ljava/lang/String;
    .end local v66    # "sres_len":I
    .end local v79    # "tmResponse":Ljava/lang/String;
    :goto_17
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_15

    .line 10018
    :catch_2
    move-exception v30

    .line 10019
    .local v30, "e":Ljava/lang/NumberFormatException;
    goto :goto_17

    .line 10035
    .end local v30    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "appType":I
    .restart local v23    # "base64Challenge":Ljava/lang/String;
    .restart local v79    # "tmResponse":Ljava/lang/String;
    :cond_47
    move-object/from16 v0, v78

    move/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v79

    goto :goto_16

    .line 10049
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "bad response - "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logv(Ljava/lang/String;)V
    invoke-static/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$22600(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 10050
    const-string v12, "FAIL"

    .line 10051
    goto/16 :goto_14

    .line 10056
    .end local v17    # "appType":I
    .end local v23    # "base64Challenge":Ljava/lang/String;
    .end local v51    # "rand":[B
    .end local v79    # "tmResponse":Ljava/lang/String;
    :cond_49
    const-string v12, "FAIL"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 10057
    goto/16 :goto_14

    .line 10069
    .end local v12    # "MsgDetail":Ljava/lang/String;
    .end local v13    # "MsgDetail0":Ljava/lang/String;
    .end local v14    # "MsgEnd":I
    .end local v18    # "aszRspResult":[Ljava/lang/String;
    .end local v35    # "ii":I
    .end local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v50    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .end local v59    # "simType":Ljava/lang/String;
    .end local v60    # "simType2G":Ljava/lang/String;
    .end local v61    # "simType3G":Ljava/lang/String;
    .end local v62    # "simTypeDBDM":Ljava/lang/String;
    .end local v63    # "simTypeDUAL":Ljava/lang/String;
    .end local v64    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .end local v71    # "szAutn":Ljava/lang/String;
    .end local v72    # "szRand":[Ljava/lang/String;
    .end local v73    # "szTmpMsg":Ljava/lang/String;
    .end local v74    # "szTmpMsg0":Ljava/lang/String;
    .end local v78    # "tm":Landroid/telephony/TelephonyManager;
    :sswitch_28
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v87

    if-eqz v87, :cond_4a

    .line 10070
    new-instance v36, Landroid/content/Intent;

    const-string v87, "com.htc.wifi.AKA_INVALID_SIM"

    move-object/from16 v0, v36

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10071
    .local v36, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 10072
    const-string v87, "WifiStateMachine"

    const-string v88, "SIM/AKA: set intent AKA_INVALID_SIM_CHANGED_ACTION"

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10075
    .end local v36    # "intent":Landroid/content/Intent;
    :cond_4a
    const-string v87, "WifiStateMachine"

    const-string v88, "SIM/AKA: System is not ready, ignore sending intent AKA_INVALID_SIM_CHANGED_ACTION"

    invoke-static/range {v87 .. v88}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10079
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mIsRunning:Z
    invoke-static/range {v87 .. v87}, Lcom/android/server/wifi/WifiStateMachine;->access$13900(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v87

    if-eqz v87, :cond_3

    .line 10080
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "CTRL-DAT-AIR_MODE-0:"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v88, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v88 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v88

    const-string v89, "airplane_mode_on"

    const/16 v90, 0x0

    invoke-static/range {v88 .. v90}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 10082
    .local v45, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->ctrlMsg(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 10091
    .end local v45    # "msg":Ljava/lang/String;
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mWifiHtcNetworkSelection:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    move-object/from16 v87, v0

    if-eqz v87, :cond_3

    .line 10093
    :try_start_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 10094
    .local v44, "mode":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 10095
    .local v24, "black_bssid":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v87

    if-eqz v87, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "[ScoreAP] Got BLACKLIST_EVENT:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " , SSID:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10097
    :cond_4b
    packed-switch v44, :pswitch_data_1

    .line 10114
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v87

    if-eqz v87, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    const-string v88, "[ScoreAP] BLACKLIST_EVENT, NOT_HANDLED"

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_1

    .line 10116
    .end local v24    # "black_bssid":Ljava/lang/String;
    .end local v44    # "mode":I
    :catch_3
    move-exception v30

    .line 10117
    .local v30, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "[ScoreAP] BLACKLIST_EVENT, Got exception: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10099
    .end local v30    # "e":Ljava/lang/Exception;
    .restart local v24    # "black_bssid":Ljava/lang/String;
    .restart local v44    # "mode":I
    :pswitch_3
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 10102
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v87

    if-nez v87, :cond_3

    .line 10103
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v87

    if-eqz v87, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "[ScoreAP] BLACKLIST_EVENT, Add "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10104
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 10108
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_3

    .line 10109
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1100()Z

    move-result v87

    if-eqz v87, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "[ScoreAP] BLACKLIST_EVENT, Remove "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10110
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v87, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_1

    .line 9925
    .end local v24    # "black_bssid":Ljava/lang/String;
    .end local v44    # "mode":I
    .restart local v12    # "MsgDetail":Ljava/lang/String;
    .restart local v13    # "MsgDetail0":Ljava/lang/String;
    .restart local v14    # "MsgEnd":I
    .restart local v18    # "aszRspResult":[Ljava/lang/String;
    .restart local v20    # "autn":[B
    .restart local v26    # "bundle":Landroid/os/Bundle;
    .restart local v33    # "i":I
    .restart local v41    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v50    # "phoneInterface":Lcom/android/internal/telephony/ITelephony;
    .restart local v51    # "rand":[B
    .restart local v59    # "simType":Ljava/lang/String;
    .restart local v60    # "simType2G":Ljava/lang/String;
    .restart local v61    # "simType3G":Ljava/lang/String;
    .restart local v62    # "simTypeDBDM":Ljava/lang/String;
    .restart local v63    # "simTypeDUAL":Ljava/lang/String;
    .restart local v64    # "simTypeWIBRO_ONLY":Ljava/lang/String;
    .restart local v71    # "szAutn":Ljava/lang/String;
    .restart local v72    # "szRand":[Ljava/lang/String;
    .restart local v73    # "szTmpMsg":Ljava/lang/String;
    .restart local v74    # "szTmpMsg0":Ljava/lang/String;
    .restart local v78    # "tm":Landroid/telephony/TelephonyManager;
    :catch_4
    move-exception v87

    goto/16 :goto_12

    .line 9183
    :sswitch_data_0
    .sparse-switch
        0x20020 -> :sswitch_29
        0x20034 -> :sswitch_9
        0x20035 -> :sswitch_a
        0x20036 -> :sswitch_b
        0x20037 -> :sswitch_c
        0x20038 -> :sswitch_e
        0x20039 -> :sswitch_f
        0x2003a -> :sswitch_10
        0x2003b -> :sswitch_11
        0x2003e -> :sswitch_14
        0x20049 -> :sswitch_15
        0x2004a -> :sswitch_16
        0x2004b -> :sswitch_17
        0x2008e -> :sswitch_18
        0x2008f -> :sswitch_1a
        0x20091 -> :sswitch_19
        0x20092 -> :sswitch_1d
        0x2300c -> :sswitch_8
        0x24003 -> :sswitch_20
        0x24004 -> :sswitch_22
        0x24006 -> :sswitch_7
        0x24007 -> :sswitch_3
        0x2400d -> :sswitch_6
        0x2400e -> :sswitch_6
        0x2400f -> :sswitch_12
        0x24010 -> :sswitch_13
        0x2402b -> :sswitch_0
        0x2402c -> :sswitch_2
        0x2402d -> :sswitch_1
        0x2402e -> :sswitch_21
        0x24066 -> :sswitch_23
        0x24067 -> :sswitch_24
        0x24068 -> :sswitch_25
        0x24069 -> :sswitch_26
        0x2406a -> :sswitch_27
        0x2406b -> :sswitch_28
        0x2406c -> :sswitch_4
        0x2406d -> :sswitch_5
        0x2406f -> :sswitch_2a
        0x25001 -> :sswitch_1b
        0x25004 -> :sswitch_1e
        0x25007 -> :sswitch_1c
        0x2500a -> :sswitch_1f
        0x25011 -> :sswitch_d
    .end sparse-switch

    .line 9711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 10097
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
