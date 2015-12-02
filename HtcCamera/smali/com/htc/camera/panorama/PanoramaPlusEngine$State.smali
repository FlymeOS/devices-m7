.class public final enum Lcom/htc/camera/panorama/PanoramaPlusEngine$State;
.super Ljava/lang/Enum;
.source "PanoramaPlusEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/panorama/PanoramaPlusEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

.field public static final enum AimingAtFirstFrame:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

.field public static final enum Capturing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

.field public static final enum Closed:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

.field public static final enum Initializing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

.field public static final enum Ready:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

.field public static final enum Stopped:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    const-string v1, "Initializing"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Initializing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 52
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Ready:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 53
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    const-string v1, "AimingAtFirstFrame"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->AimingAtFirstFrame:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 54
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    const-string v1, "Capturing"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 55
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 57
    new-instance v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    const-string v1, "Closed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Closed:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Initializing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Ready:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->AimingAtFirstFrame:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Capturing:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Stopped:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->Closed:Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->$VALUES:[Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/panorama/PanoramaPlusEngine$State;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/panorama/PanoramaPlusEngine$State;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->$VALUES:[Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    invoke-virtual {v0}, [Lcom/htc/camera/panorama/PanoramaPlusEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/panorama/PanoramaPlusEngine$State;

    return-object v0
.end method
