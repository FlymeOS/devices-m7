.class final enum Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;
.super Ljava/lang/Enum;
.source "PanoramaPlusUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

.field public static final enum Capturing:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

.field public static final enum Ready:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

.field public static final enum Stopped:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

.field public static final enum Stopping:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

.field public static final enum WaitingControllerReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

.field public static final enum WaitingDeviceRotationReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    const-string v1, "WaitingControllerReady"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->WaitingControllerReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    .line 219
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    const-string v1, "WaitingDeviceRotationReady"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->WaitingDeviceRotationReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    .line 220
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Ready:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    .line 221
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    const-string v1, "Capturing"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    .line 222
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    const-string v1, "Stopping"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Stopping:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    .line 223
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    const-string v1, "Stopped"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    .line 216
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->WaitingControllerReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->WaitingDeviceRotationReady:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Ready:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Stopping:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->$VALUES:[Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

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
    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;
    .locals 1

    .prologue
    .line 216
    const-class v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->$VALUES:[Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    invoke-virtual {v0}, [Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    return-object v0
.end method
