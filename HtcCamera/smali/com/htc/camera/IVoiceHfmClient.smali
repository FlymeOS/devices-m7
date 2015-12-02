.class public interface abstract Lcom/htc/camera/IVoiceHfmClient;
.super Ljava/lang/Object;
.source "IVoiceHfmClient.java"

# interfaces
.implements Lcom/htc/camera/component/IComponent;


# static fields
.field public static final EVENT_TRIGGER_VOICE_RECORD:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_TRIGGER_VOICE_TAKE_PICTURE:Lcom/htc/camera/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/EventKey",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_IS_VOICE_CAPTURE_SUPPORTED:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/PropertyKey",
            "<",
            "Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "IsVoiceCaptureSupported"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/htc/camera/IVoiceHfmClient;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_IS_VOICE_CAPTURE_SUPPORTED:Lcom/htc/camera/base/PropertyKey;

    .line 27
    new-instance v0, Lcom/htc/camera/base/PropertyKey;

    const-string v1, "VoiceClientStatus"

    const-class v2, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    const-class v3, Lcom/htc/camera/IVoiceHfmClient;

    sget-object v4, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotSupport:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient;->PROPERTY_VOICE_CLIENT_STATUS:Lcom/htc/camera/base/PropertyKey;

    .line 32
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "TriggerVoiceRecord"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/IVoiceHfmClient;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient;->EVENT_TRIGGER_VOICE_RECORD:Lcom/htc/camera/base/EventKey;

    .line 33
    new-instance v0, Lcom/htc/camera/base/EventKey;

    const-string v1, "TriggerVoiceTakePicture"

    const-class v2, Lcom/htc/camera/base/EventArgs;

    const-class v3, Lcom/htc/camera/IVoiceHfmClient;

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/camera/IVoiceHfmClient;->EVENT_TRIGGER_VOICE_TAKE_PICTURE:Lcom/htc/camera/base/EventKey;

    return-void
.end method
