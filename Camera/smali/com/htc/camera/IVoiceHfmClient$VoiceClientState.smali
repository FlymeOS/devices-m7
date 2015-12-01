.class public final enum Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;
.super Ljava/lang/Enum;
.source "IVoiceHfmClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

.field public static final enum Downloading:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

.field public static final enum GotNewVersion:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

.field public static final enum NotInstall:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

.field public static final enum NotSupport:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

.field public static final enum RejectDownload:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

.field public static final enum Support:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    const-string v1, "Support"

    invoke-direct {v0, v1, v3}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Support:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    .line 16
    new-instance v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    const-string v1, "NotInstall"

    invoke-direct {v0, v1, v4}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotInstall:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    .line 17
    new-instance v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    const-string v1, "GotNewVersion"

    invoke-direct {v0, v1, v5}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->GotNewVersion:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    .line 18
    new-instance v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    const-string v1, "Downloading"

    invoke-direct {v0, v1, v6}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Downloading:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    .line 19
    new-instance v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    const-string v1, "NotSupport"

    invoke-direct {v0, v1, v7}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotSupport:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    .line 20
    new-instance v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    const-string v1, "RejectDownload"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->RejectDownload:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Support:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotInstall:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->GotNewVersion:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Downloading:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotSupport:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->RejectDownload:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->$VALUES:[Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->$VALUES:[Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {v0}, [Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    return-object v0
.end method
