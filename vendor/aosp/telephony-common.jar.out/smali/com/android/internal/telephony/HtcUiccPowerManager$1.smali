.class Lcom/android/internal/telephony/HtcUiccPowerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcUiccPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcUiccPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcUiccPowerManager;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    const-string v2, "state"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$002(Lcom/android/internal/telephony/HtcUiccPowerManager;Z)Z

    .line 51
    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive Intent.ACTION_AIRPLANE_MODE_CHANGED enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z
    invoke-static {v3}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$000(Lcom/android/internal/telephony/HtcUiccPowerManager;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z
    invoke-static {v2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$000(Lcom/android/internal/telephony/HtcUiccPowerManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->clearCardSetup(Z)V

    .line 54
    :cond_0
    return-void
.end method
