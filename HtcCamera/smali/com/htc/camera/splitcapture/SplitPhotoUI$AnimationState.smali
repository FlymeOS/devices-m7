.class final enum Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;
.super Ljava/lang/Enum;
.source "SplitPhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

.field public static final enum Draw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

.field public static final enum DrawOnce:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

.field public static final enum NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

.field public static final enum Prepared:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

.field public static final enum Preparing:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

.field public static final enum Start:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

.field public static final enum Stop:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    const-string v1, "Draw"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Draw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 201
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    const-string v1, "DrawOnce"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->DrawOnce:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 202
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    const-string v1, "NotDraw"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 203
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    const-string v1, "Preparing"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Preparing:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 204
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    const-string v1, "Prepared"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Prepared:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 205
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    const-string v1, "Start"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Start:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 206
    new-instance v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    const-string v1, "Stop"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Stop:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    .line 198
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Draw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->DrawOnce:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->NotDraw:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Preparing:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Prepared:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Start:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->Stop:Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->$VALUES:[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

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
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;
    .locals 1

    .prologue
    .line 198
    const-class v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->$VALUES:[Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    invoke-virtual {v0}, [Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/splitcapture/SplitPhotoUI$AnimationState;

    return-object v0
.end method
