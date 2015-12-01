.class public final enum Lcom/htc/camera/MediaDeletionFailedReason;
.super Ljava/lang/Enum;
.source "MediaDeletionFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/MediaDeletionFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/MediaDeletionFailedReason;

.field public static final enum Unknown:Lcom/htc/camera/MediaDeletionFailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/MediaDeletionFailedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/MediaDeletionFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/MediaDeletionFailedReason;->Unknown:Lcom/htc/camera/MediaDeletionFailedReason;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/htc/camera/MediaDeletionFailedReason;

    sget-object v1, Lcom/htc/camera/MediaDeletionFailedReason;->Unknown:Lcom/htc/camera/MediaDeletionFailedReason;

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/camera/MediaDeletionFailedReason;->$VALUES:[Lcom/htc/camera/MediaDeletionFailedReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/MediaDeletionFailedReason;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/MediaDeletionFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/MediaDeletionFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/MediaDeletionFailedReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/MediaDeletionFailedReason;->$VALUES:[Lcom/htc/camera/MediaDeletionFailedReason;

    invoke-virtual {v0}, [Lcom/htc/camera/MediaDeletionFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/MediaDeletionFailedReason;

    return-object v0
.end method
