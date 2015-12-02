.class Lcom/htc/camera/capturemode/f;
.super Lcom/htc/camera/CameraSettings;
.source "UserCaptureMode.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "camera-mode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "camera-type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "default-effect"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "default-scene"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "default-video-scene"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display-name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is-dual-camera-mode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is-human-joint-mode"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is-zoe-mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "default-split-capture-type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "defaut-photo-booth-pattern"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/htc/camera/capturemode/f;->addPrivateKeys([Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/htc/camera/CameraSettings;-><init>(Lcom/htc/camera/HTCCamera;Ljava/lang/String;)V

    .line 114
    return-void
.end method
