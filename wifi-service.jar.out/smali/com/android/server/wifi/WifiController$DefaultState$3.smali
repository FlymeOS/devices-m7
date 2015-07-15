.class Lcom/android/server/wifi/WifiController$DefaultState$3;
.super Ljava/lang/Object;
.source "WifiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController$DefaultState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiController$DefaultState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController$DefaultState;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState$3;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 449
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState$3;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "Click Cancel to deny turning on WLAN"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiController;->access$1700(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 453
    const-string v1, "wifi_state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const-string v1, "previous_wifi_state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DefaultState$3;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    iget-object v1, v1, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 456
    return-void
.end method
