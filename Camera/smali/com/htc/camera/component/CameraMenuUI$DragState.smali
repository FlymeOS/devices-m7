.class final enum Lcom/htc/camera/component/CameraMenuUI$DragState;
.super Ljava/lang/Enum;
.source "CameraMenuUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/CameraMenuUI$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/CameraMenuUI$DragState;

.field public static final enum DRAG_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;

.field public static final enum DROP_TO_DELETE:Lcom/htc/camera/component/CameraMenuUI$DragState;

.field public static final enum DROP_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$DragState;

    const-string v1, "DROP_TO_REORDER"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/CameraMenuUI$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$DragState;->DROP_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;

    .line 115
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$DragState;

    const-string v1, "DROP_TO_DELETE"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/CameraMenuUI$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$DragState;->DROP_TO_DELETE:Lcom/htc/camera/component/CameraMenuUI$DragState;

    .line 116
    new-instance v0, Lcom/htc/camera/component/CameraMenuUI$DragState;

    const-string v1, "DRAG_TO_REORDER"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/CameraMenuUI$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$DragState;->DRAG_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/component/CameraMenuUI$DragState;

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$DragState;->DROP_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$DragState;->DROP_TO_DELETE:Lcom/htc/camera/component/CameraMenuUI$DragState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/CameraMenuUI$DragState;->DRAG_TO_REORDER:Lcom/htc/camera/component/CameraMenuUI$DragState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/component/CameraMenuUI$DragState;->$VALUES:[Lcom/htc/camera/component/CameraMenuUI$DragState;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/CameraMenuUI$DragState;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/htc/camera/component/CameraMenuUI$DragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/CameraMenuUI$DragState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/CameraMenuUI$DragState;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/htc/camera/component/CameraMenuUI$DragState;->$VALUES:[Lcom/htc/camera/component/CameraMenuUI$DragState;

    invoke-virtual {v0}, [Lcom/htc/camera/component/CameraMenuUI$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/CameraMenuUI$DragState;

    return-object v0
.end method
