.class Lcom/android/server/wifi/WifiController$DefaultState$1;
.super Ljava/lang/Object;
.source "WifiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 471
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DefaultState$1;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState$1;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "Dialog dismiss, reset FLAG"

    # invokes: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$1500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DefaultState$1;->this$1:Lcom/android/server/wifi/WifiController$DefaultState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController$DefaultState;->this$0:Lcom/android/server/wifi/WifiController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wifi/WifiController;->mEnableConfDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$1302(Lcom/android/server/wifi/WifiController;Z)Z

    .line 475
    return-void
.end method
