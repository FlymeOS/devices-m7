.class public final enum Lcom/htc/camera/component/IComponent$State;
.super Ljava/lang/Enum;
.source "IComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/component/IComponent$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/component/IComponent$State;

.field public static final enum DEINITIALIZED:Lcom/htc/camera/component/IComponent$State;

.field public static final enum DEINITIALIZING:Lcom/htc/camera/component/IComponent$State;

.field public static final enum INITIALIZING:Lcom/htc/camera/component/IComponent$State;

.field public static final enum NEW:Lcom/htc/camera/component/IComponent$State;

.field public static final enum RUNNING:Lcom/htc/camera/component/IComponent$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/htc/camera/component/IComponent$State;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/component/IComponent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    .line 26
    new-instance v0, Lcom/htc/camera/component/IComponent$State;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/component/IComponent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/IComponent$State;->INITIALIZING:Lcom/htc/camera/component/IComponent$State;

    .line 30
    new-instance v0, Lcom/htc/camera/component/IComponent$State;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/component/IComponent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/IComponent$State;->RUNNING:Lcom/htc/camera/component/IComponent$State;

    .line 34
    new-instance v0, Lcom/htc/camera/component/IComponent$State;

    const-string v1, "DEINITIALIZING"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/component/IComponent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZING:Lcom/htc/camera/component/IComponent$State;

    .line 38
    new-instance v0, Lcom/htc/camera/component/IComponent$State;

    const-string v1, "DEINITIALIZED"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/component/IComponent$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZED:Lcom/htc/camera/component/IComponent$State;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/camera/component/IComponent$State;

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->NEW:Lcom/htc/camera/component/IComponent$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->INITIALIZING:Lcom/htc/camera/component/IComponent$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->RUNNING:Lcom/htc/camera/component/IComponent$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZING:Lcom/htc/camera/component/IComponent$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/component/IComponent$State;->DEINITIALIZED:Lcom/htc/camera/component/IComponent$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/camera/component/IComponent$State;->$VALUES:[Lcom/htc/camera/component/IComponent$State;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/component/IComponent$State;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/camera/component/IComponent$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/component/IComponent$State;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/component/IComponent$State;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/camera/component/IComponent$State;->$VALUES:[Lcom/htc/camera/component/IComponent$State;

    invoke-virtual {v0}, [Lcom/htc/camera/component/IComponent$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/component/IComponent$State;

    return-object v0
.end method
