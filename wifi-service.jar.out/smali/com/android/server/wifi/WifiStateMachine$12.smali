.class Lcom/android/server/wifi/WifiStateMachine$12;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wifi/WifiTrafficPoller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1942
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$12;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v8, 0x2005f

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1945
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1947
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1948
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$12;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v6, 0x1

    invoke-virtual {v5, v8, v6}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1950
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$12;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v5, v8, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(II)V

    goto :goto_0

    .line 1951
    :cond_2
    const-string v5, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1952
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$12;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startNextBatchedScanAsync()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;)V

    goto :goto_0

    .line 1955
    :cond_3
    const-string v5, "com.quicinc.cne.CNE_PREFERENCE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1956
    const-string v5, "cneFeatureId"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1957
    .local v1, "featureId":I
    const-string v5, "cneFeatureParameter"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1958
    .local v2, "featureParam":I
    const-string v5, "cneParameterValue"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1959
    .local v3, "featureVal":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$12;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handlePrefChange(III)V
    invoke-static {v5, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2200(Lcom/android/server/wifi/WifiStateMachine;III)V

    goto :goto_0

    .line 1960
    .end local v1    # "featureId":I
    .end local v2    # "featureParam":I
    .end local v3    # "featureVal":I
    :cond_4
    const-string v5, "prop_state_change"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1961
    const-string v5, "state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1962
    .local v4, "state":I
    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$12;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleStateChange(I)V
    invoke-static {v5, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0
.end method
