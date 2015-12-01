.class final enum Lcom/htc/camera/CameraController$ControllerState;
.super Ljava/lang/Enum;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraController$ControllerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraController$ControllerState;

.field public static final enum Closed:Lcom/htc/camera/CameraController$ControllerState;

.field public static final enum Error:Lcom/htc/camera/CameraController$ControllerState;

.field public static final enum Ready:Lcom/htc/camera/CameraController$ControllerState;

.field public static final enum Suspended:Lcom/htc/camera/CameraController$ControllerState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/htc/camera/CameraController$ControllerState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraController$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraController$ControllerState;->Ready:Lcom/htc/camera/CameraController$ControllerState;

    .line 116
    new-instance v0, Lcom/htc/camera/CameraController$ControllerState;

    const-string v1, "Suspended"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CameraController$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraController$ControllerState;->Suspended:Lcom/htc/camera/CameraController$ControllerState;

    .line 117
    new-instance v0, Lcom/htc/camera/CameraController$ControllerState;

    const-string v1, "Closed"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/CameraController$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    .line 118
    new-instance v0, Lcom/htc/camera/CameraController$ControllerState;

    const-string v1, "Error"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/CameraController$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraController$ControllerState;->Error:Lcom/htc/camera/CameraController$ControllerState;

    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/CameraController$ControllerState;

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Ready:Lcom/htc/camera/CameraController$ControllerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Suspended:Lcom/htc/camera/CameraController$ControllerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Closed:Lcom/htc/camera/CameraController$ControllerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CameraController$ControllerState;->Error:Lcom/htc/camera/CameraController$ControllerState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/CameraController$ControllerState;->$VALUES:[Lcom/htc/camera/CameraController$ControllerState;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraController$ControllerState;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/htc/camera/CameraController$ControllerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraController$ControllerState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraController$ControllerState;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/htc/camera/CameraController$ControllerState;->$VALUES:[Lcom/htc/camera/CameraController$ControllerState;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraController$ControllerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraController$ControllerState;

    return-object v0
.end method
