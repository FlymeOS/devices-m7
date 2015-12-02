.class final enum Lcom/htc/camera/component/AutoFaceCaptureController$DropState;
.super Ljava/lang/Enum;
.source "AutoFaceCaptureController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/AutoFaceCaptureController$DropState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

.field public static final enum ContinuousDropping:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

.field public static final enum Dropped:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

.field public static final enum Dropping:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

.field public static final enum Unavailable:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Unavailable:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 106
    new-instance v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    const-string v1, "Dropping"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Dropping:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 107
    new-instance v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    const-string v1, "Dropped"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Dropped:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 108
    new-instance v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    const-string v1, "ContinuousDropping"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->ContinuousDropping:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Unavailable:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Dropping:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->Dropped:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->ContinuousDropping:Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->$VALUES:[Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/AutoFaceCaptureController$DropState;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/AutoFaceCaptureController$DropState;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->$VALUES:[Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    invoke-virtual {v0}, [Lcom/htc/camera/component/AutoFaceCaptureController$DropState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/AutoFaceCaptureController$DropState;

    return-object v0
.end method
