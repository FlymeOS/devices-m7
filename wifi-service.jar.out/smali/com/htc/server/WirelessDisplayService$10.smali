.class Lcom/htc/server/WirelessDisplayService$10;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0

    .prologue
    .line 2828
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2831
    # getter for: Lcom/htc/server/WirelessDisplayService;->DBG:Z
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WirelessDisplayService"

    const-string v2, "Receive Configuration Tool notify update dongle state to paired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    :cond_0
    const-string v1, "dongleStaBssid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2833
    .local v0, "dongleStaBssid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2834
    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$10;->this$0:Lcom/htc/server/WirelessDisplayService;

    # invokes: Lcom/htc/server/WirelessDisplayService;->updateDongleStateToPaired(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/htc/server/WirelessDisplayService;->access$10200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    .line 2835
    :cond_1
    return-void
.end method
