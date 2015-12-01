.class Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;
.super Ljava/lang/Object;
.source "HtcTvDisplayHelper.java"

# interfaces
.implements Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayHelper$WirelessDisplayListener;


# instance fields
.field final synthetic this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;


# direct methods
.method private constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$1;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;-><init>(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)V

    return-void
.end method


# virtual methods
.method public onMirrorStateChange(I)V
    .locals 4

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .line 476
    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/WirelessDisplayManagerReflection;->get_MIRROR_MODE_DISPLAY_ENABLED()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 481
    const-string v1, "HtcTvDisplayHelper "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MirrorChangeListener][onMirrorStateChange] mirrorState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onTvReadyToPlay()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    const-string v1, "HtcTvDisplayHelper "

    const-string v2, "[onMirrorStateChange] NullPointerException caught!"

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onMirrorStatusChange(I)V
    .locals 4

    .prologue
    .line 460
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    .line 462
    const-string v1, "HtcTvDisplayHelper "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MirrorChangeListener][onMirrorStatusChange] mirrorState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, p1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onMirrorModeStateChanged(I)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string v0, "HtcTvDisplayHelper "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MirrorChangeListener][onMirrorStatusChange] mirrorState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but mTvDisplayListener == null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMirrorStatusChange(ZJ)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$MirrorChangeListener;->this$0:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;

    # getter for: Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->mTvDisplayListener:Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;
    invoke-static {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;->access$300(Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper;)Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;

    move-result-object v0

    .line 443
    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 446
    :cond_0
    if-eqz p1, :cond_1

    .line 448
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onTvOn()V

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {v0}, Lcom/htc/lib3/medialinksharedmodule/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;->onTvOff()V

    goto :goto_0
.end method
