.class public Lcom/htc/lib3/media/HtcAudioManager;
.super Ljava/lang/Object;
.source "HtcAudioManager.java"


# static fields
.field public static DEVICE_OUT_SPEAKER:I

.field public static GLOBAL_SOUNDEFFECT_NONE:I

.field public static VOLUMEPANEL_LAYOUT_ALIGN_BOTTOM:B

.field public static VOLUMEPANEL_LAYOUT_ALIGN_CENTER:B

.field public static VOLUMEPANEL_LAYOUT_ALIGN_LEFT:B

.field public static VOLUMEPANEL_LAYOUT_ALIGN_RIGHT:B

.field public static VOLUMEPANEL_LAYOUT_ALIGN_TOP:B

.field public static VOLUMEPANEL_PARAMETER_KEY_LAYOUT:Ljava/lang/String;

.field public static VOLUMEPANEL_PARAMETER_KEY_SCREEN_MODE:Ljava/lang/String;

.field public static VOLUMEPANEL_SCREEN_MODE_ILANDSCAPE:B

.field public static VOLUMEPANEL_SCREEN_MODE_IPORTRAIT:B

.field public static VOLUMEPANEL_SCREEN_MODE_LANDSCAPE:B

.field public static VOLUMEPANEL_SCREEN_MODE_PORTRAIT:B

.field private static sHtcAudioInstance:Ljava/lang/Class;

.field private static sHtcVolumePanelInstance:Ljava/lang/Class;

.field private static sMethod_abandonFixedDLNAVolume:Ljava/lang/reflect/Method;

.field private static sMethod_forceSoundEffect:Ljava/lang/reflect/Method;

.field private static sMethod_getDeviceVolume:Ljava/lang/reflect/Method;

.field private static sMethod_requestFixedDLNAVolume:Ljava/lang/reflect/Method;

.field private static sMethod_restoreSoundEffect:Ljava/lang/reflect/Method;

.field private static sMethod_setDeviceVolume:Ljava/lang/reflect/Method;

.field private static sMethod_setVolumePanelParameters:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    .line 21
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    .line 25
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_getDeviceVolume:Ljava/lang/reflect/Method;

    .line 26
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_setDeviceVolume:Ljava/lang/reflect/Method;

    .line 27
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_requestFixedDLNAVolume:Ljava/lang/reflect/Method;

    .line 28
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_abandonFixedDLNAVolume:Ljava/lang/reflect/Method;

    .line 29
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_forceSoundEffect:Ljava/lang/reflect/Method;

    .line 30
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_restoreSoundEffect:Ljava/lang/reflect/Method;

    .line 31
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_setVolumePanelParameters:Ljava/lang/reflect/Method;

    .line 33
    sput v2, Lcom/htc/lib3/media/HtcAudioManager;->DEVICE_OUT_SPEAKER:I

    .line 34
    sput v2, Lcom/htc/lib3/media/HtcAudioManager;->GLOBAL_SOUNDEFFECT_NONE:I

    .line 36
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_LEFT:B

    .line 37
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_RIGHT:B

    .line 38
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_TOP:B

    .line 39
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_BOTTOM:B

    .line 40
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_CENTER:B

    .line 42
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_PORTRAIT:B

    .line 43
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_LANDSCAPE:B

    .line 44
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_IPORTRAIT:B

    .line 45
    sput-byte v1, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_ILANDSCAPE:B

    .line 47
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_PARAMETER_KEY_SCREEN_MODE:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_PARAMETER_KEY_LAYOUT:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/htc/lib3/media/HtcAudioManager;->init()V

    .line 52
    return-void
.end method

.method private static init()V
    .locals 5

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lcom/htc/lib0/HDKLib0Util;->getHDKBaseVersion()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 58
    const-string v0, "android.media.AudioManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    .line 59
    const-string v0, "com.htc.view.VolumePanel"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    .line 63
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "getDeviceVolume"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_getDeviceVolume:Ljava/lang/reflect/Method;

    .line 64
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "setDeviceVolume"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_setDeviceVolume:Ljava/lang/reflect/Method;

    .line 65
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "requestFixedDLNAVolume"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_requestFixedDLNAVolume:Ljava/lang/reflect/Method;

    .line 66
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "abandonFixedDLNAVolume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_abandonFixedDLNAVolume:Ljava/lang/reflect/Method;

    .line 67
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "forceSoundEffect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_forceSoundEffect:Ljava/lang/reflect/Method;

    .line 68
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "restoreSoundEffect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_restoreSoundEffect:Ljava/lang/reflect/Method;

    .line 69
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "setVolumePanelParameters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_setVolumePanelParameters:Ljava/lang/reflect/Method;

    .line 71
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "DEVICE_OUT_SPEAKER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/htc/lib3/media/HtcAudioManager;->DEVICE_OUT_SPEAKER:I

    .line 72
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcAudioInstance:Ljava/lang/Class;

    const-string v1, "GLOBAL_SOUNDEFFECT_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/htc/lib3/media/HtcAudioManager;->GLOBAL_SOUNDEFFECT_NONE:I

    .line 74
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "VOLUMEPANEL_LAYOUT_ALIGN_LEFT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_LEFT:B

    .line 75
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "VOLUMEPANEL_LAYOUT_ALIGN_RIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_RIGHT:B

    .line 76
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "VOLUMEPANEL_LAYOUT_ALIGN_TOP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_TOP:B

    .line 77
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "VOLUMEPANEL_LAYOUT_ALIGN_BOTTOM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_BOTTOM:B

    .line 78
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "VOLUMEPANEL_LAYOUT_ALIGN_CENTER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_LAYOUT_ALIGN_CENTER:B

    .line 79
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "SCREEN_MODE_PORTRAIT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_PORTRAIT:B

    .line 80
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "SCREEN_MODE_LANDSCAPE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_LANDSCAPE:B

    .line 81
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "SCREEN_MODE_IPORTRAIT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_IPORTRAIT:B

    .line 82
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "SCREEN_MODE_ILANDSCAPE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    sput-byte v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_SCREEN_MODE_ILANDSCAPE:B

    .line 84
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "PARAMETER_KEY_SCREEN_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_PARAMETER_KEY_SCREEN_MODE:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sHtcVolumePanelInstance:Ljava/lang/Class;

    const-string v1, "PARAMETER_KEY_LAYOUT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/htc/lib3/media/HtcAudioManager;->VOLUMEPANEL_PARAMETER_KEY_LAYOUT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 93
    :catch_3
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 95
    :catch_4
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setVolumePanelParameters(Landroid/media/AudioManager;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 262
    if-eqz p0, :cond_0

    sget-object v0, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_setVolumePanelParameters:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 266
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 268
    :try_start_0
    sget-object v1, Lcom/htc/lib3/media/HtcAudioManager;->sMethod_setVolumePanelParameters:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 276
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :catch_1
    move-exception v0

    .line 272
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :catch_2
    move-exception v0

    .line 274
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
