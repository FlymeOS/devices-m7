.class final enum Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;
.super Ljava/lang/Enum;
.source "DualCameraController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFrontClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFrontClosing:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFrontOpening:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFrontStarting:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFrontStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFrontStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFrontTakingPicture:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryFrontToMainSwitching:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMainClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMainClosing:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMainOpening:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMainStarting:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMainStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMainStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMainTakingPicture:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualPrimaryMainToFrontSwitching:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualToFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum DualToMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum FrontToDual:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum MainToDual:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

.field public static final enum SingleCam:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "SingleCam"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->SingleCam:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 127
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "MainToDual"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->MainToDual:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 128
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "FrontToDual"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->FrontToDual:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 129
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualToMain"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualToMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 130
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualToFront"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualToFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 131
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMain"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 132
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMainClosing"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainClosing:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 133
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMainClosed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 134
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMainOpening"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainOpening:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 135
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMainStarting"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStarting:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 136
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMainStopping"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 137
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMainStopped"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 138
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMainToFrontSwitching"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainToFrontSwitching:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 139
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryMainTakingPicture"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainTakingPicture:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 140
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFront"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 141
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFrontClosing"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontClosing:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 142
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFrontClosed"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 143
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFrontOpening"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontOpening:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 144
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFrontStarting"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStarting:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 145
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFrontStopping"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 146
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFrontStopped"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 147
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFrontToMainSwitching"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontToMainSwitching:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 148
    new-instance v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    const-string v1, "DualPrimaryFrontTakingPicture"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontTakingPicture:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    .line 124
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->SingleCam:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->MainToDual:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->FrontToDual:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualToMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualToFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMain:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainClosing:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainOpening:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStarting:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainToFrontSwitching:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryMainTakingPicture:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFront:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontClosing:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontClosed:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontOpening:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStarting:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopping:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontStopped:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontToMainSwitching:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->DualPrimaryFrontTakingPicture:Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->$VALUES:[Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

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
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->$VALUES:[Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    invoke-virtual {v0}, [Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/dualcamera/DualCameraController$DualCameraState;

    return-object v0
.end method
