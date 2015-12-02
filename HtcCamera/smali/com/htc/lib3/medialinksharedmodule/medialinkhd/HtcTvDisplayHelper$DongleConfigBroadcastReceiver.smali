.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTvDisplayHelper.java"


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 532
    const-string v0, "HtcTvDisplayHelper "

    const-string v1, "DongleConfigBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$DongleConfigBroadcastReceiver;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .line 534
    if-nez v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 536
    :cond_0
    const-string v1, "RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const-string v1, "HtcTvDisplayHelper "

    const-string v2, "DongleConfig SUCCESS"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onTvReadyToPlay()V

    goto :goto_0

    .line 541
    :cond_1
    const-string v1, "HtcTvDisplayHelper "

    const-string v2, "DongleConfig FAIL"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onNoTvToPlay()V

    goto :goto_0
.end method
