.class Lcom/android/server/display/HtcAutoBrightnessCtrl$10;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/display/HtcAutoBrightnessCtrl;)V
    .locals 0

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$10;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1487
    if-nez p2, :cond_0

    .line 1488
    const-string v1, "HABCtrl"

    const-string v2, "onReceive, intent is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :goto_0
    return-void

    .line 1491
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1493
    const-string v1, "HABCtrl"

    const-string v2, "onReceive, action is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1496
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$10;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    # getter for: Lcom/android/server/display/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/display/HtcAutoBrightnessCtrl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1497
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive, action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_2
    const-string v1, "com.htc.server.htcpowersaver.action.screenon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1501
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$10;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)V

    goto :goto_0

    .line 1502
    :cond_3
    const-string v1, "com.htc.server.htcpowersaver.action.screenoff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1503
    iget-object v1, p0, Lcom/android/server/display/HtcAutoBrightnessCtrl$10;->this$0:Lcom/android/server/display/HtcAutoBrightnessCtrl;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/display/HtcAutoBrightnessCtrl;->setPowerSaverMode(Z)V
    invoke-static {v1, v2}, Lcom/android/server/display/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/display/HtcAutoBrightnessCtrl;Z)V

    goto :goto_0

    .line 1505
    :cond_4
    const-string v1, "HABCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
