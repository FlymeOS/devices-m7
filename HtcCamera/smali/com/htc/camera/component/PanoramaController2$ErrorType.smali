.class public final enum Lcom/htc/camera/component/PanoramaController2$ErrorType;
.super Ljava/lang/Enum;
.source "PanoramaController2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/PanoramaController2$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/PanoramaController2$ErrorType;

.field public static final enum Backward:Lcom/htc/camera/component/PanoramaController2$ErrorType;

.field public static final enum InitFailed:Lcom/htc/camera/component/PanoramaController2$ErrorType;

.field public static final enum TooFast:Lcom/htc/camera/component/PanoramaController2$ErrorType;

.field public static final enum TooNarrow:Lcom/htc/camera/component/PanoramaController2$ErrorType;

.field public static final enum Unknown:Lcom/htc/camera/component/PanoramaController2$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/PanoramaController2$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;->Unknown:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 173
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    const-string v1, "TooFast"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/PanoramaController2$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;->TooFast:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 174
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    const-string v1, "TooNarrow"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/PanoramaController2$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;->TooNarrow:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 175
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    const-string v1, "Backward"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/PanoramaController2$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;->Backward:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 176
    new-instance v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    const-string v1, "InitFailed"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/component/PanoramaController2$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;->InitFailed:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    .line 170
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/component/PanoramaController2$ErrorType;

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$ErrorType;->Unknown:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$ErrorType;->TooFast:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$ErrorType;->TooNarrow:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$ErrorType;->Backward:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/component/PanoramaController2$ErrorType;->InitFailed:Lcom/htc/camera/component/PanoramaController2$ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;->$VALUES:[Lcom/htc/camera/component/PanoramaController2$ErrorType;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/PanoramaController2$ErrorType;
    .locals 1

    .prologue
    .line 170
    const-class v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/PanoramaController2$ErrorType;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/htc/camera/component/PanoramaController2$ErrorType;->$VALUES:[Lcom/htc/camera/component/PanoramaController2$ErrorType;

    invoke-virtual {v0}, [Lcom/htc/camera/component/PanoramaController2$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/PanoramaController2$ErrorType;

    return-object v0
.end method
