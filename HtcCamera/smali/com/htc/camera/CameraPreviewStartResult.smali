.class public final enum Lcom/htc/camera/CameraPreviewStartResult;
.super Ljava/lang/Enum;
.source "CameraPreviewStartResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraPreviewStartResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum CameraHWOpenFail:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum CameraInNoMem:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum CameraOpenFailed:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum CameraPolicyDisabled:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum CameraResourceOccupy:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum Canceled:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum LowPower:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum LowPowerDualModeCalling:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum LowPowerRestrict3D:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum NoCameraToken:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum Successful:Lcom/htc/camera/CameraPreviewStartResult;

.field public static final enum UnknownError:Lcom/htc/camera/CameraPreviewStartResult;


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
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "Successful"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    .line 6
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "Canceled"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->Canceled:Lcom/htc/camera/CameraPreviewStartResult;

    .line 7
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "UnknownError"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->UnknownError:Lcom/htc/camera/CameraPreviewStartResult;

    .line 8
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "NoCameraToken"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/htc/camera/CameraPreviewStartResult;

    .line 9
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "InvalidState"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    .line 10
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "CameraOpenFailed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/htc/camera/CameraPreviewStartResult;

    .line 11
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "LowPower"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->LowPower:Lcom/htc/camera/CameraPreviewStartResult;

    .line 12
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "LowPowerRestrict3D"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/htc/camera/CameraPreviewStartResult;

    .line 13
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "LowPowerDualModeCalling"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/htc/camera/CameraPreviewStartResult;

    .line 14
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "CameraResourceOccupy"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/htc/camera/CameraPreviewStartResult;

    .line 15
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "CameraInNoMem"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/htc/camera/CameraPreviewStartResult;

    .line 16
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "CameraHWOpenFail"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/htc/camera/CameraPreviewStartResult;

    .line 17
    new-instance v0, Lcom/htc/camera/CameraPreviewStartResult;

    const-string v1, "CameraPolicyDisabled"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewStartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/htc/camera/CameraPreviewStartResult;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/htc/camera/CameraPreviewStartResult;

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->Successful:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->Canceled:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->UnknownError:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->NoCameraToken:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/CameraPreviewStartResult;->InvalidState:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraOpenFailed:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->LowPower:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerRestrict3D:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->LowPowerDualModeCalling:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraResourceOccupy:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraInNoMem:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraHWOpenFail:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/camera/CameraPreviewStartResult;->CameraPolicyDisabled:Lcom/htc/camera/CameraPreviewStartResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/CameraPreviewStartResult;->$VALUES:[Lcom/htc/camera/CameraPreviewStartResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraPreviewStartResult;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/CameraPreviewStartResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewStartResult;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraPreviewStartResult;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/CameraPreviewStartResult;->$VALUES:[Lcom/htc/camera/CameraPreviewStartResult;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraPreviewStartResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraPreviewStartResult;

    return-object v0
.end method
