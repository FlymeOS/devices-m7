.class final Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder;
.super Lcom/htc/camera/component/cn;
.source "WatchCompanionBroadcasterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/camera/component/cn",
        "<",
        "Lcom/htc/camera/component/WatchCompanionBroadcaster;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Watch-Companion Intent Broadcaster"

    invoke-direct {p0, v0}, Lcom/htc/camera/component/cn;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/WatchCompanionBroadcaster;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/htc/camera/component/WatchCompanionBroadcaster;

    invoke-direct {v0, p1}, Lcom/htc/camera/component/WatchCompanionBroadcaster;-><init>(Lcom/htc/camera/HTCCamera;)V

    return-object v0
.end method

.method public synthetic b(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/Component;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder;->a(Lcom/htc/camera/HTCCamera;)Lcom/htc/camera/component/WatchCompanionBroadcaster;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/htc/camera/HTCCamera;)Z
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder$1;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    invoke-virtual {p1}, Lcom/htc/camera/HTCCamera;->getStartMode()Lcom/htc/camera/CameraStartMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 27
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 25
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
