.class public final enum Lcom/htc/camera/CameraHwKeyType;
.super Ljava/lang/Enum;
.source "CameraHwKeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraHwKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraHwKeyType;

.field public static final enum LASTCAMERA:Lcom/htc/camera/CameraHwKeyType;

.field public static final enum MAINCAMERA:Lcom/htc/camera/CameraHwKeyType;

.field public static final enum SELFIE:Lcom/htc/camera/CameraHwKeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/htc/camera/CameraHwKeyType;

    const-string v1, "SELFIE"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraHwKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraHwKeyType;->SELFIE:Lcom/htc/camera/CameraHwKeyType;

    .line 5
    new-instance v0, Lcom/htc/camera/CameraHwKeyType;

    const-string v1, "MAINCAMERA"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CameraHwKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraHwKeyType;->MAINCAMERA:Lcom/htc/camera/CameraHwKeyType;

    .line 6
    new-instance v0, Lcom/htc/camera/CameraHwKeyType;

    const-string v1, "LASTCAMERA"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/CameraHwKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraHwKeyType;->LASTCAMERA:Lcom/htc/camera/CameraHwKeyType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/CameraHwKeyType;

    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->SELFIE:Lcom/htc/camera/CameraHwKeyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->MAINCAMERA:Lcom/htc/camera/CameraHwKeyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CameraHwKeyType;->LASTCAMERA:Lcom/htc/camera/CameraHwKeyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/CameraHwKeyType;->$VALUES:[Lcom/htc/camera/CameraHwKeyType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraHwKeyType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/CameraHwKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraHwKeyType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraHwKeyType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/CameraHwKeyType;->$VALUES:[Lcom/htc/camera/CameraHwKeyType;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraHwKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraHwKeyType;

    return-object v0
.end method
