.class public final enum Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;
.super Ljava/lang/Enum;
.source "CSRAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum Delay:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum DoubleTap:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum Keyboard:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum LongPress:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum Pan:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum PinchSpread:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum Rotate:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum Tap:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum TwoFingerScroll:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

.field public static final enum TwoHandRotate:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "Tap"

    invoke-direct {v0, v1, v3}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Tap:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "DoubleTap"

    invoke-direct {v0, v1, v4}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->DoubleTap:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "LongPress"

    invoke-direct {v0, v1, v5}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->LongPress:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "TwoFingerScroll"

    invoke-direct {v0, v1, v6}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->TwoFingerScroll:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "Pan"

    invoke-direct {v0, v1, v7}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Pan:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "PinchSpread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->PinchSpread:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "Rotate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Rotate:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "TwoHandRotate"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->TwoHandRotate:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "Keyboard"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Keyboard:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    new-instance v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    const-string v1, "Delay"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Delay:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    sget-object v1, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Tap:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->DoubleTap:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->LongPress:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->TwoFingerScroll:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Pan:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->PinchSpread:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Rotate:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->TwoHandRotate:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Keyboard:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->Delay:Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->$VALUES:[Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->$VALUES:[Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    invoke-virtual {v0}, [Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/lib1/autotest/middleware/CSRAction$ActionType;

    return-object v0
.end method
