.class public final enum Lcom/htc/camera/AutoFocusMode;
.super Ljava/lang/Enum;
.source "AutoFocusMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/AutoFocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/AutoFocusMode;

.field public static final enum BeforeCapture:Lcom/htc/camera/AutoFocusMode;

.field public static final enum Face:Lcom/htc/camera/AutoFocusMode;

.field public static final enum Facetouch:Lcom/htc/camera/AutoFocusMode;

.field public static final enum FocusMoving:Lcom/htc/camera/AutoFocusMode;

.field public static final enum LockFocus:Lcom/htc/camera/AutoFocusMode;

.field public static final enum Sensor:Lcom/htc/camera/AutoFocusMode;

.field public static final enum Touch:Lcom/htc/camera/AutoFocusMode;


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
    new-instance v0, Lcom/htc/camera/AutoFocusMode;

    const-string v1, "Touch"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    .line 6
    new-instance v0, Lcom/htc/camera/AutoFocusMode;

    const-string v1, "Sensor"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    .line 7
    new-instance v0, Lcom/htc/camera/AutoFocusMode;

    const-string v1, "Face"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    .line 8
    new-instance v0, Lcom/htc/camera/AutoFocusMode;

    const-string v1, "BeforeCapture"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    .line 9
    new-instance v0, Lcom/htc/camera/AutoFocusMode;

    const-string v1, "LockFocus"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoFocusMode;->LockFocus:Lcom/htc/camera/AutoFocusMode;

    .line 10
    new-instance v0, Lcom/htc/camera/AutoFocusMode;

    const-string v1, "Facetouch"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoFocusMode;->Facetouch:Lcom/htc/camera/AutoFocusMode;

    .line 11
    new-instance v0, Lcom/htc/camera/AutoFocusMode;

    const-string v1, "FocusMoving"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/AutoFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/AutoFocusMode;->FocusMoving:Lcom/htc/camera/AutoFocusMode;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/camera/AutoFocusMode;

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Touch:Lcom/htc/camera/AutoFocusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Sensor:Lcom/htc/camera/AutoFocusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->Face:Lcom/htc/camera/AutoFocusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->BeforeCapture:Lcom/htc/camera/AutoFocusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/AutoFocusMode;->LockFocus:Lcom/htc/camera/AutoFocusMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->Facetouch:Lcom/htc/camera/AutoFocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/AutoFocusMode;->FocusMoving:Lcom/htc/camera/AutoFocusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/AutoFocusMode;->$VALUES:[Lcom/htc/camera/AutoFocusMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/AutoFocusMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/AutoFocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/AutoFocusMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/AutoFocusMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/AutoFocusMode;->$VALUES:[Lcom/htc/camera/AutoFocusMode;

    invoke-virtual {v0}, [Lcom/htc/camera/AutoFocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/AutoFocusMode;

    return-object v0
.end method
