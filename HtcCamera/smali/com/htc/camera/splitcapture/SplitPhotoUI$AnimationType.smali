.class final enum Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;
.super Ljava/lang/Enum;
.source "SplitPhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

.field public static final enum ExchangeLeftRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

.field public static final enum MoveToLeft:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

.field public static final enum MoveToRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

.field public static final enum None:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->None:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    .line 211
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    const-string v1, "MoveToRight"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->MoveToRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    .line 212
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    const-string v1, "MoveToLeft"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->MoveToLeft:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    .line 213
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    const-string v1, "ExchangeLeftRight"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->ExchangeLeftRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->None:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->MoveToRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->MoveToLeft:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->ExchangeLeftRight:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->$VALUES:[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

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
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;
    .locals 1

    .prologue
    .line 208
    const-class v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->$VALUES:[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    invoke-virtual {v0}, [Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationType;

    return-object v0
.end method
