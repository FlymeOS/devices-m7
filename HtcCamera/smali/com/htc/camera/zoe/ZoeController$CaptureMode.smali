.class public final enum Lcom/htc/camera/zoe/ZoeController$CaptureMode;
.super Ljava/lang/Enum;
.source "ZoeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/zoe/ZoeController$CaptureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/zoe/ZoeController$CaptureMode;

.field public static final enum LongZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

.field public static final enum ShortZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

.field public static final enum SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

.field public static final enum Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

.field public static final enum Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 144
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    const-string v1, "SingleShot"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 145
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    const-string v1, "ShortZoe"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ShortZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 146
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    const-string v1, "LongZoe"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->LongZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 147
    new-instance v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    const-string v1, "Video"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/zoe/ZoeController$CaptureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    .line 141
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Unknown:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->SingleShot:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->ShortZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->LongZoe:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->Video:Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->$VALUES:[Lcom/htc/camera/zoe/ZoeController$CaptureMode;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/zoe/ZoeController$CaptureMode;
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/zoe/ZoeController$CaptureMode;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/htc/camera/zoe/ZoeController$CaptureMode;->$VALUES:[Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    invoke-virtual {v0}, [Lcom/htc/camera/zoe/ZoeController$CaptureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/zoe/ZoeController$CaptureMode;

    return-object v0
.end method
