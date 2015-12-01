.class public final enum Lcom/htc/camera/capturemode/CaptureMode$State;
.super Ljava/lang/Enum;
.source "CaptureMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/capturemode/CaptureMode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/capturemode/CaptureMode$State;

.field public static final enum Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

.field public static final enum Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

.field public static final enum Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

.field public static final enum Exiting:Lcom/htc/camera/capturemode/CaptureMode$State;

.field public static final enum Released:Lcom/htc/camera/capturemode/CaptureMode$State;

.field public static final enum Releasing:Lcom/htc/camera/capturemode/CaptureMode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    const-string v1, "Entering"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/capturemode/CaptureMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    .line 40
    new-instance v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    const-string v1, "Entered"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/capturemode/CaptureMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    .line 41
    new-instance v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    const-string v1, "Exiting"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/capturemode/CaptureMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Exiting:Lcom/htc/camera/capturemode/CaptureMode$State;

    .line 42
    new-instance v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    const-string v1, "Exited"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/capturemode/CaptureMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

    .line 43
    new-instance v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    const-string v1, "Releasing"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/capturemode/CaptureMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Releasing:Lcom/htc/camera/capturemode/CaptureMode$State;

    .line 44
    new-instance v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    const-string v1, "Released"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/capturemode/CaptureMode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->Released:Lcom/htc/camera/capturemode/CaptureMode$State;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/capturemode/CaptureMode$State;

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entering:Lcom/htc/camera/capturemode/CaptureMode$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Entered:Lcom/htc/camera/capturemode/CaptureMode$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Exiting:Lcom/htc/camera/capturemode/CaptureMode$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Exited:Lcom/htc/camera/capturemode/CaptureMode$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/capturemode/CaptureMode$State;->Releasing:Lcom/htc/camera/capturemode/CaptureMode$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/capturemode/CaptureMode$State;->Released:Lcom/htc/camera/capturemode/CaptureMode$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->$VALUES:[Lcom/htc/camera/capturemode/CaptureMode$State;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/capturemode/CaptureMode$State;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/capturemode/CaptureMode$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/capturemode/CaptureMode$State;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/camera/capturemode/CaptureMode$State;->$VALUES:[Lcom/htc/camera/capturemode/CaptureMode$State;

    invoke-virtual {v0}, [Lcom/htc/camera/capturemode/CaptureMode$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/capturemode/CaptureMode$State;

    return-object v0
.end method
