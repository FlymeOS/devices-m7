.class public final enum Lcom/htc/camera/PictureQuality;
.super Ljava/lang/Enum;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/PictureQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/PictureQuality;

.field public static final enum Basic:Lcom/htc/camera/PictureQuality;

.field public static final enum Fine:Lcom/htc/camera/PictureQuality;

.field public static final enum Normal:Lcom/htc/camera/PictureQuality;

.field public static final enum Super:Lcom/htc/camera/PictureQuality;


# instance fields
.field public final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/htc/camera/PictureQuality;

    const-string v1, "Super"

    const-string v2, "_super"

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/camera/PictureQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/camera/PictureQuality;->Super:Lcom/htc/camera/PictureQuality;

    .line 5
    new-instance v0, Lcom/htc/camera/PictureQuality;

    const-string v1, "Fine"

    const-string v2, "_fine"

    invoke-direct {v0, v1, v4, v2}, Lcom/htc/camera/PictureQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/camera/PictureQuality;->Fine:Lcom/htc/camera/PictureQuality;

    .line 6
    new-instance v0, Lcom/htc/camera/PictureQuality;

    const-string v1, "Normal"

    const-string v2, "_normal"

    invoke-direct {v0, v1, v5, v2}, Lcom/htc/camera/PictureQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/camera/PictureQuality;->Normal:Lcom/htc/camera/PictureQuality;

    .line 7
    new-instance v0, Lcom/htc/camera/PictureQuality;

    const-string v1, "Basic"

    const-string v2, "_basic"

    invoke-direct {v0, v1, v6, v2}, Lcom/htc/camera/PictureQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/htc/camera/PictureQuality;->Basic:Lcom/htc/camera/PictureQuality;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/PictureQuality;

    sget-object v1, Lcom/htc/camera/PictureQuality;->Super:Lcom/htc/camera/PictureQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/PictureQuality;->Fine:Lcom/htc/camera/PictureQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/PictureQuality;->Normal:Lcom/htc/camera/PictureQuality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/PictureQuality;->Basic:Lcom/htc/camera/PictureQuality;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/PictureQuality;->$VALUES:[Lcom/htc/camera/PictureQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/htc/camera/PictureQuality;->key:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/PictureQuality;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/PictureQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/PictureQuality;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/PictureQuality;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/PictureQuality;->$VALUES:[Lcom/htc/camera/PictureQuality;

    invoke-virtual {v0}, [Lcom/htc/camera/PictureQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/PictureQuality;

    return-object v0
.end method
