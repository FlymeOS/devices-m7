.class public Lcom/htc/lib3/android/os/HtcPMCpuCtrl;
.super Ljava/lang/Object;
.source "HtcPMCpuCtrl.java"


# static fields
.field private static flagsArray:[I

.field private static sCPU_FREQ_HIGH:Ljava/lang/reflect/Field;

.field private static sCPU_FREQ_HIGHEST:Ljava/lang/reflect/Field;

.field private static sCPU_FREQ_LOW:Ljava/lang/reflect/Field;

.field private static sCPU_FREQ_LOWEST:Ljava/lang/reflect/Field;

.field private static sCPU_FREQ_MEDIUM:Ljava/lang/reflect/Field;

.field private static sCPU_MIN_FREQ:Ljava/lang/reflect/Field;

.field private static sCPU_MIN_NUM:Ljava/lang/reflect/Field;

.field private static sCPU_NUM_DUAL:Ljava/lang/reflect/Field;

.field private static sHtcPM:Ljava/lang/Class;

.field private static sMethod_acquire_long:Ljava/lang/reflect/Method;

.field private static sMethod_isHeld:Ljava/lang/reflect/Method;

.field private static sMethod_newHtcCpuCtrl:Ljava/lang/reflect/Method;

.field private static sMethod_release:Ljava/lang/reflect/Method;


# instance fields
.field private mHtcCpuCtrl:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    .line 20
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_MIN_FREQ:Ljava/lang/reflect/Field;

    .line 21
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_MIN_NUM:Ljava/lang/reflect/Field;

    .line 22
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_LOWEST:Ljava/lang/reflect/Field;

    .line 23
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_LOW:Ljava/lang/reflect/Field;

    .line 24
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_MEDIUM:Ljava/lang/reflect/Field;

    .line 25
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGH:Ljava/lang/reflect/Field;

    .line 26
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGHEST:Ljava/lang/reflect/Field;

    .line 27
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_NUM_DUAL:Ljava/lang/reflect/Field;

    .line 29
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_newHtcCpuCtrl:Ljava/lang/reflect/Method;

    .line 30
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_acquire_long:Ljava/lang/reflect/Method;

    .line 31
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_release:Ljava/lang/reflect/Method;

    .line 32
    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_isHeld:Ljava/lang/reflect/Method;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->flagsArray:[I

    .line 38
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 247
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->FLAG_CPU_MIN_FREQ()I

    move-result v0

    and-int/2addr v0, p2

    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->FLAG_CPU_MIN_FREQ()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 248
    invoke-direct {p0, p3}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->isValidFlags(I)Z

    move-result v0

    .line 252
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 249
    :cond_0
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->FLAG_CPU_MIN_NUM()I

    move-result v0

    and-int/2addr v0, p2

    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->FLAG_CPU_MIN_NUM()I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 250
    invoke-static {}, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->CPU_NUM_DUAL()I

    move-result v0

    if-ne p3, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 254
    :cond_2
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p4, v0, v5

    .line 256
    :try_start_0
    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_newHtcCpuCtrl:Ljava/lang/reflect/Method;

    if-nez v1, :cond_3

    .line 257
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newHtcCpuCtrl"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_newHtcCpuCtrl:Ljava/lang/reflect/Method;

    .line 258
    :cond_3
    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_newHtcCpuCtrl:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->mHtcCpuCtrl:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 268
    iget-object v0, p0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->mHtcCpuCtrl:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 269
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :catch_1
    move-exception v0

    .line 262
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :catch_2
    move-exception v0

    .line 264
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :catch_3
    move-exception v0

    .line 266
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 271
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method public static CPU_FREQ_HIGH()I
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGH:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 182
    :cond_0
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 185
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGH:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :catch_1
    move-exception v0

    .line 189
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static CPU_FREQ_HIGHEST()I
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGHEST:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 202
    :cond_0
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 205
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGHEST:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static CPU_FREQ_LOWEST()I
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_LOWEST:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 125
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_LOWEST:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static CPU_FREQ_MEDIUM()I
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_MEDIUM:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 165
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_MEDIUM:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static CPU_NUM_DUAL()I
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_NUM_DUAL:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 222
    :cond_0
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 225
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_NUM_DUAL:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :catch_1
    move-exception v0

    .line 229
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static FLAG_CPU_MIN_FREQ()I
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_MIN_FREQ:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 85
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_MIN_FREQ:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static FLAG_CPU_MIN_NUM()I
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_MIN_NUM:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 105
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_MIN_NUM:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static init()V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Lcom/htc/lib0/HDKLib0Util;->getHDKBaseVersion()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 45
    const-string v0, "android.os.PowerManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    .line 47
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    const-string v1, "CPU_MIN_FREQ"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_MIN_FREQ:Ljava/lang/reflect/Field;

    .line 48
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    const-string v1, "CPU_MIN_NUM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_MIN_NUM:Ljava/lang/reflect/Field;

    .line 49
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    const-string v1, "CPU_FREQ_LOWEST"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_LOWEST:Ljava/lang/reflect/Field;

    .line 50
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    const-string v1, "CPU_FREQ_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_LOW:Ljava/lang/reflect/Field;

    .line 51
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    const-string v1, "CPU_FREQ_MEDIUM"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_MEDIUM:Ljava/lang/reflect/Field;

    .line 52
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    const-string v1, "CPU_FREQ_HIGH"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGH:Ljava/lang/reflect/Field;

    .line 53
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    const-string v1, "CPU_FREQ_HIGHEST"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGHEST:Ljava/lang/reflect/Field;

    .line 54
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    const-string v1, "CPU_NUM_DUAL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_NUM_DUAL:Ljava/lang/reflect/Field;

    .line 56
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->flagsArray:[I

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_LOWEST:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 57
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->flagsArray:[I

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_LOW:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 58
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->flagsArray:[I

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_MEDIUM:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 59
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->flagsArray:[I

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGH:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 60
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->flagsArray:[I

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sCPU_FREQ_HIGHEST:Ljava/lang/reflect/Field;

    sget-object v3, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sHtcPM:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 66
    :catch_2
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 68
    :catch_3
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private isValidFlags(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 274
    sget-object v2, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->flagsArray:[I

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 275
    if-ne p1, v4, :cond_1

    const/4 v0, 0x1

    .line 277
    :cond_0
    return v0

    .line 274
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acquire(J)V
    .locals 5

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->mHtcCpuCtrl:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 292
    :cond_0
    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timout should be smaller than 60 seconds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_acquire_long:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->mHtcCpuCtrl:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "acquire"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_acquire_long:Ljava/lang/reflect/Method;

    .line 297
    :cond_2
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_acquire_long:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->mHtcCpuCtrl:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 307
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :catch_1
    move-exception v0

    .line 301
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :catch_2
    move-exception v0

    .line 303
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :catch_3
    move-exception v0

    .line 305
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->mHtcCpuCtrl:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 319
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_release:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->mHtcCpuCtrl:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "release"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_release:Ljava/lang/reflect/Method;

    .line 321
    :cond_1
    sget-object v0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->sMethod_release:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/lib3/android/os/HtcPMCpuCtrl;->mHtcCpuCtrl:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 331
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :catch_1
    move-exception v0

    .line 325
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :catch_2
    move-exception v0

    .line 327
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :catch_3
    move-exception v0

    .line 329
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0
.end method
