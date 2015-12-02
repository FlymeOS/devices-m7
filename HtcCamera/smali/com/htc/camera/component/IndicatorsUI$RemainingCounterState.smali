.class final enum Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;
.super Ljava/lang/Enum;
.source "IndicatorsUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

.field public static final enum Ignorable:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

.field public static final enum Initial:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

.field public static final enum StaysVisible:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    const-string v1, "Initial"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->Initial:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    .line 68
    new-instance v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    const-string v1, "Ignorable"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->Ignorable:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    .line 69
    new-instance v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    const-string v1, "StaysVisible"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->StaysVisible:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->Initial:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->Ignorable:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->StaysVisible:Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->$VALUES:[Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->$VALUES:[Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    invoke-virtual {v0}, [Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/IndicatorsUI$RemainingCounterState;

    return-object v0
.end method
