.class public final enum Lcom/htc/camera/splitcapture/SplitCaptureType;
.super Ljava/lang/Enum;
.source "SplitCaptureType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/splitcapture/SplitCaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/splitcapture/SplitCaptureType;

.field public static final enum DualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

.field public static final enum HumanJointCapture:Lcom/htc/camera/splitcapture/SplitCaptureType;

.field public static final enum SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

.field public static final enum SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

.field public static final enum SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

.field public static final enum SplitVideo_6_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const-string v1, "SplitPhoto"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/splitcapture/SplitCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 6
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const-string v1, "SplitVideo_6_Seconds"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_6_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 7
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const-string v1, "SplitVideo_15_Seconds"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/splitcapture/SplitCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 8
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const-string v1, "DualCamera"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/splitcapture/SplitCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->DualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 9
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const-string v1, "SplitDualCamera"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/splitcapture/SplitCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 10
    new-instance v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    const-string v1, "HumanJointCapture"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitCaptureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->HumanJointCapture:Lcom/htc/camera/splitcapture/SplitCaptureType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/splitcapture/SplitCaptureType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitPhoto:Lcom/htc/camera/splitcapture/SplitCaptureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_6_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitVideo_15_Seconds:Lcom/htc/camera/splitcapture/SplitCaptureType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->DualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/splitcapture/SplitCaptureType;->SplitDualCamera:Lcom/htc/camera/splitcapture/SplitCaptureType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/splitcapture/SplitCaptureType;->HumanJointCapture:Lcom/htc/camera/splitcapture/SplitCaptureType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->$VALUES:[Lcom/htc/camera/splitcapture/SplitCaptureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitCaptureType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitCaptureType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/splitcapture/SplitCaptureType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/splitcapture/SplitCaptureType;->$VALUES:[Lcom/htc/camera/splitcapture/SplitCaptureType;

    invoke-virtual {v0}, [Lcom/htc/camera/splitcapture/SplitCaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/splitcapture/SplitCaptureType;

    return-object v0
.end method
