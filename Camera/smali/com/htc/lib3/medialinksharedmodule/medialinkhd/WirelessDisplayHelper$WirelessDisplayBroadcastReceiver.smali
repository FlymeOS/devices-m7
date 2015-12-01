.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WirelessDisplayHelper.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$1;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 489
    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    move-result-object v0

    # invokes: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->isWirelessDisplayManagerNull(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$200(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_EXTRA_MIRROR_DISPLAY_STATUS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 493
    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_EXTRA_MIRROR_DISPLAY_STATE()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_DISPLAY_DISABLED()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 494
    const-string v2, "isResume"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 496
    const-string v3, "WirelessDisplayHelper "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WirelessDisplayBroadcastReceiver] [onReceive] in mirror mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v3, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayBroadcastReceiver;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;
    invoke-static {v3}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;

    move-result-object v3

    .line 499
    if-eqz v3, :cond_0

    .line 501
    invoke-interface {v3, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;->onMirrorStatusChange(I)V

    .line 504
    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_DISPLAY_DISABLED()I

    move-result v4

    if-eq v4, v1, :cond_2

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_DISPLAY_ENABLED()I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 507
    :cond_2
    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v4

    .line 508
    invoke-static {v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getIPLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 510
    const-string v7, "WirelessDisplayHelper "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[WirelessDisplayBroadcastReceiver] in mirror mode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", IP = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", isResume = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-interface {v3, v0, v5, v6}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;->onMirrorStatusChange(ZJ)V

    .line 515
    if-eqz v0, :cond_0

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->mWirelessDisplayManagerReflection:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->access$100()Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;

    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_DISPLAY_ENABLED()I

    move-result v0

    if-ne v0, v1, :cond_0

    if-nez v2, :cond_0

    .line 516
    invoke-interface {v3, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;->onMirrorStateChange(I)V

    goto/16 :goto_0

    .line 520
    :cond_3
    const-string v2, "WirelessDisplayHelper "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WirelessDisplayBroadcastReceiver] in mirror mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
