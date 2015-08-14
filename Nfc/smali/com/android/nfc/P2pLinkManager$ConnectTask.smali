.class final Lcom/android/nfc/P2pLinkManager$ConnectTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v13, 0x1

    const/4 v9, 0x0

    .line 795
    const/4 v2, 0x0

    .line 796
    .local v2, "needsHandover":Z
    const/4 v3, 0x0

    .line 797
    .local v3, "needsNdef":Z
    const/4 v6, 0x0

    .line 798
    .local v6, "success":Z
    const/4 v1, 0x0

    .line 799
    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    const/4 v5, 0x0

    .line 800
    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    const/4 v4, 0x0

    .line 802
    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 803
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 804
    const/4 v2, 0x1

    .line 807
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-eqz v7, :cond_1

    .line 808
    const/4 v3, 0x1

    .line 810
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    if-eqz v2, :cond_2

    .line 814
    new-instance v1, Lcom/android/nfc/handover/HandoverClient;

    .end local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    .line 816
    .restart local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 817
    const/4 v6, 0x1

    .line 823
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    .line 825
    :cond_3
    sget-boolean v7, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    if-eqz v7, :cond_d

    .line 826
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mClientEnabled:Z
    invoke-static {v7}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 828
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;
    invoke-static {v7}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v7

    if-nez v7, :cond_b

    .line 829
    const-string v7, "NfcP2pLinkManager"

    const-string v8, "Creating DTA Snep Client"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    new-instance v8, Lcom/android/nfc/sneptest/DtaSnepClient;

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mServiceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/nfc/P2pLinkManager;->access$200(Lcom/android/nfc/P2pLinkManager;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mDtaMiu:I
    invoke-static {v10}, Lcom/android/nfc/P2pLinkManager;->access$300(Lcom/android/nfc/P2pLinkManager;)I

    move-result v10

    iget-object v11, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mDtaRwSize:I
    invoke-static {v11}, Lcom/android/nfc/P2pLinkManager;->access$400(Lcom/android/nfc/P2pLinkManager;)I

    move-result v11

    iget-object v12, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mTestCaseID:I
    invoke-static {v12}, Lcom/android/nfc/P2pLinkManager;->access$500(Lcom/android/nfc/P2pLinkManager;)I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/nfc/sneptest/DtaSnepClient;-><init>(Ljava/lang/String;III)V

    # setter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;
    invoke-static {v7, v8}, Lcom/android/nfc/P2pLinkManager;->access$102(Lcom/android/nfc/P2pLinkManager;Lcom/android/nfc/sneptest/DtaSnepClient;)Lcom/android/nfc/sneptest/DtaSnepClient;

    .line 831
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # setter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClientReady:Z
    invoke-static {v7, v13}, Lcom/android/nfc/P2pLinkManager;->access$602(Lcom/android/nfc/P2pLinkManager;Z)Z

    .line 846
    :cond_4
    :goto_1
    :try_start_2
    sget-boolean v7, Lcom/android/nfc/NfcService;->mIsDtaMode:Z

    if-eqz v7, :cond_e

    .line 847
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClientReady:Z
    invoke-static {v7}, Lcom/android/nfc/P2pLinkManager;->access$600(Lcom/android/nfc/P2pLinkManager;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 849
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;
    invoke-static {v7}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/nfc/sneptest/DtaSnepClient;->DtaClientOperations()V

    .line 856
    :cond_5
    :goto_2
    const/4 v6, 0x1

    .line 857
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    const/4 v8, 0x0

    # setter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;
    invoke-static {v7, v8}, Lcom/android/nfc/P2pLinkManager;->access$102(Lcom/android/nfc/P2pLinkManager;Lcom/android/nfc/sneptest/DtaSnepClient;)Lcom/android/nfc/sneptest/DtaSnepClient;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 862
    :goto_3
    if-nez v6, :cond_6

    .line 863
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushClient;

    .end local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    invoke-direct {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;-><init>()V

    .line 865
    .restart local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :try_start_3
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 866
    const/4 v6, 0x1

    .line 873
    :cond_6
    :goto_4
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 874
    :try_start_4
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 876
    if-eqz v1, :cond_7

    .line 877
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 879
    :cond_7
    if-eqz v5, :cond_8

    .line 880
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 882
    :cond_8
    if-eqz v4, :cond_9

    .line 883
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 885
    :cond_9
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;
    invoke-static {v7}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 886
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;
    invoke-static {v7}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/nfc/sneptest/DtaSnepClient;->close()V

    .line 888
    :cond_a
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 896
    :goto_5
    return-object v7

    .line 810
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 832
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # getter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClient:Lcom/android/nfc/sneptest/DtaSnepClient;
    invoke-static {v7}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;)Lcom/android/nfc/sneptest/DtaSnepClient;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 833
    const-string v7, "NfcP2pLinkManager"

    const-string v8, "DTA Snep Client Already Existing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # setter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClientReady:Z
    invoke-static {v7, v13}, Lcom/android/nfc/P2pLinkManager;->access$602(Lcom/android/nfc/P2pLinkManager;Z)Z

    goto :goto_1

    .line 836
    :cond_c
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    # setter for: Lcom/android/nfc/P2pLinkManager;->mDtaSnepClientReady:Z
    invoke-static {v7, v9}, Lcom/android/nfc/P2pLinkManager;->access$602(Lcom/android/nfc/P2pLinkManager;Z)Z

    goto :goto_1

    .line 842
    :cond_d
    new-instance v5, Lcom/android/nfc/snep/SnepClient;

    .end local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    invoke-direct {v5}, Lcom/android/nfc/snep/SnepClient;-><init>()V

    .restart local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    goto :goto_1

    .line 854
    :cond_e
    :try_start_6
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->connect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 858
    :catch_1
    move-exception v0

    .line 859
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_3

    .line 867
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 868
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_4

    .line 893
    .end local v0    # "e":Ljava/io/IOException;
    :cond_f
    :try_start_7
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v1, v7, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 894
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v5, v7, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 895
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v4, v7, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 896
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    monitor-exit v8

    goto :goto_5

    .line 898
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 779
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "ConnectTask was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :goto_0
    return-void

    .line 786
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpServicesConnected()V

    goto :goto_0

    .line 789
    :cond_1
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Could not connect required NFC transports"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 779
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
