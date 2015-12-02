.class final enum Lcom/htc/camera/component/ContinuousBurstController$DropState;
.super Ljava/lang/Enum;
.source "ContinuousBurstController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/ContinuousBurstController$DropState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/ContinuousBurstController$DropState;

.field public static final enum ContinuousDropping:Lcom/htc/camera/component/ContinuousBurstController$DropState;

.field public static final enum Dropped:Lcom/htc/camera/component/ContinuousBurstController$DropState;

.field public static final enum Dropping:Lcom/htc/camera/component/ContinuousBurstController$DropState;

.field public static final enum Unavailable:Lcom/htc/camera/component/ContinuousBurstController$DropState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;

    const-string v1, "Unavailable"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/ContinuousBurstController$DropState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 121
    new-instance v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;

    const-string v1, "Dropping"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/ContinuousBurstController$DropState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Dropping:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 122
    new-instance v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;

    const-string v1, "Dropped"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/ContinuousBurstController$DropState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 123
    new-instance v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;

    const-string v1, "ContinuousDropping"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/ContinuousBurstController$DropState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;->ContinuousDropping:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/component/ContinuousBurstController$DropState;

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Unavailable:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Dropping:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$DropState;->Dropped:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/ContinuousBurstController$DropState;->ContinuousDropping:Lcom/htc/camera/component/ContinuousBurstController$DropState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;->$VALUES:[Lcom/htc/camera/component/ContinuousBurstController$DropState;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/ContinuousBurstController$DropState;
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/ContinuousBurstController$DropState;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/htc/camera/component/ContinuousBurstController$DropState;->$VALUES:[Lcom/htc/camera/component/ContinuousBurstController$DropState;

    invoke-virtual {v0}, [Lcom/htc/camera/component/ContinuousBurstController$DropState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/ContinuousBurstController$DropState;

    return-object v0
.end method
