.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTvDisplayHelper.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;)V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 503
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "DongleListBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .line 505
    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleListBroadcastReceiver;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->access$400(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Z

    move-result v1

    .line 509
    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onReadyDongleFound()V

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onNoReadyDongle()V

    goto :goto_0
.end method
