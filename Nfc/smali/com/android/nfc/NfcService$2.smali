.class Lcom/android/nfc/NfcService$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 5572
    iput-object p1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private delayModemPowerOnState(I)V
    .locals 4
    .param p1, "nDelayMilliSecond"    # I

    .prologue
    const/16 v1, 0x26b0

    .line 5773
    iget-object v0, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 5774
    iget-object v0, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5775
    return-void
.end method

.method private refreshNfcAgainSimReadyOrAbsent(Ljava/lang/String;)V
    .locals 12
    .param p1, "simState"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5721
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsMdmLockEnabled:Z

    if-eqz v4, :cond_2

    .line 5770
    :cond_1
    :goto_0
    return-void

    .line 5726
    :cond_2
    const-string v4, "LOADED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5727
    const/4 v2, 0x1

    .line 5728
    .local v2, "newState":I
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mBootDelay:I

    if-lez v4, :cond_3

    invoke-static {}, Lcom/android/nfc/HtcUtils;->forceDelayAfterModemPowerOn()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-wide v4, v4, Lcom/android/nfc/NfcService;->mTimeSimSlotDetected:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3

    .line 5729
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-wide v6, v6, Lcom/android/nfc/NfcService;->mTimeSimSlotDetected:J

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/android/nfc/HtcUtils;->forceDelayAfterModemPowerOn()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 5730
    invoke-static {}, Lcom/android/nfc/HtcUtils;->forceDelayAfterModemPowerOn()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-wide v8, v5, Lcom/android/nfc/NfcService;->mTimeSimSlotDetected:J

    sub-long/2addr v6, v8

    long-to-int v5, v6

    sub-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/android/nfc/NfcService$2;->delayModemPowerOnState(I)V

    goto :goto_0

    .line 5735
    :cond_3
    invoke-static {}, Lcom/android/nfc/HtcUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 5736
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 5737
    .local v3, "strID":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 5738
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 5739
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subscriber ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    :cond_4
    const/4 v0, 0x0

    .line 5742
    .local v0, "bEnable":Z
    invoke-static {}, Lcom/android/nfc/HtcUtils;->isDTAGSku()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5743
    if-eqz v3, :cond_5

    const-string v4, "26002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 5744
    :cond_5
    const-string v4, "/sys/class/NFC_sensor/comn/tmo_pl_sim"

    invoke-static {v4, v0}, Lcom/android/nfc/HtcUtils;->writeNfcAttribute(Ljava/lang/String;Z)V

    .line 5747
    :cond_6
    invoke-static {v0}, Lcom/android/nfc/HtcUtils;->setSimNetworkOperator(Z)V

    .line 5760
    .end local v0    # "bEnable":Z
    .end local v1    # "manager":Landroid/telephony/TelephonyManager;
    .end local v3    # "strID":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput v9, v4, Lcom/android/nfc/NfcService;->mBootDelay:I

    .line 5761
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput-wide v10, v4, Lcom/android/nfc/NfcService;->mTimeSimSlotDetected:J

    .line 5762
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mSimState:I

    if-eq v2, v4, :cond_1

    .line 5763
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput v2, v4, Lcom/android/nfc/NfcService;->mSimState:I

    .line 5764
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "nfc_on"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5765
    const-string v4, "NfcService"

    const-string v5, "Refresh NFC by turning off and on it."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5766
    new-instance v4, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v5, v8, [Ljava/lang/Integer;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5767
    new-instance v4, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v5, v8, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5748
    .end local v2    # "newState":I
    :cond_7
    const-string v4, "ABSENT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5749
    const/4 v2, 0x0

    .restart local v2    # "newState":I
    goto :goto_1

    .line 5751
    .end local v2    # "newState":I
    :cond_8
    const-string v4, "NOT_READY"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5752
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const/4 v5, -0x1

    iput v5, v4, Lcom/android/nfc/NfcService;->mSimState:I

    .line 5753
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mBootDelay:I

    if-lez v4, :cond_1

    invoke-static {}, Lcom/android/nfc/HtcUtils;->forceDelayAfterModemPowerOn()I

    move-result v4

    if-lez v4, :cond_1

    .line 5754
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/nfc/NfcService;->mTimeSimSlotDetected:J

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5575
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5576
    .local v1, "action":Ljava/lang/String;
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_0

    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Broadcast received: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5577
    :cond_0
    const-string v14, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5580
    new-instance v14, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Integer;

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5718
    :cond_1
    :goto_0
    return-void

    .line 5581
    :cond_2
    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 5584
    const-string v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 5589
    const/4 v10, 0x3

    .line 5590
    .local v10, "screenState":I
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_3

    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Screen state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5603
    :cond_3
    :goto_1
    new-instance v14, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 5595
    .end local v10    # "screenState":I
    :cond_4
    const/4 v10, 0x1

    .restart local v10    # "screenState":I
    goto :goto_1

    .line 5604
    .end local v10    # "screenState":I
    :cond_5
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 5605
    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 5608
    .local v4, "isAirplaneModeOn":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v14}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v14

    if-ne v4, v14, :cond_1

    .line 5611
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v14, v14, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v14, :cond_1

    .line 5615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v14, v14, Lcom/android/nfc/NfcService;->mIsMdmLockEnabled:Z

    if-nez v14, :cond_1

    .line 5619
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "airplane_override"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5620
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5621
    if-eqz v4, :cond_6

    .line 5622
    new-instance v14, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5623
    :cond_6
    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "nfc_on"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5624
    new-instance v14, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 5626
    .end local v4    # "isAirplaneModeOn":Z
    :cond_7
    const-string v14, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 5627
    const-string v14, "android.intent.extra.user_handle"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 5628
    .local v13, "userId":I
    monitor-enter p0

    .line 5629
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mUserId:I
    invoke-static {v14, v13}, Lcom/android/nfc/NfcService;->access$5102(Lcom/android/nfc/NfcService;I)I

    .line 5630
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v15}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    .line 5632
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v14, v14, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v14, :cond_1

    .line 5633
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v14}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v15}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    goto/16 :goto_0

    .line 5630
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 5635
    .end local v13    # "userId":I
    :cond_8
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 5689
    const-string v14, "com.htc.intent.action.LOOP_BACK_MODE_STATE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 5691
    const-string v14, "startup"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 5692
    .local v12, "startup":Z
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_9

    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "startup: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    :cond_9
    if-eqz v12, :cond_10

    .line 5694
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x1

    # invokes: Lcom/android/nfc/NfcService;->updateNfcState(I)V
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$5200(Lcom/android/nfc/NfcService;I)V

    goto/16 :goto_0

    .line 5638
    .end local v12    # "startup":Z
    :cond_a
    invoke-static {}, Lcom/android/nfc/HtcUtils;->deviceSupportDualSIM()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 5642
    const/4 v9, 0x1

    .line 5643
    .local v9, "phoneType":I
    const/4 v2, 0x0

    .line 5644
    .local v2, "bNeedToRefreshNfc":Z
    const/4 v6, -0x1

    .line 5646
    .local v6, "nSlotId":I
    invoke-static {}, Lcom/android/nfc/HtcUtils;->dualPhoneEnable()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 5647
    const/4 v14, 0x1

    if-ne v14, v9, :cond_c

    .line 5648
    const/4 v6, 0x2

    .line 5661
    :cond_b
    :goto_2
    if-nez v2, :cond_f

    .line 5662
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_1

    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No need to refresh NFC state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5650
    :cond_c
    const/4 v6, 0x1

    .line 5651
    const/4 v2, 0x1

    goto :goto_2

    .line 5653
    :cond_d
    invoke-static {}, Lcom/android/nfc/HtcUtils;->dualGSMPhoneEnable()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 5654
    const/4 v14, 0x1

    if-ne v14, v9, :cond_e

    .line 5655
    const/4 v6, 0x1

    .line 5656
    const/4 v2, 0x1

    goto :goto_2

    .line 5658
    :cond_e
    const/4 v6, 0x2

    goto :goto_2

    .line 5666
    .end local v2    # "bNeedToRefreshNfc":Z
    .end local v6    # "nSlotId":I
    .end local v9    # "phoneType":I
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "ss"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5667
    .local v11, "simState":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/nfc/NfcService$2;->refreshNfcAgainSimReadyOrAbsent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5696
    .end local v11    # "simState":Ljava/lang/String;
    .restart local v12    # "startup":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x0

    # invokes: Lcom/android/nfc/NfcService;->updateNfcState(I)V
    invoke-static {v14, v15}, Lcom/android/nfc/NfcService;->access$5200(Lcom/android/nfc/NfcService;I)V

    goto/16 :goto_0

    .line 5698
    .end local v12    # "startup":Z
    :cond_11
    const-string v14, "com.htc.nfc.p2mode.action.ALLOW_RECEIVE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "com.htc.nfc.readmode.action.ALLOW_RECEIVE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 5699
    :cond_12
    const-string v14, "USER_PROMPT_TYPE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 5700
    .local v7, "nUserPromptType":I
    sget-boolean v14, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v14, :cond_13

    const-string v14, "NfcService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Intent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", user prompt type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5701
    :cond_13
    const/4 v14, 0x1

    if-ne v7, v14, :cond_14

    .line 5702
    const-string v14, "RECEIVED_NFC_MESSAGE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/nfc/NdefMessage;

    .line 5703
    .local v8, "ndfmsg":Landroid/nfc/NdefMessage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const/16 v15, 0x26ae

    invoke-virtual {v14, v15, v8}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5704
    .end local v8    # "ndfmsg":Landroid/nfc/NdefMessage;
    :cond_14
    const/4 v14, 0x2

    if-ne v7, v14, :cond_1

    .line 5705
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const/16 v15, 0x26af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v16, v0

    # getter for: Lcom/android/nfc/NfcService;->mTag4Prompt:Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-static/range {v16 .. v16}, Lcom/android/nfc/NfcService;->access$4900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$TagEndpoint;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5707
    .end local v7    # "nUserPromptType":I
    :cond_15
    const-string v14, "com.htc.android.zoneinfo"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 5708
    const-string v14, "inzone"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 5710
    .local v5, "isInZone":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const-string v15, "In-Zone"

    # invokes: Lcom/android/nfc/NfcService$NfcAdapterService;->performNfcLock(ZLjava/lang/String;)Z
    invoke-static {v14, v5, v15}, Lcom/android/nfc/NfcService$NfcAdapterService;->access$5300(Lcom/android/nfc/NfcService$NfcAdapterService;ZLjava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 5711
    :catch_0
    move-exception v3

    .line 5712
    .local v3, "e":Landroid/os/RemoteException;
    const-string v14, "NfcService"

    const-string v15, "failed to perform NFC Lock!"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5714
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "isInZone":Z
    :cond_16
    const-string v14, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 5715
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/nfc/NfcService;->mPowerShutDown:Z

    .line 5716
    const-string v14, "NfcService"

    const-string v15, "Device is shutting down."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
