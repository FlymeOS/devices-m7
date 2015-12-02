.class public final enum Lcom/htc/camera/DisplayDevice$FrontCameraPosition;
.super Ljava/lang/Enum;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/DisplayDevice$FrontCameraPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

.field public static final enum Center:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

.field public static final enum Left:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

.field public static final enum Right:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Left:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    new-instance v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Right:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    new-instance v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    const-string v1, "Center"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Center:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    sget-object v1, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Left:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Right:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->Center:Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->$VALUES:[Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/DisplayDevice$FrontCameraPosition;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/DisplayDevice$FrontCameraPosition;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->$VALUES:[Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    invoke-virtual {v0}, [Lcom/htc/camera/DisplayDevice$FrontCameraPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/DisplayDevice$FrontCameraPosition;

    return-object v0
.end method
