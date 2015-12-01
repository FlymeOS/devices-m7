.class public final enum Lcom/htc/camera/widget/ShadowPosition;
.super Ljava/lang/Enum;
.source "ShadowPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/widget/ShadowPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/widget/ShadowPosition;

.field public static final enum Bottom:Lcom/htc/camera/widget/ShadowPosition;

.field public static final enum Center:Lcom/htc/camera/widget/ShadowPosition;

.field public static final enum Left:Lcom/htc/camera/widget/ShadowPosition;

.field public static final enum None:Lcom/htc/camera/widget/ShadowPosition;

.field public static final enum Right:Lcom/htc/camera/widget/ShadowPosition;

.field public static final enum Top:Lcom/htc/camera/widget/ShadowPosition;


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
    new-instance v0, Lcom/htc/camera/widget/ShadowPosition;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/widget/ShadowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/widget/ShadowPosition;->None:Lcom/htc/camera/widget/ShadowPosition;

    .line 6
    new-instance v0, Lcom/htc/camera/widget/ShadowPosition;

    const-string v1, "Center"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/widget/ShadowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/widget/ShadowPosition;->Center:Lcom/htc/camera/widget/ShadowPosition;

    .line 7
    new-instance v0, Lcom/htc/camera/widget/ShadowPosition;

    const-string v1, "Left"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/widget/ShadowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/widget/ShadowPosition;->Left:Lcom/htc/camera/widget/ShadowPosition;

    .line 8
    new-instance v0, Lcom/htc/camera/widget/ShadowPosition;

    const-string v1, "Top"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/widget/ShadowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/widget/ShadowPosition;->Top:Lcom/htc/camera/widget/ShadowPosition;

    .line 9
    new-instance v0, Lcom/htc/camera/widget/ShadowPosition;

    const-string v1, "Right"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/widget/ShadowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/widget/ShadowPosition;->Right:Lcom/htc/camera/widget/ShadowPosition;

    .line 10
    new-instance v0, Lcom/htc/camera/widget/ShadowPosition;

    const-string v1, "Bottom"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/widget/ShadowPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/widget/ShadowPosition;->Bottom:Lcom/htc/camera/widget/ShadowPosition;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/widget/ShadowPosition;

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->None:Lcom/htc/camera/widget/ShadowPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->Center:Lcom/htc/camera/widget/ShadowPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->Left:Lcom/htc/camera/widget/ShadowPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->Top:Lcom/htc/camera/widget/ShadowPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/widget/ShadowPosition;->Right:Lcom/htc/camera/widget/ShadowPosition;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/widget/ShadowPosition;->Bottom:Lcom/htc/camera/widget/ShadowPosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/widget/ShadowPosition;->$VALUES:[Lcom/htc/camera/widget/ShadowPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/widget/ShadowPosition;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/widget/ShadowPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/widget/ShadowPosition;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/widget/ShadowPosition;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/widget/ShadowPosition;->$VALUES:[Lcom/htc/camera/widget/ShadowPosition;

    invoke-virtual {v0}, [Lcom/htc/camera/widget/ShadowPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/widget/ShadowPosition;

    return-object v0
.end method
