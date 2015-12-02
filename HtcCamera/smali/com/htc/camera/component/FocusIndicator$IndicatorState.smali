.class final enum Lcom/htc/camera/component/FocusIndicator$IndicatorState;
.super Ljava/lang/Enum;
.source "FocusIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/FocusIndicator$IndicatorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/FocusIndicator$IndicatorState;

.field public static final enum Focused:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

.field public static final enum Focusing:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

.field public static final enum Idle:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

.field public static final enum Invisible:Lcom/htc/camera/component/FocusIndicator$IndicatorState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    const-string v1, "Invisible"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Invisible:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    .line 66
    new-instance v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Idle:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    .line 67
    new-instance v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    const-string v1, "Focusing"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Focusing:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    .line 68
    new-instance v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    const-string v1, "Focused"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/FocusIndicator$IndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Focused:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    sget-object v1, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Invisible:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Idle:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Focusing:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->Focused:Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->$VALUES:[Lcom/htc/camera/component/FocusIndicator$IndicatorState;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/FocusIndicator$IndicatorState;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/FocusIndicator$IndicatorState;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/htc/camera/component/FocusIndicator$IndicatorState;->$VALUES:[Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    invoke-virtual {v0}, [Lcom/htc/camera/component/FocusIndicator$IndicatorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/FocusIndicator$IndicatorState;

    return-object v0
.end method
