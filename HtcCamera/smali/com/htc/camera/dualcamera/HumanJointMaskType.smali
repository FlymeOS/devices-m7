.class public final enum Lcom/htc/camera/dualcamera/HumanJointMaskType;
.super Ljava/lang/Enum;
.source "HumanJointMaskType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/dualcamera/HumanJointMaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/dualcamera/HumanJointMaskType;

.field public static final enum LONG_HAIR:Lcom/htc/camera/dualcamera/HumanJointMaskType;

.field public static final enum ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

.field public static final enum SHORT_HAIR:Lcom/htc/camera/dualcamera/HumanJointMaskType;


# instance fields
.field public final parameterValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/htc/camera/dualcamera/HumanJointMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 15
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;

    const-string v1, "SHORT_HAIR"

    invoke-direct {v0, v1, v3, v4}, Lcom/htc/camera/dualcamera/HumanJointMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->SHORT_HAIR:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 19
    new-instance v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;

    const-string v1, "LONG_HAIR"

    invoke-direct {v0, v1, v4, v3}, Lcom/htc/camera/dualcamera/HumanJointMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->LONG_HAIR:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/dualcamera/HumanJointMaskType;

    sget-object v1, Lcom/htc/camera/dualcamera/HumanJointMaskType;->ORIGINAL:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/dualcamera/HumanJointMaskType;->SHORT_HAIR:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/dualcamera/HumanJointMaskType;->LONG_HAIR:Lcom/htc/camera/dualcamera/HumanJointMaskType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->$VALUES:[Lcom/htc/camera/dualcamera/HumanJointMaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->parameterValue:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/dualcamera/HumanJointMaskType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/dualcamera/HumanJointMaskType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/htc/camera/dualcamera/HumanJointMaskType;->$VALUES:[Lcom/htc/camera/dualcamera/HumanJointMaskType;

    invoke-virtual {v0}, [Lcom/htc/camera/dualcamera/HumanJointMaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/dualcamera/HumanJointMaskType;

    return-object v0
.end method
