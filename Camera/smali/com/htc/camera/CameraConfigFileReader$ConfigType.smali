.class final enum Lcom/htc/camera/CameraConfigFileReader$ConfigType;
.super Ljava/lang/Enum;
.source "CameraConfigFileReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraConfigFileReader$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraConfigFileReader$ConfigType;

.field public static final enum DEFAULT_VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

.field public static final enum ISO:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

.field public static final enum RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

.field public static final enum SHUTTER_SPEED:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

.field public static final enum SHUTTER_SPEED_MARKER:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

.field public static final enum VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    const-string v1, "RESOLUTION"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CameraConfigFileReader$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    new-instance v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    const-string v1, "ISO"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/CameraConfigFileReader$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->ISO:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    new-instance v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    const-string v1, "VIDEO_RESOLUTION"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/CameraConfigFileReader$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    new-instance v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    const-string v1, "DEFAULT_VIDEO_RESOLUTION"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/CameraConfigFileReader$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->DEFAULT_VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    new-instance v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    const-string v1, "SHUTTER_SPEED"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/CameraConfigFileReader$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->SHUTTER_SPEED:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    new-instance v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    const-string v1, "SHUTTER_SPEED_MARKER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraConfigFileReader$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->SHUTTER_SPEED_MARKER:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    sget-object v1, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->ISO:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->DEFAULT_VIDEO_RESOLUTION:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->SHUTTER_SPEED:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->SHUTTER_SPEED_MARKER:Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->$VALUES:[Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraConfigFileReader$ConfigType;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraConfigFileReader$ConfigType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/camera/CameraConfigFileReader$ConfigType;->$VALUES:[Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraConfigFileReader$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraConfigFileReader$ConfigType;

    return-object v0
.end method
