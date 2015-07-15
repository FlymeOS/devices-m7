.class Lcom/android/server/wifi/HtcWifiWanDetect$2;
.super Landroid/content/BroadcastReceiver;
.source "HtcWifiWanDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/HtcWifiWanDetect;->setWifiWanErrorDialogReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/HtcWifiWanDetect;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/HtcWifiWanDetect;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/wifi/HtcWifiWanDetect$2;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    const-string v1, "HtcWifiWanDetect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive ACTION_SHOW_WAN_ERROR_DIALOG errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetect$2;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # getter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mErrorCode:I
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$600(Lcom/android/server/wifi/HtcWifiWanDetect;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/HtcWifiWanDetect$2;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # getter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mNetworkID:I
    invoke-static {v3}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$700(Lcom/android/server/wifi/HtcWifiWanDetect;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "uiIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    const-string v1, "errorCode"

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$2;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # getter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mErrorCode:I
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$600(Lcom/android/server/wifi/HtcWifiWanDetect;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    const-string v1, "networkID"

    iget-object v2, p0, Lcom/android/server/wifi/HtcWifiWanDetect$2;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # getter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mNetworkID:I
    invoke-static {v2}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$700(Lcom/android/server/wifi/HtcWifiWanDetect;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/server/wifi/HtcWifiWanDetect$2;->this$0:Lcom/android/server/wifi/HtcWifiWanDetect;

    # getter for: Lcom/android/server/wifi/HtcWifiWanDetect;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/HtcWifiWanDetect;->access$800(Lcom/android/server/wifi/HtcWifiWanDetect;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    return-void
.end method
