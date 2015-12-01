.class final enum Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
.super Ljava/lang/Enum;
.source "SplitVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

.field public static final enum FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

.field public static final enum NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

.field public static final enum STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

.field public static final enum STARTING:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

.field public static final enum START_AND_WAIT:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 348
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    const-string v1, "START_AND_WAIT"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->START_AND_WAIT:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 349
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->STARTING:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 350
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 351
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    .line 345
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->NOT_STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->START_AND_WAIT:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->STARTING:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->STARTED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->FINISHED:Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->$VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

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
    .line 345
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    .locals 1

    .prologue
    .line 345
    const-class v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->$VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    invoke-virtual {v0}, [Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/splitcapture/SplitVideoUI$AnimationState;

    return-object v0
.end method
