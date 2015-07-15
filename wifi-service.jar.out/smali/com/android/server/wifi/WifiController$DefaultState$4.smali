.class Lcom/android/server/wifi/WifiController$DefaultState$4;
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
    .line 440
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState$4;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState$4;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    # getter for: Lcom/android/server/wifi/WifiController;->mWifiServiceImpl:Lcom/android/server/wifi/WifiServiceImpl;
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiServiceImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->setWifiEnabled(Z)Z

    .line 443
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState$4;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "Click OK to permit turning on WLAN"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$1900(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 444
    return-void
.end method
