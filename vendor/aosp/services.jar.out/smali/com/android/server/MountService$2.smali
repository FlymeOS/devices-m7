.class Lcom/android/server/MountService$2;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 807
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 809
    const-string v3, "connected"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "mass_storage"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    .local v1, "available":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v3, v1}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Z)V

    .line 813
    if-nez v1, :cond_0

    .line 814
    const-string v3, "MountService"

    const-string v4, "Unmount PCTOOL.ISO"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v3, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3, v2}, Lcom/android/server/MountService;->setPCtoolISOEnabled(Z)I

    .line 816
    iget-object v3, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->mountISOOnBoot()Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    const-string v3, "MountService"

    const-string v4, " Unmount CDROM.ISO"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v3, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3, v2}, Lcom/android/server/MountService;->setMountISOEnabled(Z)I

    .line 827
    .end local v1    # "available":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 809
    goto :goto_0

    .line 821
    :cond_2
    const-string v2, "com.htc.intent.action.Mount_Notify"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    iget-object v2, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->mountISOOnBoot()Z
    invoke-static {v2}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    const-string v2, "MountService"

    const-string v3, "mount CDROM.ISO when usb driver ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v2, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v2, v1}, Lcom/android/server/MountService;->setMountISOEnabled(Z)I

    goto :goto_1
.end method
