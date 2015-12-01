.class public final enum Lcom/htc/camera/IAudioManager$ProcessType;
.super Ljava/lang/Enum;
.source "IAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/IAudioManager$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/IAudioManager$ProcessType;

.field public static final enum Can_Kill:Lcom/htc/camera/IAudioManager$ProcessType;

.field public static final enum Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

.field public static final enum None:Lcom/htc/camera/IAudioManager$ProcessType;

.field public static final enum Other_HightPriority_Process:Lcom/htc/camera/IAudioManager$ProcessType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/htc/camera/IAudioManager$ProcessType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/IAudioManager$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->None:Lcom/htc/camera/IAudioManager$ProcessType;

    .line 25
    new-instance v0, Lcom/htc/camera/IAudioManager$ProcessType;

    const-string v1, "Can_Kill"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/IAudioManager$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->Can_Kill:Lcom/htc/camera/IAudioManager$ProcessType;

    .line 26
    new-instance v0, Lcom/htc/camera/IAudioManager$ProcessType;

    const-string v1, "Kineto_SmartWifi"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/IAudioManager$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

    .line 27
    new-instance v0, Lcom/htc/camera/IAudioManager$ProcessType;

    const-string v1, "Other_HightPriority_Process"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/IAudioManager$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->Other_HightPriority_Process:Lcom/htc/camera/IAudioManager$ProcessType;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/camera/IAudioManager$ProcessType;

    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->None:Lcom/htc/camera/IAudioManager$ProcessType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Can_Kill:Lcom/htc/camera/IAudioManager$ProcessType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Kineto_SmartWifi:Lcom/htc/camera/IAudioManager$ProcessType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/IAudioManager$ProcessType;->Other_HightPriority_Process:Lcom/htc/camera/IAudioManager$ProcessType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->$VALUES:[Lcom/htc/camera/IAudioManager$ProcessType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/IAudioManager$ProcessType;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/camera/IAudioManager$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IAudioManager$ProcessType;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/IAudioManager$ProcessType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/camera/IAudioManager$ProcessType;->$VALUES:[Lcom/htc/camera/IAudioManager$ProcessType;

    invoke-virtual {v0}, [Lcom/htc/camera/IAudioManager$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/IAudioManager$ProcessType;

    return-object v0
.end method
