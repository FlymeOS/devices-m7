.class public final enum Lcom/htc/camera/IntentManager$RequestName;
.super Ljava/lang/Enum;
.source "IntentManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/IntentManager$RequestName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/IntentManager$RequestName;

.field public static final enum Album:Lcom/htc/camera/IntentManager$RequestName;

.field public static final enum Contacts:Lcom/htc/camera/IntentManager$RequestName;

.field public static final enum Mail:Lcom/htc/camera/IntentManager$RequestName;

.field public static final enum Mms:Lcom/htc/camera/IntentManager$RequestName;

.field public static final enum Notes:Lcom/htc/camera/IntentManager$RequestName;

.field public static final enum Square:Lcom/htc/camera/IntentManager$RequestName;

.field public static final enum Unknown_General:Lcom/htc/camera/IntentManager$RequestName;

.field public static final enum Unknown_Service:Lcom/htc/camera/IntentManager$RequestName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/htc/camera/IntentManager$RequestName;

    const-string v1, "Unknown_General"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_General:Lcom/htc/camera/IntentManager$RequestName;

    new-instance v0, Lcom/htc/camera/IntentManager$RequestName;

    const-string v1, "Unknown_Service"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->Unknown_Service:Lcom/htc/camera/IntentManager$RequestName;

    new-instance v0, Lcom/htc/camera/IntentManager$RequestName;

    const-string v1, "Mms"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->Mms:Lcom/htc/camera/IntentManager$RequestName;

    .line 90
    new-instance v0, Lcom/htc/camera/IntentManager$RequestName;

    const-string v1, "Album"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->Album:Lcom/htc/camera/IntentManager$RequestName;

    .line 91
    new-instance v0, Lcom/htc/camera/IntentManager$RequestName;

    const-string v1, "Contacts"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->Contacts:Lcom/htc/camera/IntentManager$RequestName;

    .line 92
    new-instance v0, Lcom/htc/camera/IntentManager$RequestName;

    const-string v1, "Mail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->Mail:Lcom/htc/camera/IntentManager$RequestName;

    .line 93
    new-instance v0, Lcom/htc/camera/IntentManager$RequestName;

    const-string v1, "Notes"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->Notes:Lcom/htc/camera/IntentManager$RequestName;

    .line 94
    new-instance v0, Lcom/htc/camera/IntentManager$RequestName;

    const-string v1, "Square"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/IntentManager$RequestName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->Square:Lcom/htc/camera/IntentManager$RequestName;

    .line 88
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/camera/IntentManager$RequestName;

    sget-object v1, Lcom/htc/camera/IntentManager$RequestName;->Unknown_General:Lcom/htc/camera/IntentManager$RequestName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/IntentManager$RequestName;->Unknown_Service:Lcom/htc/camera/IntentManager$RequestName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/IntentManager$RequestName;->Mms:Lcom/htc/camera/IntentManager$RequestName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/IntentManager$RequestName;->Album:Lcom/htc/camera/IntentManager$RequestName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/IntentManager$RequestName;->Contacts:Lcom/htc/camera/IntentManager$RequestName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/IntentManager$RequestName;->Mail:Lcom/htc/camera/IntentManager$RequestName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/IntentManager$RequestName;->Notes:Lcom/htc/camera/IntentManager$RequestName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/IntentManager$RequestName;->Square:Lcom/htc/camera/IntentManager$RequestName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/IntentManager$RequestName;->$VALUES:[Lcom/htc/camera/IntentManager$RequestName;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/IntentManager$RequestName;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/htc/camera/IntentManager$RequestName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IntentManager$RequestName;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/IntentManager$RequestName;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/camera/IntentManager$RequestName;->$VALUES:[Lcom/htc/camera/IntentManager$RequestName;

    invoke-virtual {v0}, [Lcom/htc/camera/IntentManager$RequestName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/IntentManager$RequestName;

    return-object v0
.end method
