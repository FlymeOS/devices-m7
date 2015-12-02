.class synthetic Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder$1;
.super Ljava/lang/Object;
.source "WatchCompanionBroadcasterBuilder.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraStartMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/htc/camera/CameraStartMode;->values()[Lcom/htc/camera/CameraStartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder$1;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder$1;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    sget-object v1, Lcom/htc/camera/CameraStartMode;->WatchCompanionPhoto:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder$1;->$SwitchMap$com$htc$camera$CameraStartMode:[I

    sget-object v1, Lcom/htc/camera/CameraStartMode;->WatchCompanionVideo:Lcom/htc/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/htc/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
