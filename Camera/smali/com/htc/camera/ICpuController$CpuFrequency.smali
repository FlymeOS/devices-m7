.class public final enum Lcom/htc/camera/ICpuController$CpuFrequency;
.super Ljava/lang/Enum;
.source "ICpuController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/ICpuController$CpuFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/ICpuController$CpuFrequency;

.field public static final enum HIGH:Lcom/htc/camera/ICpuController$CpuFrequency;

.field public static final enum HIGHEST:Lcom/htc/camera/ICpuController$CpuFrequency;

.field public static final enum LOW:Lcom/htc/camera/ICpuController$CpuFrequency;

.field public static final enum LOWEST:Lcom/htc/camera/ICpuController$CpuFrequency;

.field public static final enum MEDIUM:Lcom/htc/camera/ICpuController$CpuFrequency;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/htc/camera/ICpuController$CpuFrequency;

    const-string v1, "LOWEST"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/ICpuController$CpuFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ICpuController$CpuFrequency;->LOWEST:Lcom/htc/camera/ICpuController$CpuFrequency;

    .line 23
    new-instance v0, Lcom/htc/camera/ICpuController$CpuFrequency;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/ICpuController$CpuFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ICpuController$CpuFrequency;->LOW:Lcom/htc/camera/ICpuController$CpuFrequency;

    .line 27
    new-instance v0, Lcom/htc/camera/ICpuController$CpuFrequency;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/ICpuController$CpuFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ICpuController$CpuFrequency;->MEDIUM:Lcom/htc/camera/ICpuController$CpuFrequency;

    .line 31
    new-instance v0, Lcom/htc/camera/ICpuController$CpuFrequency;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/ICpuController$CpuFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ICpuController$CpuFrequency;->HIGH:Lcom/htc/camera/ICpuController$CpuFrequency;

    .line 35
    new-instance v0, Lcom/htc/camera/ICpuController$CpuFrequency;

    const-string v1, "HIGHEST"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/ICpuController$CpuFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/ICpuController$CpuFrequency;->HIGHEST:Lcom/htc/camera/ICpuController$CpuFrequency;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/ICpuController$CpuFrequency;

    sget-object v1, Lcom/htc/camera/ICpuController$CpuFrequency;->LOWEST:Lcom/htc/camera/ICpuController$CpuFrequency;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/ICpuController$CpuFrequency;->LOW:Lcom/htc/camera/ICpuController$CpuFrequency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/ICpuController$CpuFrequency;->MEDIUM:Lcom/htc/camera/ICpuController$CpuFrequency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/ICpuController$CpuFrequency;->HIGH:Lcom/htc/camera/ICpuController$CpuFrequency;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/ICpuController$CpuFrequency;->HIGHEST:Lcom/htc/camera/ICpuController$CpuFrequency;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/ICpuController$CpuFrequency;->$VALUES:[Lcom/htc/camera/ICpuController$CpuFrequency;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/ICpuController$CpuFrequency;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/camera/ICpuController$CpuFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ICpuController$CpuFrequency;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/ICpuController$CpuFrequency;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/camera/ICpuController$CpuFrequency;->$VALUES:[Lcom/htc/camera/ICpuController$CpuFrequency;

    invoke-virtual {v0}, [Lcom/htc/camera/ICpuController$CpuFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/ICpuController$CpuFrequency;

    return-object v0
.end method
