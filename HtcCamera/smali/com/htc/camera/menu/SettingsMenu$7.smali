.class synthetic Lcom/htc/camera/menu/SettingsMenu$7;
.super Ljava/lang/Object;
.source "SettingsMenu.java"


# static fields
.field static final synthetic $SwitchMap$com$htc$camera$CameraType:[I

.field static final synthetic $SwitchMap$com$htc$camera$IVoiceHfmClient$VoiceClientState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1710
    invoke-static {}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->values()[Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$IVoiceHfmClient$VoiceClientState:[I

    :try_start_0
    sget-object v0, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$IVoiceHfmClient$VoiceClientState:[I

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->Downloading:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {v1}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$IVoiceHfmClient$VoiceClientState:[I

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->NotInstall:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {v1}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$IVoiceHfmClient$VoiceClientState:[I

    sget-object v1, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->RejectDownload:Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;

    invoke-virtual {v1}, Lcom/htc/camera/IVoiceHfmClient$VoiceClientState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 870
    :goto_2
    invoke-static {}, Lcom/htc/camera/CameraType;->values()[Lcom/htc/camera/CameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$CameraType:[I

    :try_start_3
    sget-object v0, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Main:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/htc/camera/menu/SettingsMenu$7;->$SwitchMap$com$htc$camera$CameraType:[I

    sget-object v1, Lcom/htc/camera/CameraType;->Front:Lcom/htc/camera/CameraType;

    invoke-virtual {v1}, Lcom/htc/camera/CameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 1710
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
