.class public final enum Lcom/htc/camera/RecordingState;
.super Ljava/lang/Enum;
.source "RecordingState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/RecordingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/RecordingState;

.field public static final enum Paused:Lcom/htc/camera/RecordingState;

.field public static final enum Pausing:Lcom/htc/camera/RecordingState;

.field public static final enum Preparing:Lcom/htc/camera/RecordingState;

.field public static final enum Ready:Lcom/htc/camera/RecordingState;

.field public static final enum Resuming:Lcom/htc/camera/RecordingState;

.field public static final enum Reviewing:Lcom/htc/camera/RecordingState;

.field public static final enum Started:Lcom/htc/camera/RecordingState;

.field public static final enum Starting:Lcom/htc/camera/RecordingState;

.field public static final enum Stopping:Lcom/htc/camera/RecordingState;


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
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Preparing"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    .line 6
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    .line 7
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Starting"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    .line 8
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Started"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    .line 9
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Pausing"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    .line 10
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Paused"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    .line 11
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Resuming"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    .line 12
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Stopping"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    .line 13
    new-instance v0, Lcom/htc/camera/RecordingState;

    const-string v1, "Reviewing"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/RecordingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/camera/RecordingState;

    sget-object v1, Lcom/htc/camera/RecordingState;->Preparing:Lcom/htc/camera/RecordingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/RecordingState;->Ready:Lcom/htc/camera/RecordingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/RecordingState;->Starting:Lcom/htc/camera/RecordingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/RecordingState;->Started:Lcom/htc/camera/RecordingState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/RecordingState;->Pausing:Lcom/htc/camera/RecordingState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/RecordingState;->Paused:Lcom/htc/camera/RecordingState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/RecordingState;->Resuming:Lcom/htc/camera/RecordingState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/RecordingState;->Stopping:Lcom/htc/camera/RecordingState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/RecordingState;->Reviewing:Lcom/htc/camera/RecordingState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/RecordingState;->$VALUES:[Lcom/htc/camera/RecordingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/RecordingState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/RecordingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/RecordingState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/RecordingState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/RecordingState;->$VALUES:[Lcom/htc/camera/RecordingState;

    invoke-virtual {v0}, [Lcom/htc/camera/RecordingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/RecordingState;

    return-object v0
.end method
