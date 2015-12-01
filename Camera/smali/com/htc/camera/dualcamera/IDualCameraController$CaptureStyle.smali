.class public final enum Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;
.super Ljava/lang/Enum;
.source "IDualCameraController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

.field public static final enum HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

.field public static final enum HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

.field public static final enum Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    .line 23
    new-instance v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    const-string v1, "HalfSplit"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    .line 24
    new-instance v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    const-string v1, "HumanJoint"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->Normal:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HalfSplit:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->HumanJoint:Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->$VALUES:[Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->$VALUES:[Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    invoke-virtual {v0}, [Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/dualcamera/IDualCameraController$CaptureStyle;

    return-object v0
.end method
