.class public final enum Lcom/htc/camera/CameraOpenFailedReason;
.super Ljava/lang/Enum;
.source "CameraOpenFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraOpenFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum CameraHWOpenFail:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum CameraInNoMem:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum CameraPolicyDisabled:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum CameraResourceOccupy:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum InvalidCamera:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum LowPower:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum LowPowerDualModeCalling:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum LowPowerRestrict3D:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum NoToken:Lcom/htc/camera/CameraOpenFailedReason;

.field public static final enum Unknown:Lcom/htc/camera/CameraOpenFailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->Unknown:Lcom/htc/camera/CameraOpenFailedReason;

    .line 6
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "NoToken"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->NoToken:Lcom/htc/camera/CameraOpenFailedReason;

    .line 7
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "InvalidCamera"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/htc/camera/CameraOpenFailedReason;

    .line 8
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "LowPower"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->LowPower:Lcom/htc/camera/CameraOpenFailedReason;

    .line 9
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "LowPowerRestrict3D"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/htc/camera/CameraOpenFailedReason;

    .line 10
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "LowPowerDualModeCalling"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/htc/camera/CameraOpenFailedReason;

    .line 11
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "CameraResourceOccupy"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/htc/camera/CameraOpenFailedReason;

    .line 12
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "CameraInNoMem"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/htc/camera/CameraOpenFailedReason;

    .line 13
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "CameraHWOpenFail"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/htc/camera/CameraOpenFailedReason;

    .line 14
    new-instance v0, Lcom/htc/camera/CameraOpenFailedReason;

    const-string v1, "CameraPolicyDisabled"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraOpenFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/htc/camera/CameraOpenFailedReason;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/camera/CameraOpenFailedReason;

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->Unknown:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->NoToken:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->InvalidCamera:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->LowPower:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/CameraOpenFailedReason;->LowPowerRestrict3D:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/CameraOpenFailedReason;->LowPowerDualModeCalling:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/CameraOpenFailedReason;->CameraResourceOccupy:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/CameraOpenFailedReason;->CameraInNoMem:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/CameraOpenFailedReason;->CameraHWOpenFail:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/CameraOpenFailedReason;->CameraPolicyDisabled:Lcom/htc/camera/CameraOpenFailedReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/CameraOpenFailedReason;->$VALUES:[Lcom/htc/camera/CameraOpenFailedReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraOpenFailedReason;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/CameraOpenFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraOpenFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraOpenFailedReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/CameraOpenFailedReason;->$VALUES:[Lcom/htc/camera/CameraOpenFailedReason;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraOpenFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraOpenFailedReason;

    return-object v0
.end method
