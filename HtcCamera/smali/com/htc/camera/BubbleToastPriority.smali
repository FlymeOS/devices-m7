.class public final enum Lcom/htc/camera/BubbleToastPriority;
.super Ljava/lang/Enum;
.source "BubbleToastPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/BubbleToastPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/BubbleToastPriority;

.field public static final enum High:Lcom/htc/camera/BubbleToastPriority;

.field public static final enum Highest:Lcom/htc/camera/BubbleToastPriority;

.field public static final enum Low:Lcom/htc/camera/BubbleToastPriority;

.field public static final enum Lowest:Lcom/htc/camera/BubbleToastPriority;

.field public static final enum Normal:Lcom/htc/camera/BubbleToastPriority;


# instance fields
.field public final priorityValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/htc/camera/BubbleToastPriority;

    const-string v1, "Highest"

    invoke-direct {v0, v1, v3, v3}, Lcom/htc/camera/BubbleToastPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/BubbleToastPriority;->Highest:Lcom/htc/camera/BubbleToastPriority;

    .line 7
    new-instance v0, Lcom/htc/camera/BubbleToastPriority;

    const-string v1, "High"

    invoke-direct {v0, v1, v5, v4}, Lcom/htc/camera/BubbleToastPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/BubbleToastPriority;->High:Lcom/htc/camera/BubbleToastPriority;

    .line 8
    new-instance v0, Lcom/htc/camera/BubbleToastPriority;

    const-string v1, "Normal"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/camera/BubbleToastPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/BubbleToastPriority;->Normal:Lcom/htc/camera/BubbleToastPriority;

    .line 9
    new-instance v0, Lcom/htc/camera/BubbleToastPriority;

    const-string v1, "Low"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/camera/BubbleToastPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/BubbleToastPriority;->Low:Lcom/htc/camera/BubbleToastPriority;

    .line 10
    new-instance v0, Lcom/htc/camera/BubbleToastPriority;

    const-string v1, "Lowest"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lcom/htc/camera/BubbleToastPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/camera/BubbleToastPriority;->Lowest:Lcom/htc/camera/BubbleToastPriority;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/BubbleToastPriority;

    sget-object v1, Lcom/htc/camera/BubbleToastPriority;->Highest:Lcom/htc/camera/BubbleToastPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/BubbleToastPriority;->High:Lcom/htc/camera/BubbleToastPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/BubbleToastPriority;->Normal:Lcom/htc/camera/BubbleToastPriority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/BubbleToastPriority;->Low:Lcom/htc/camera/BubbleToastPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/BubbleToastPriority;->Lowest:Lcom/htc/camera/BubbleToastPriority;

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/camera/BubbleToastPriority;->$VALUES:[Lcom/htc/camera/BubbleToastPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/htc/camera/BubbleToastPriority;->priorityValue:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/BubbleToastPriority;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/htc/camera/BubbleToastPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/BubbleToastPriority;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/BubbleToastPriority;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/htc/camera/BubbleToastPriority;->$VALUES:[Lcom/htc/camera/BubbleToastPriority;

    invoke-virtual {v0}, [Lcom/htc/camera/BubbleToastPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/BubbleToastPriority;

    return-object v0
.end method
