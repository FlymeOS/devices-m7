.class public final enum Lcom/htc/camera/imaging/PixelFormat;
.super Ljava/lang/Enum;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/imaging/PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/imaging/PixelFormat;

.field public static final enum Argb32:Lcom/htc/camera/imaging/PixelFormat;

.field public static final enum Rgb16:Lcom/htc/camera/imaging/PixelFormat;

.field public static final enum Unknown:Lcom/htc/camera/imaging/PixelFormat;

.field public static final enum Yvu420Sp:Lcom/htc/camera/imaging/PixelFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/imaging/PixelFormat;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/imaging/PixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/imaging/PixelFormat;->Unknown:Lcom/htc/camera/imaging/PixelFormat;

    .line 6
    new-instance v0, Lcom/htc/camera/imaging/PixelFormat;

    const-string v1, "Argb32"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/imaging/PixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/imaging/PixelFormat;->Argb32:Lcom/htc/camera/imaging/PixelFormat;

    .line 7
    new-instance v0, Lcom/htc/camera/imaging/PixelFormat;

    const-string v1, "Rgb16"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/imaging/PixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/imaging/PixelFormat;->Rgb16:Lcom/htc/camera/imaging/PixelFormat;

    .line 8
    new-instance v0, Lcom/htc/camera/imaging/PixelFormat;

    const-string v1, "Yvu420Sp"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/imaging/PixelFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/htc/camera/imaging/PixelFormat;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/imaging/PixelFormat;

    sget-object v1, Lcom/htc/camera/imaging/PixelFormat;->Unknown:Lcom/htc/camera/imaging/PixelFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/imaging/PixelFormat;->Argb32:Lcom/htc/camera/imaging/PixelFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/imaging/PixelFormat;->Rgb16:Lcom/htc/camera/imaging/PixelFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/htc/camera/imaging/PixelFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/imaging/PixelFormat;->$VALUES:[Lcom/htc/camera/imaging/PixelFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/imaging/PixelFormat;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/imaging/PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/imaging/PixelFormat;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/imaging/PixelFormat;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/imaging/PixelFormat;->$VALUES:[Lcom/htc/camera/imaging/PixelFormat;

    invoke-virtual {v0}, [Lcom/htc/camera/imaging/PixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/imaging/PixelFormat;

    return-object v0
.end method
