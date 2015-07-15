.class final Lcom/android/server/am/HtcAmsUtil;
.super Ljava/lang/Object;
.source "HtcAmsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;
    }
.end annotation


# static fields
.field private static final DYING_PROCESSES_COLUMN_COUNT:I = 0x14

.field private static final DYING_PROCESSES_FORMAT:[I

.field static HIGH_MEM_MB_SIZE:I = 0x0

.field static final TAG:Ljava/lang/String; = "HtcAmsUtil"

.field static sCpuMaxFreq:J

.field static sFirstBgProcWhiteList:[Ljava/lang/String;

.field static sHasDynamicSwitch:Z

.field static sHasVzwLogger:Z

.field static final sHtcImportantProcesses:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sIsSupport3LM:Z

.field static sTotalRamSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 22
    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    .line 23
    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    .line 24
    sput-boolean v3, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    .line 25
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.process.acore"

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    .line 29
    const/4 v1, -0x1

    sput v1, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    .line 30
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    .line 31
    const/16 v1, 0x514

    sput v1, Lcom/android/server/am/HtcAmsUtil;->HIGH_MEM_MB_SIZE:I

    .line 32
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    .line 110
    new-array v1, v4, [I

    sput-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 113
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/16 v2, 0x203a

    aput v2, v1, v0

    .line 114
    sget-object v1, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x200a

    aput v3, v1, v2

    .line 112
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method static getCpuMaxFreq()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 237
    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 238
    new-array v0, v7, [I

    const/16 v2, 0x2020

    aput v2, v0, v6

    .line 241
    .local v0, "SINGLE_LONG_FORMAT":[I
    new-array v1, v7, [J

    .line 242
    .local v1, "longOut":[J
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v2, v0, v8, v1, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 244
    aget-wide v2, v1, v6

    sput-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    .line 246
    :cond_0
    const-string v2, "HtcAmsUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpuinfo_max_freq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-wide v2, Lcom/android/server/am/HtcAmsUtil;->sCpuMaxFreq:J

    return-wide v2
.end method

.method static getTotalRamSize()I
    .locals 3

    .prologue
    .line 224
    sget v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    .line 225
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x100000

    div-int/2addr v0, v1

    sput v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    .line 226
    const-string v0, "HtcAmsUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "totalRamStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    sget v0, Lcom/android/server/am/HtcAmsUtil;->sTotalRamSize:I

    return v0
.end method

.method static init()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->loadCustomizationConfig()V

    .line 39
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->initHtcImportantProcesses()V

    .line 40
    return-void
.end method

.method static initHtcImportantProcesses()V
    .locals 8

    .prologue
    .line 46
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->getCpuMaxFreq()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 47
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.htc.sense.mms"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.htc.contacts"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    sget-object v0, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 53
    .local v3, "procName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v3    # "procName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->isHighMemDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    const-string v4, "HtcAmsUtil"

    const-string v5, "add camera into white list"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.android.camera"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v4, Lcom/android/server/am/HtcAmsUtil;->sHtcImportantProcesses:Landroid/util/ArraySet;

    const-string v5, "com.htc.camera"

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2
    return-void
.end method

.method static isDyingProcess(IJ)Z
    .locals 19
    .param p0, "pid"    # I
    .param p1, "createTime"    # J

    .prologue
    .line 119
    const/16 v13, 0x14

    :try_start_0
    new-array v12, v13, [J

    .line 120
    .local v12, "outLongs":[J
    const-string v13, "/proc/dying_processes"

    sget-object v14, Lcom/android/server/am/HtcAmsUtil;->DYING_PROCESSES_FORMAT:[I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v13, v14, v15, v12, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-nez v13, :cond_0

    .line 121
    const-string v13, "HtcAmsUtil"

    const-string v14, "/proc/dying_processes not available"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v13, 0x0

    .line 146
    .end local v12    # "outLongs":[J
    :goto_0
    return v13

    .line 124
    .restart local v12    # "outLongs":[J
    :cond_0
    const/4 v13, 0x0

    aget-wide v14, v12, v13

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_1

    .line 125
    const-string v13, "HtcAmsUtil"

    const-string v14, "/proc/dying_processes no record"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v13, 0x0

    goto :goto_0

    .line 128
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v13, 0x14

    if-ge v7, v13, :cond_4

    .line 129
    aget-wide v4, v12, v7

    .line 130
    .local v4, "dpid":J
    move/from16 v0, p0

    int-to-long v14, v0

    cmp-long v13, v14, v4

    if-nez v13, :cond_3

    .line 131
    add-int/lit8 v13, v7, 0x1

    aget-wide v8, v12, v13

    .line 132
    .local v8, "jiffyFromSignalTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 133
    .local v10, "now":J
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v8

    sub-long v2, v10, v14

    .line 134
    .local v2, "deadTime":J
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: deadTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " createTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    cmp-long v13, v2, p1

    if-lez v13, :cond_2

    .line 136
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: dying proc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v13, 0x1

    goto :goto_0

    .line 139
    :cond_2
    const-string v13, "HtcAmsUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isDyingProcess: dead past proc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v2    # "deadTime":J
    .end local v8    # "jiffyFromSignalTime":J
    .end local v10    # "now":J
    :cond_3
    add-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    .line 143
    .end local v4    # "dpid":J
    .end local v7    # "i":I
    .end local v12    # "outLongs":[J
    :catch_0
    move-exception v6

    .line 144
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "HtcAmsUtil"

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method static isHighMemDevice()Z
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lcom/android/server/am/HtcAmsUtil;->getTotalRamSize()I

    move-result v0

    sget v1, Lcom/android/server/am/HtcAmsUtil;->HIGH_MEM_MB_SIZE:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static loadCustomizationConfig()V
    .locals 7

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    .line 69
    .local v2, "manager":Lcom/htc/customization/HtcCustomizationManager;
    if-nez v2, :cond_0

    .line 70
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get HtcCustomizationManager instance"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v4, "Android_App_Framework"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 76
    .local v3, "reader":Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v3, :cond_2

    .line 77
    const-string v4, "AMS_feature_FirstBackgroundProcess_white_list"

    sget-object v5, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_1

    sput-object v0, Lcom/android/server/am/HtcAmsUtil;->sFirstBgProcWhiteList:[Ljava/lang/String;

    .line 83
    .end local v0    # "array":[Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    const-string v4, "support_3lm"

    sget-boolean v5, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->sIsSupport3LM:Z

    .line 90
    :goto_2
    const-string v4, "Android_Kernel"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    const-string v4, "support_dynamic_switch"

    sget-boolean v5, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->sHasDynamicSwitch:Z

    .line 97
    :goto_3
    const-string v4, "VZWQualityLogger"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    const-string v4, "support_quality_logger"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/HtcAmsUtil;->sHasVzwLogger:Z

    .line 103
    :goto_4
    const-string v4, "HtcAmsUtil"

    const-string v5, "loadCustomizationConfig completed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v3    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HtcAmsUtil"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Lcom/htc/customization/HtcCustomizationReader;
    :cond_2
    :try_start_1
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get Android_App_Framework customization reader"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 87
    :cond_3
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get System customization reader"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 94
    :cond_4
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get Android_Kernel customization reader"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 101
    :cond_5
    const-string v4, "HtcAmsUtil"

    const-string v5, "Cannot get VZWQualityLogger reader"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method static notifyVzwLogger(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 152
    :try_start_0
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 154
    .local v2, "isPreLoaded":Z
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.VZW_LOGGER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.htc.vzwqualitylogger"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v4, "event_code"

    if-eqz v2, :cond_2

    const-string v3, "Q004"

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 161
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isPreLoaded":Z
    :goto_2
    return-void

    .line 152
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 156
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isPreLoaded":Z
    :cond_2
    const-string v3, "Q006"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 158
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isPreLoaded":Z
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HtcAmsUtil"

    const-string v4, "Failed to notify VzwLogger"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
