.class final enum Lcom/htc/camera/dualcamera/DualCameraController$PictureType;
.super Ljava/lang/Enum;
.source "DualCameraController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/dualcamera/DualCameraController$PictureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

.field public static final enum Final:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

.field public static final enum Primary:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

.field public static final enum PrimaryInfinity:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

.field public static final enum Secondary:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

.field public static final enum SecondaryInfinity:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    const-string v1, "Primary"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->Primary:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    .line 153
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    const-string v1, "PrimaryInfinity"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->PrimaryInfinity:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    .line 154
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    const-string v1, "Secondary"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->Secondary:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    .line 155
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    const-string v1, "SecondaryInfinity"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->SecondaryInfinity:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    .line 156
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    const-string v1, "Final"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->Final:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->Primary:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->PrimaryInfinity:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->Secondary:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->SecondaryInfinity:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->Final:Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->$VALUES:[Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

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
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/dualcamera/DualCameraController$PictureType;
    .locals 1

    .prologue
    .line 150
    const-class v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/dualcamera/DualCameraController$PictureType;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->$VALUES:[Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    invoke-virtual {v0}, [Lcom/htc/camera/dualcamera/DualCameraController$PictureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/dualcamera/DualCameraController$PictureType;

    return-object v0
.end method
