.class synthetic Lcom/htc/camera/IRecordingLimitController$1;
.super Ljava/lang/Object;
.source "IRecordingLimitController.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$component$CameraComponent$DependencyThreadType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->values()[Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/IRecordingLimitController$1;->$SwitchMap$com$htc$camera$component$CameraComponent$DependencyThreadType:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/IRecordingLimitController$1;->$SwitchMap$com$htc$camera$component$CameraComponent$DependencyThreadType:[I

    sget-object v1, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->CameraThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/IRecordingLimitController$1;->$SwitchMap$com$htc$camera$component$CameraComponent$DependencyThreadType:[I

    sget-object v1, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->UIThread:Lcom/htc/camera/component/CameraComponent$DependencyThreadType;

    invoke-virtual {v1}, Lcom/htc/camera/component/CameraComponent$DependencyThreadType;->ordinal()I

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
