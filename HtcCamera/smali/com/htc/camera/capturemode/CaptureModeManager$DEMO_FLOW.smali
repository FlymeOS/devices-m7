.class public final enum Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;
.super Ljava/lang/Enum;
.source "CaptureModeManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

.field public static final enum DEMO_HUMAN_JOINT:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

.field public static final enum DEMO_MAINCAMERA:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

.field public static final enum DEMO_PHOTOBOOTH:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

.field public static final enum DEMO_SELFIE:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

.field public static final enum DEMO_SPLIT_CAPTURE:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

.field public static final enum DEMO_UNKNOW:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    const-string v1, "DEMO_MAINCAMERA"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_MAINCAMERA:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    .line 64
    new-instance v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    const-string v1, "DEMO_HUMAN_JOINT"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_HUMAN_JOINT:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    .line 65
    new-instance v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    const-string v1, "DEMO_SPLIT_CAPTURE"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_SPLIT_CAPTURE:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    .line 66
    new-instance v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    const-string v1, "DEMO_SELFIE"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_SELFIE:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    .line 67
    new-instance v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    const-string v1, "DEMO_PHOTOBOOTH"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_PHOTOBOOTH:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    .line 68
    new-instance v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    const-string v1, "DEMO_UNKNOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_UNKNOW:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_MAINCAMERA:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_HUMAN_JOINT:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_SPLIT_CAPTURE:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_SELFIE:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_PHOTOBOOTH:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->DEMO_UNKNOW:Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->$VALUES:[Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->$VALUES:[Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    invoke-virtual {v0}, [Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/capturemode/CaptureModeManager$DEMO_FLOW;

    return-object v0
.end method
