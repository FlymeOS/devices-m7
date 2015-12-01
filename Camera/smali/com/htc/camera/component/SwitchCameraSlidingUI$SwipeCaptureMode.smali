.class final enum Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;
.super Ljava/lang/Enum;
.source "SwitchCameraSlidingUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

.field public static final enum MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

.field public static final enum SELFIE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

.field public static final enum SPLIT_CAPTURE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    const-string v1, "MAIN_CAMERA"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 82
    new-instance v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    const-string v1, "SELFIE"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SELFIE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 83
    new-instance v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    const-string v1, "SPLIT_CAPTURE"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SPLIT_CAPTURE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->MAIN_CAMERA:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SELFIE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->SPLIT_CAPTURE:Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->$VALUES:[Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->$VALUES:[Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    invoke-virtual {v0}, [Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/SwitchCameraSlidingUI$SwipeCaptureMode;

    return-object v0
.end method
