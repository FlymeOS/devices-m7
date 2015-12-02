.class public final enum Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;
.super Ljava/lang/Enum;
.source "ISplitPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum FirstCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum FirstImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum NextCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum NextImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum Swiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum TakingPicture:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum WaitingForController:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

.field public static final enum WaitingNextSwiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "WaitingForController"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingForController:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 15
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "Preparing"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 16
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "FirstCaptureReady"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 17
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "TakingPicture"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->TakingPicture:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 18
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "Swiping"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Swiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 19
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "WaitingNextSwiping"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingNextSwiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 20
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "NextCaptureReady"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 21
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "FirstImageProcessing"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 22
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "Reviewing"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 23
    new-instance v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    const-string v1, "NextImageProcessing"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    .line 12
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingForController:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Preparing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->TakingPicture:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Swiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->WaitingNextSwiping:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextCaptureReady:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->FirstImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->Reviewing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->NextImageProcessing:Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->$VALUES:[Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->$VALUES:[Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    invoke-virtual {v0}, [Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/splitcapture/ISplitPhotoController$SplitPhotoState;

    return-object v0
.end method
