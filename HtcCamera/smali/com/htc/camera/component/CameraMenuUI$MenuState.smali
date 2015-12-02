.class final enum Lcom/htc/camera/component/CameraMenuUI$MenuState;
.super Ljava/lang/Enum;
.source "CameraMenuUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/CameraMenuUI$MenuState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/CameraMenuUI$MenuState;

.field public static final enum CLOSED:Lcom/htc/camera/component/CameraMenuUI$MenuState;

.field public static final enum CLOSING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

.field public static final enum DRAGGING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

.field public static final enum OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI$MenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 122
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;

    const-string v1, "DRAGGING"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/CameraMenuUI$MenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->DRAGGING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 123
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/CameraMenuUI$MenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSED:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 124
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/CameraMenuUI$MenuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/component/CameraMenuUI$MenuState;

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->OPEN:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->DRAGGING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSED:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$MenuState;->CLOSING:Lcom/htc/camera/component/CameraMenuUI$MenuState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->$VALUES:[Lcom/htc/camera/component/CameraMenuUI$MenuState;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/CameraMenuUI$MenuState;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/CameraMenuUI$MenuState;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/htc/camera/component/CameraMenuUI$MenuState;->$VALUES:[Lcom/htc/camera/component/CameraMenuUI$MenuState;

    invoke-virtual {v0}, [Lcom/htc/camera/component/CameraMenuUI$MenuState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/CameraMenuUI$MenuState;

    return-object v0
.end method
