.class public final enum Lcom/htc/camera/CameraPreviewState;
.super Ljava/lang/Enum;
.source "CameraPreviewState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraPreviewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraPreviewState;

.field public static final enum STARTED:Lcom/htc/camera/CameraPreviewState;

.field public static final enum STARTING:Lcom/htc/camera/CameraPreviewState;

.field public static final enum STOPPED:Lcom/htc/camera/CameraPreviewState;

.field public static final enum STOPPING:Lcom/htc/camera/CameraPreviewState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/htc/camera/CameraPreviewState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    .line 15
    new-instance v0, Lcom/htc/camera/CameraPreviewState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CameraPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    .line 19
    new-instance v0, Lcom/htc/camera/CameraPreviewState;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/CameraPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewState;->STOPPING:Lcom/htc/camera/CameraPreviewState;

    .line 23
    new-instance v0, Lcom/htc/camera/CameraPreviewState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/CameraPreviewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraPreviewState;->STOPPED:Lcom/htc/camera/CameraPreviewState;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/CameraPreviewState;

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTING:Lcom/htc/camera/CameraPreviewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STARTED:Lcom/htc/camera/CameraPreviewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPING:Lcom/htc/camera/CameraPreviewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CameraPreviewState;->STOPPED:Lcom/htc/camera/CameraPreviewState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/CameraPreviewState;->$VALUES:[Lcom/htc/camera/CameraPreviewState;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraPreviewState;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/htc/camera/CameraPreviewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraPreviewState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraPreviewState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/htc/camera/CameraPreviewState;->$VALUES:[Lcom/htc/camera/CameraPreviewState;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraPreviewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraPreviewState;

    return-object v0
.end method
