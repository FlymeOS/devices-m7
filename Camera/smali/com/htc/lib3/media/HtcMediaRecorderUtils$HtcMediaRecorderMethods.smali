.class Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;
.super Ljava/lang/Object;
.source "HtcMediaRecorderUtils.java"


# static fields
.field static GET_HTC_RECORD_SURFACE:Lcom/htc/lib3/media/HtcMethod;

.field static PAUSE_EX:Lcom/htc/lib3/media/HtcMethod;

.field static PRE_STOP_ZOE_RECORDING:Lcom/htc/lib3/media/HtcMethod;

.field static RESUME_EX:Lcom/htc/lib3/media/HtcMethod;

.field static SET_HTC_PARAMETER_BYTE_ARRAY:Lcom/htc/lib3/media/HtcMethod;

.field static SET_HTC_PARAMETER_INT:Lcom/htc/lib3/media/HtcMethod;

.field static SET_HTC_PARAMETER_STRING:Lcom/htc/lib3/media/HtcMethod;

.field static SET_LOCATION_EX:Lcom/htc/lib3/media/HtcMethod;

.field static list:[Lcom/htc/lib3/media/HtcMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    new-instance v0, Lcom/htc/lib3/media/HtcMethod;

    const-string v2, "setHtcParameter"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lcom/htc/lib3/media/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_INT:Lcom/htc/lib3/media/HtcMethod;

    .line 123
    new-instance v0, Lcom/htc/lib3/media/HtcMethod;

    const-string v2, "setHtcParameter"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lcom/htc/lib3/media/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_STRING:Lcom/htc/lib3/media/HtcMethod;

    .line 124
    new-instance v0, Lcom/htc/lib3/media/HtcMethod;

    const-string v2, "setHtcParameter"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, [B

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/htc/lib3/media/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_BYTE_ARRAY:Lcom/htc/lib3/media/HtcMethod;

    .line 125
    new-instance v0, Lcom/htc/lib3/media/HtcMethod;

    const-string v2, "setLocationEx"

    new-array v3, v8, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-direct {v0, v2, v3}, Lcom/htc/lib3/media/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_LOCATION_EX:Lcom/htc/lib3/media/HtcMethod;

    .line 126
    new-instance v2, Lcom/htc/lib3/media/HtcMethod;

    const-string v3, "preStopZoeRecording"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/htc/lib3/media/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->PRE_STOP_ZOE_RECORDING:Lcom/htc/lib3/media/HtcMethod;

    .line 128
    new-instance v2, Lcom/htc/lib3/media/HtcMethod;

    const-string v3, "getHtcRecordSurface"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/htc/lib3/media/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->GET_HTC_RECORD_SURFACE:Lcom/htc/lib3/media/HtcMethod;

    .line 130
    new-instance v2, Lcom/htc/lib3/media/HtcMethod;

    const-string v3, "pauseEx"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {v2, v3, v0}, Lcom/htc/lib3/media/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v2, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->PAUSE_EX:Lcom/htc/lib3/media/HtcMethod;

    .line 131
    new-instance v0, Lcom/htc/lib3/media/HtcMethod;

    const-string v2, "resumeEx"

    check-cast v1, [Ljava/lang/Class;

    invoke-direct {v0, v2, v1}, Lcom/htc/lib3/media/HtcMethod;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->RESUME_EX:Lcom/htc/lib3/media/HtcMethod;

    .line 133
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/lib3/media/HtcMethod;

    sget-object v1, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_INT:Lcom/htc/lib3/media/HtcMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_STRING:Lcom/htc/lib3/media/HtcMethod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_HTC_PARAMETER_BYTE_ARRAY:Lcom/htc/lib3/media/HtcMethod;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->SET_LOCATION_EX:Lcom/htc/lib3/media/HtcMethod;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->PRE_STOP_ZOE_RECORDING:Lcom/htc/lib3/media/HtcMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->GET_HTC_RECORD_SURFACE:Lcom/htc/lib3/media/HtcMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->PAUSE_EX:Lcom/htc/lib3/media/HtcMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->RESUME_EX:Lcom/htc/lib3/media/HtcMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->list:[Lcom/htc/lib3/media/HtcMethod;

    .line 137
    sget-object v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$HtcMediaRecorderMethods;->list:[Lcom/htc/lib3/media/HtcMethod;

    const-class v1, Landroid/media/MediaRecorder;

    invoke-static {v0, v1}, Lcom/htc/lib3/media/HtcMethod;->initMethods([Lcom/htc/lib3/media/HtcMethod;Ljava/lang/Class;)V

    .line 138
    return-void
.end method
