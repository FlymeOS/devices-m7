.class public final enum Lcom/htc/camera/splitcapture/SplitVideoCaptureState;
.super Ljava/lang/Enum;
.source "SplitVideoCaptureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/splitcapture/SplitVideoCaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum PREPARE_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum PREPARE_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum READY_RETAKE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum RE_CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum RE_CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum RE_CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

.field public static final enum UNAVAILABLE:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "UNAVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->UNAVAILABLE:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 7
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 8
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "CAPTURING_1ST"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 9
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "CAPTURED_1ST"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 10
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "RE_CAPTURING_1ST"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 11
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "RE_CAPTURED_1ST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 12
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "CAPTURING_2ND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 13
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "CAPTURED_2ND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 14
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "RE_CAPTURING_2ND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 15
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "RE_CAPTURED_2ND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 16
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "REVIEW"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 17
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "PREPARE_RECAPTURE_1ST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 18
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "READY_RECAPTURE_1ST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 19
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "PREPARE_RECAPTURE_2ND"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 20
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "READY_RECAPTURE_2ND"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 23
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    const-string v1, "READY_RETAKE_1ST"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RETAKE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    .line 3
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->UNAVAILABLE:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURING_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->RE_CAPTURED_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->REVIEW:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->PREPARE_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RECAPTURE_2ND:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->READY_RETAKE_1ST:Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->$VALUES:[Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitVideoCaptureState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/splitcapture/SplitVideoCaptureState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->$VALUES:[Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    invoke-virtual {v0}, [Lcom/htc/camera/splitcapture/SplitVideoCaptureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/splitcapture/SplitVideoCaptureState;

    return-object v0
.end method
