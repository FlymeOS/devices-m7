.class final enum Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;
.super Ljava/lang/Enum;
.source "ExpandableMenuUI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

.field public static final enum AutoClosed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

.field public static final enum Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

.field public static final enum Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;


# instance fields
.field public isOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    const-string v1, "Closed"

    invoke-direct {v0, v1, v2, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    .line 102
    new-instance v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    const-string v1, "AutoClosed"

    invoke-direct {v0, v1, v3, v2}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->AutoClosed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    .line 103
    new-instance v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    const-string v1, "Opened"

    invoke-direct {v0, v1, v4, v3}, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    sget-object v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Closed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->AutoClosed:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->Opened:Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->$VALUES:[Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput-boolean p3, p0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->isOpened:Z

    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->$VALUES:[Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    invoke-virtual {v0}, [Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/mainbar/ExpandableMenuUI$ExpandableMenuUIStatus;

    return-object v0
.end method
