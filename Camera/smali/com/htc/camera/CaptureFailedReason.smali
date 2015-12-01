.class public final enum Lcom/htc/camera/CaptureFailedReason;
.super Ljava/lang/Enum;
.source "CaptureFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/CaptureFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/CaptureFailedReason;

.field public static final enum DriverFail:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum DurationTooShort:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum HasPopupOrDialog:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum ImageQueueIsFull:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum InvalidState:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum LowInternalDataSpace:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum NoAudioResource:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum StorageError:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum Unknown:Lcom/htc/camera/CaptureFailedReason;

.field public static final enum WifiCalling:Lcom/htc/camera/CaptureFailedReason;


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
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    .line 6
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "StorageError"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->StorageError:Lcom/htc/camera/CaptureFailedReason;

    .line 7
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "LowInternalDataSpace"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/htc/camera/CaptureFailedReason;

    .line 8
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "ImageQueueIsFull"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->ImageQueueIsFull:Lcom/htc/camera/CaptureFailedReason;

    .line 9
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "InvalidState"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    .line 10
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "DriverFail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    .line 11
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "HasPopupOrDialog"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->HasPopupOrDialog:Lcom/htc/camera/CaptureFailedReason;

    .line 12
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "DurationTooShort"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->DurationTooShort:Lcom/htc/camera/CaptureFailedReason;

    .line 13
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "WifiCalling"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->WifiCalling:Lcom/htc/camera/CaptureFailedReason;

    .line 14
    new-instance v0, Lcom/htc/camera/CaptureFailedReason;

    const-string v1, "NoAudioResource"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/CaptureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->NoAudioResource:Lcom/htc/camera/CaptureFailedReason;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/camera/CaptureFailedReason;

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->Unknown:Lcom/htc/camera/CaptureFailedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->StorageError:Lcom/htc/camera/CaptureFailedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->LowInternalDataSpace:Lcom/htc/camera/CaptureFailedReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->ImageQueueIsFull:Lcom/htc/camera/CaptureFailedReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/CaptureFailedReason;->InvalidState:Lcom/htc/camera/CaptureFailedReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->DriverFail:Lcom/htc/camera/CaptureFailedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->HasPopupOrDialog:Lcom/htc/camera/CaptureFailedReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->DurationTooShort:Lcom/htc/camera/CaptureFailedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->WifiCalling:Lcom/htc/camera/CaptureFailedReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/CaptureFailedReason;->NoAudioResource:Lcom/htc/camera/CaptureFailedReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/CaptureFailedReason;->$VALUES:[Lcom/htc/camera/CaptureFailedReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/CaptureFailedReason;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/CaptureFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CaptureFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/CaptureFailedReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/CaptureFailedReason;->$VALUES:[Lcom/htc/camera/CaptureFailedReason;

    invoke-virtual {v0}, [Lcom/htc/camera/CaptureFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/CaptureFailedReason;

    return-object v0
.end method
