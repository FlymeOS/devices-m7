.class public final enum Lcom/htc/camera/actionscreen/ActionScreenCloseReason;
.super Ljava/lang/Enum;
.source "ActionScreenCloseReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/actionscreen/ActionScreenCloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

.field public static final enum AutoClose:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

.field public static final enum Capture:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

.field public static final enum DeleteMedia:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

.field public static final enum Unknown:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    .line 6
    new-instance v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const-string v1, "AutoClose"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    .line 7
    new-instance v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const-string v1, "Capture"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->Capture:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    .line 8
    new-instance v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    const-string v1, "DeleteMedia"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->Capture:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->$VALUES:[Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/actionscreen/ActionScreenCloseReason;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/actionscreen/ActionScreenCloseReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->$VALUES:[Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    invoke-virtual {v0}, [Lcom/htc/camera/actionscreen/ActionScreenCloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/actionscreen/ActionScreenCloseReason;

    return-object v0
.end method
