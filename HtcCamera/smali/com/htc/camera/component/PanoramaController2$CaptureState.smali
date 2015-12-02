.class final enum Lcom/htc/camera/component/PanoramaController2$CaptureState;
.super Ljava/lang/Enum;
.source "PanoramaController2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/PanoramaController2$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/PanoramaController2$CaptureState;

.field public static final enum Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

.field public static final enum Ready:Lcom/htc/camera/component/PanoramaController2$CaptureState;

.field public static final enum Stopping:Lcom/htc/camera/component/PanoramaController2$CaptureState;

.field public static final enum Unavailable:Lcom/htc/camera/component/PanoramaController2$CaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/PanoramaController2$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Unavailable:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    .line 165
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/PanoramaController2$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Ready:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    .line 166
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;

    const-string v1, "Capturing"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/PanoramaController2$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    .line 167
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;

    const-string v1, "Stopping"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/PanoramaController2$CaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Stopping:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/component/PanoramaController2$CaptureState;

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Unavailable:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Ready:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Capturing:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$CaptureState;->Stopping:Lcom/htc/camera/component/PanoramaController2$CaptureState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->$VALUES:[Lcom/htc/camera/component/PanoramaController2$CaptureState;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/PanoramaController2$CaptureState;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/PanoramaController2$CaptureState;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$CaptureState;->$VALUES:[Lcom/htc/camera/component/PanoramaController2$CaptureState;

    invoke-virtual {v0}, [Lcom/htc/camera/component/PanoramaController2$CaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/PanoramaController2$CaptureState;

    return-object v0
.end method
