.class Lcom/android/server/wifi/WifiStateMachine$6;
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
    .line 1708
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$6;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1711
    const-string v1, "mirror_display_status"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1712
    .local v0, "mirrorStatus":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$6;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$6;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduel scan detect , Mirror mode status change to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1714
    if-eqz v0, :cond_1

    .line 1715
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$6;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->restrictScanControl(IZ)V
    invoke-static {v1, v4, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$6;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->restrictScanControl(IZ)V
    invoke-static {v1, v4, v4}, Lcom/android/server/wifi/WifiStateMachine;->access$900(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto :goto_0
.end method
