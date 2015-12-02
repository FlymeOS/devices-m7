.class public final enum Lcom/htc/camera/CameraThreadBlockReason;
.super Ljava/lang/Enum;
.source "CameraThreadBlockReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CameraThreadBlockReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CameraThreadBlockReason;

.field public static final enum BlockedIn3rdPartyLibrary:Lcom/htc/camera/CameraThreadBlockReason;

.field public static final enum BlockedInCameraDriver:Lcom/htc/camera/CameraThreadBlockReason;

.field public static final enum BlockedInIOAccess:Lcom/htc/camera/CameraThreadBlockReason;

.field public static final enum BlockedInMediaRecorder:Lcom/htc/camera/CameraThreadBlockReason;

.field public static final enum Unknown:Lcom/htc/camera/CameraThreadBlockReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/CameraThreadBlockReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CameraThreadBlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraThreadBlockReason;->Unknown:Lcom/htc/camera/CameraThreadBlockReason;

    .line 6
    new-instance v0, Lcom/htc/camera/CameraThreadBlockReason;

    const-string v1, "BlockedInCameraDriver"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CameraThreadBlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInCameraDriver:Lcom/htc/camera/CameraThreadBlockReason;

    .line 7
    new-instance v0, Lcom/htc/camera/CameraThreadBlockReason;

    const-string v1, "BlockedInMediaRecorder"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/CameraThreadBlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInMediaRecorder:Lcom/htc/camera/CameraThreadBlockReason;

    .line 8
    new-instance v0, Lcom/htc/camera/CameraThreadBlockReason;

    const-string v1, "BlockedInIOAccess"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/CameraThreadBlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInIOAccess:Lcom/htc/camera/CameraThreadBlockReason;

    .line 9
    new-instance v0, Lcom/htc/camera/CameraThreadBlockReason;

    const-string v1, "BlockedIn3rdPartyLibrary"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/CameraThreadBlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CameraThreadBlockReason;->BlockedIn3rdPartyLibrary:Lcom/htc/camera/CameraThreadBlockReason;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/CameraThreadBlockReason;

    sget-object v1, Lcom/htc/camera/CameraThreadBlockReason;->Unknown:Lcom/htc/camera/CameraThreadBlockReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInCameraDriver:Lcom/htc/camera/CameraThreadBlockReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInMediaRecorder:Lcom/htc/camera/CameraThreadBlockReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CameraThreadBlockReason;->BlockedInIOAccess:Lcom/htc/camera/CameraThreadBlockReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/CameraThreadBlockReason;->BlockedIn3rdPartyLibrary:Lcom/htc/camera/CameraThreadBlockReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/CameraThreadBlockReason;->$VALUES:[Lcom/htc/camera/CameraThreadBlockReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CameraThreadBlockReason;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/CameraThreadBlockReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraThreadBlockReason;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CameraThreadBlockReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/CameraThreadBlockReason;->$VALUES:[Lcom/htc/camera/CameraThreadBlockReason;

    invoke-virtual {v0}, [Lcom/htc/camera/CameraThreadBlockReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CameraThreadBlockReason;

    return-object v0
.end method
