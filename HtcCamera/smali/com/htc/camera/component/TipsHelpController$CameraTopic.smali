.class final enum Lcom/htc/camera/component/TipsHelpController$CameraTopic;
.super Ljava/lang/Enum;
.source "TipsHelpController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/TipsHelpController$CameraTopic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/TipsHelpController$CameraTopic;

.field public static final enum BURST:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

.field public static final enum HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

.field public static final enum PANORAMA:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

.field public static final enum SLOW_MOTION:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

.field public static final enum VIDEO_HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

.field public static final enum ZOE:Lcom/htc/camera/component/TipsHelpController$CameraTopic;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/TipsHelpController$CameraTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->BURST:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    .line 74
    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    const-string v1, "PANORAMA"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/TipsHelpController$CameraTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->PANORAMA:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    .line 75
    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    const-string v1, "ZOE"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/TipsHelpController$CameraTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->ZOE:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    .line 76
    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    const-string v1, "HDR"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/component/TipsHelpController$CameraTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    .line 77
    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    const-string v1, "VIDEO_HDR"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/component/TipsHelpController$CameraTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->VIDEO_HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    .line 78
    new-instance v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    const-string v1, "SLOW_MOTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/TipsHelpController$CameraTopic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->SLOW_MOTION:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->BURST:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->PANORAMA:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->ZOE:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->VIDEO_HDR:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->SLOW_MOTION:Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->$VALUES:[Lcom/htc/camera/component/TipsHelpController$CameraTopic;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/TipsHelpController$CameraTopic;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/TipsHelpController$CameraTopic;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/htc/camera/component/TipsHelpController$CameraTopic;->$VALUES:[Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    invoke-virtual {v0}, [Lcom/htc/camera/component/TipsHelpController$CameraTopic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/TipsHelpController$CameraTopic;

    return-object v0
.end method
