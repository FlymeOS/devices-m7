.class Lcom/android/server/wifi/WifiHtcNetworkSelection$2;
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
    .line 1021
    iput-object p1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$2;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1024
    const-string v1, "mirror_display_status"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1027
    .local v0, "mMirrorStatus":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiHtcNetworkSelection$2;->this$0:Lcom/android/server/wifi/WifiHtcNetworkSelection;

    # getter for: Lcom/android/server/wifi/WifiHtcNetworkSelection;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/android/server/wifi/WifiHtcNetworkSelection;->access$500(Lcom/android/server/wifi/WifiHtcNetworkSelection;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiNative;->setMirrorStatusCommand(Z)Z

    .line 1029
    return-void
.end method
