.class final enum Lcom/htc/camera/panorama/PanoramaFrameState;
.super Ljava/lang/Enum;
.source "PanoramaFrameState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/panorama/PanoramaFrameState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/panorama/PanoramaFrameState;

.field public static final enum Captured:Lcom/htc/camera/panorama/PanoramaFrameState;

.field public static final enum ReadyToCapture:Lcom/htc/camera/panorama/PanoramaFrameState;

.field public static final enum Unavailable:Lcom/htc/camera/panorama/PanoramaFrameState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/panorama/PanoramaFrameState;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/panorama/PanoramaFrameState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaFrameState;->Unavailable:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 6
    new-instance v0, Lcom/htc/camera/panorama/PanoramaFrameState;

    const-string v1, "ReadyToCapture"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/panorama/PanoramaFrameState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaFrameState;->ReadyToCapture:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 7
    new-instance v0, Lcom/htc/camera/panorama/PanoramaFrameState;

    const-string v1, "Captured"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/panorama/PanoramaFrameState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/panorama/PanoramaFrameState;->Captured:Lcom/htc/camera/panorama/PanoramaFrameState;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/panorama/PanoramaFrameState;

    sget-object v1, Lcom/htc/camera/panorama/PanoramaFrameState;->Unavailable:Lcom/htc/camera/panorama/PanoramaFrameState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/panorama/PanoramaFrameState;->ReadyToCapture:Lcom/htc/camera/panorama/PanoramaFrameState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/panorama/PanoramaFrameState;->Captured:Lcom/htc/camera/panorama/PanoramaFrameState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/panorama/PanoramaFrameState;->$VALUES:[Lcom/htc/camera/panorama/PanoramaFrameState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/panorama/PanoramaFrameState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/panorama/PanoramaFrameState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/panorama/PanoramaFrameState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/panorama/PanoramaFrameState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/panorama/PanoramaFrameState;->$VALUES:[Lcom/htc/camera/panorama/PanoramaFrameState;

    invoke-virtual {v0}, [Lcom/htc/camera/panorama/PanoramaFrameState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/panorama/PanoramaFrameState;

    return-object v0
.end method
