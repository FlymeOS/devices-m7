.class Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;
.super Landroid/os/Handler;
.source "WifiHtcNetworkSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiHtcNetworkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkSelectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiHtcNetworkSelection;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    .line 832
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 833
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 837
    const-string v3, "WifiHtcNetworkSelection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage().what "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    sget-boolean v3, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->CanUseHtcRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    .line 845
    :cond_0
    sget-boolean v2, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    if-nez v2, :cond_1

    .line 846
    const-string v2, "WifiHtcNetworkSelection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: Network Selection feature is disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/wifi/WifiHtcNetworkSelection;->mHtcNetworkSelectionFeature:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_0
    return-void

    .line 848
    :cond_1
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "handleMessage: Cannot do Network Selection, due to bt-sco, bt-a2dp, p2p or mirror state is connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 870
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "handleMessage(default)"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->roamToTopScoreAP(Z)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 858
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 859
    .local v1, "newRssi":I
    const-string v2, "WifiHtcNetworkSelection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RSSI_CHANGED_EVENT newRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    .end local v1    # "newRssi":I
    :sswitch_2
    const-string v2, "WifiHtcNetworkSelection"

    const-string v3, "SCAN_RESULTS_AVAILABLE_EVENT received by NetworkSelectionHandler"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->selectTopScoreAP()Z

    move-result v0

    .line 864
    .local v0, "findAP":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->sendOffloadTriggerNotificationBroadcast(Z)V

    goto :goto_0

    .line 867
    .end local v0    # "findAP":Z
    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$NetworkSelectionHandler;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->handleTXPer_NetworkSelection()V

    goto :goto_0

    .line 853
    nop

    :sswitch_data_0
    .sparse-switch
        0x240c5 -> :sswitch_3
        0x240c6 -> :sswitch_1
        0x240cb -> :sswitch_2
        0x240cf -> :sswitch_0
    .end sparse-switch
.end method
