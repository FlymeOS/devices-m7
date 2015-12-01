.class public final enum Lcom/htc/camera/VolumeKeyType;
.super Ljava/lang/Enum;
.source "VolumeKeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/VolumeKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/VolumeKeyType;

.field public static final enum Capture:Lcom/htc/camera/VolumeKeyType;

.field public static final enum None:Lcom/htc/camera/VolumeKeyType;

.field public static final enum Zoom:Lcom/htc/camera/VolumeKeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/htc/camera/VolumeKeyType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/VolumeKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/VolumeKeyType;->None:Lcom/htc/camera/VolumeKeyType;

    .line 5
    new-instance v0, Lcom/htc/camera/VolumeKeyType;

    const-string v1, "Capture"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/VolumeKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/VolumeKeyType;->Capture:Lcom/htc/camera/VolumeKeyType;

    .line 6
    new-instance v0, Lcom/htc/camera/VolumeKeyType;

    const-string v1, "Zoom"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/VolumeKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/VolumeKeyType;->Zoom:Lcom/htc/camera/VolumeKeyType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/VolumeKeyType;

    sget-object v1, Lcom/htc/camera/VolumeKeyType;->None:Lcom/htc/camera/VolumeKeyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/VolumeKeyType;->Capture:Lcom/htc/camera/VolumeKeyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/VolumeKeyType;->Zoom:Lcom/htc/camera/VolumeKeyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/VolumeKeyType;->$VALUES:[Lcom/htc/camera/VolumeKeyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/VolumeKeyType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/VolumeKeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/VolumeKeyType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/VolumeKeyType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/VolumeKeyType;->$VALUES:[Lcom/htc/camera/VolumeKeyType;

    invoke-virtual {v0}, [Lcom/htc/camera/VolumeKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/VolumeKeyType;

    return-object v0
.end method
