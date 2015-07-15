.class Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;
.super Landroid/database/ContentObserver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetheringPermissionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2940
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 2941
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2942
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2946
    const-string v0, "WifiService"

    const-string v1, "MHS htcSetupPermittedTether ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiServiceImpl;->internal_htcSetupPermittedTether()V

    .line 2948
    const-string v0, "net.frisbee.enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2949
    const-string v0, "WifiService"

    const-string v1, "ignore MHS for Frisbee"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$2802(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 2951
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$2902(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 2952
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->checkWifiApRemindDialog()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3000(Lcom/android/server/wifi/WifiServiceImpl;)Z

    .line 2972
    :cond_0
    :goto_0
    return-void

    .line 2955
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$2900(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMhsStatus:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2956
    const-string v0, "WifiService"

    const-string v1, "MHS HTC_PERMITTED_TETHER_ALLOW"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->access$2802(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 2958
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$2902(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 2959
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # invokes: Lcom/android/server/wifi/WifiServiceImpl;->checkWifiApRemindDialog()Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3000(Lcom/android/server/wifi/WifiServiceImpl;)Z

    goto :goto_0

    .line 2960
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMhsStatus:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->access$3100(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2961
    const-string v0, "WifiService"

    const-string v1, "MHS HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiApMhsPermission:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$2802(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 2963
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mProcessingMHS:Z
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$2902(Lcom/android/server/wifi/WifiServiceImpl;Z)Z

    .line 2964
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncGetWifidisplayApState()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 2965
    const-string v0, "WifiService"

    const-string v1, "disable wifi ap by HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 2968
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$TetheringPermissionObserver;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setMhsUiProcessing(Z)V

    goto :goto_0
.end method
