.class final enum Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;
.super Ljava/lang/Enum;
.source "SplitVideoUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

.field public static final enum DECREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

.field public static final enum INCREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    const-string v1, "INCREASING"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->INCREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    .line 371
    new-instance v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    const-string v1, "DECREASING"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->DECREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    .line 368
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->INCREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->DECREASING:Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->$VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

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
    .line 368
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;
    .locals 1

    .prologue
    .line 368
    const-class v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->$VALUES:[Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    invoke-virtual {v0}, [Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/splitcapture/SplitVideoUI$RecordingTimerType;

    return-object v0
.end method
