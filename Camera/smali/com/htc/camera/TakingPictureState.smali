.class public final enum Lcom/htc/camera/TakingPictureState;
.super Ljava/lang/Enum;
.source "TakingPictureState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/TakingPictureState;

.field public static final enum Preparing:Lcom/htc/camera/TakingPictureState;

.field public static final enum Processing:Lcom/htc/camera/TakingPictureState;

.field public static final enum Ready:Lcom/htc/camera/TakingPictureState;

.field public static final enum Reviewing:Lcom/htc/camera/TakingPictureState;

.field public static final enum Starting:Lcom/htc/camera/TakingPictureState;

.field public static final enum TakingPicture:Lcom/htc/camera/TakingPictureState;


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
    new-instance v0, Lcom/htc/camera/TakingPictureState;

    const-string v1, "Preparing"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/TakingPictureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    .line 6
    new-instance v0, Lcom/htc/camera/TakingPictureState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/TakingPictureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    .line 7
    new-instance v0, Lcom/htc/camera/TakingPictureState;

    const-string v1, "Starting"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/TakingPictureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    .line 8
    new-instance v0, Lcom/htc/camera/TakingPictureState;

    const-string v1, "TakingPicture"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/TakingPictureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    .line 9
    new-instance v0, Lcom/htc/camera/TakingPictureState;

    const-string v1, "Processing"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/TakingPictureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/TakingPictureState;->Processing:Lcom/htc/camera/TakingPictureState;

    .line 10
    new-instance v0, Lcom/htc/camera/TakingPictureState;

    const-string v1, "Reviewing"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/TakingPictureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/TakingPictureState;->Reviewing:Lcom/htc/camera/TakingPictureState;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/TakingPictureState;

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Preparing:Lcom/htc/camera/TakingPictureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Ready:Lcom/htc/camera/TakingPictureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Starting:Lcom/htc/camera/TakingPictureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/TakingPictureState;->TakingPicture:Lcom/htc/camera/TakingPictureState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/TakingPictureState;->Processing:Lcom/htc/camera/TakingPictureState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/TakingPictureState;->Reviewing:Lcom/htc/camera/TakingPictureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/TakingPictureState;->$VALUES:[Lcom/htc/camera/TakingPictureState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/TakingPictureState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/TakingPictureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/TakingPictureState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/TakingPictureState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/TakingPictureState;->$VALUES:[Lcom/htc/camera/TakingPictureState;

    invoke-virtual {v0}, [Lcom/htc/camera/TakingPictureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/TakingPictureState;

    return-object v0
.end method
