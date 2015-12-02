.class public Lcom/htc/lib3/android/os/HtcEnvironment;
.super Ljava/lang/Object;
.source "HtcEnvironment.java"


# static fields
.field private static sHtcEnvInstance:Ljava/lang/Class;

.field private static sMethod_getPhoneStorageDirectory:Ljava/lang/reflect/Method;

.field private static sMethod_getPhoneStorageState:Ljava/lang/reflect/Method;

.field private static sMethod_getRemovableStorageDirectory:Ljava/lang/reflect/Method;

.field private static sMethod_getRemovableStorageState:Ljava/lang/reflect/Method;

.field private static sMethod_getUsbDeviceDirectory:Ljava/lang/reflect/Method;

.field private static sMethod_getUsbDeviceState:Ljava/lang/reflect/Method;

.field private static sMethod_hasPhoneStorage:Ljava/lang/reflect/Method;

.field private static sMethod_hasRemovableStorageSlot:Ljava/lang/reflect/Method;

.field private static sMethod_hasUsbDeviceSlot:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    .line 20
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getPhoneStorageDirectory:Ljava/lang/reflect/Method;

    .line 21
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getPhoneStorageState:Ljava/lang/reflect/Method;

    .line 22
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasPhoneStorage:Ljava/lang/reflect/Method;

    .line 23
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getRemovableStorageDirectory:Ljava/lang/reflect/Method;

    .line 24
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getRemovableStorageState:Ljava/lang/reflect/Method;

    .line 25
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasRemovableStorageSlot:Ljava/lang/reflect/Method;

    .line 26
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getUsbDeviceDirectory:Ljava/lang/reflect/Method;

    .line 27
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getUsbDeviceState:Ljava/lang/reflect/Method;

    .line 28
    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasUsbDeviceSlot:Ljava/lang/reflect/Method;

    .line 31
    invoke-static {}, Lcom/htc/lib3/android/os/HtcEnvironment;->init()V

    .line 32
    return-void
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getPhoneStorageDirectory:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 70
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getPhoneStorageDirectory:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 78
    check-cast v0, Ljava/io/File;

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :catch_2
    move-exception v0

    .line 76
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getPhoneStorageState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 94
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getPhoneStorageState:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :catch_2
    move-exception v0

    .line 100
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRemovableStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 137
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getRemovableStorageDirectory:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 142
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getRemovableStorageDirectory:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 150
    check-cast v0, Ljava/io/File;

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :catch_2
    move-exception v0

    .line 148
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRemovableStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getRemovableStorageState:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 166
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getRemovableStorageState:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 174
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :catch_1
    move-exception v0

    .line 170
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :catch_2
    move-exception v0

    .line 172
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasPhoneStorage()Z
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasPhoneStorage:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 118
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasPhoneStorage:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 126
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :catch_2
    move-exception v0

    .line 124
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasRemovableStorageSlot()Z
    .locals 3

    .prologue
    .line 185
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasRemovableStorageSlot:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/htc/lib0/a;

    invoke-direct {v0}, Lcom/htc/lib0/a;-><init>()V

    throw v0

    .line 190
    :cond_0
    :try_start_0
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasRemovableStorageSlot:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 198
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalAccessException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :catch_1
    move-exception v0

    .line 194
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :catch_2
    move-exception v0

    .line 196
    new-instance v0, Lcom/htc/lib0/a;

    const-string v1, "Method Invoke failed with InvocationTargetException"

    invoke-direct {v0, v1}, Lcom/htc/lib0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static init()V
    .locals 3

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Lcom/htc/lib0/HDKLib0Util;->getHDKBaseVersion()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 38
    const-string v0, "android.os.Environment"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    .line 40
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "getPhoneStorageDirectory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getPhoneStorageDirectory:Ljava/lang/reflect/Method;

    .line 41
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "getPhoneStorageState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getPhoneStorageState:Ljava/lang/reflect/Method;

    .line 42
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "hasPhoneStorage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasPhoneStorage:Ljava/lang/reflect/Method;

    .line 43
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "getRemovableStorageDirectory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getRemovableStorageDirectory:Ljava/lang/reflect/Method;

    .line 44
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "getRemovableStorageState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getRemovableStorageState:Ljava/lang/reflect/Method;

    .line 45
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "hasRemovableStorageSlot"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasRemovableStorageSlot:Ljava/lang/reflect/Method;

    .line 46
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "getUsbDeviceDirectory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getUsbDeviceDirectory:Ljava/lang/reflect/Method;

    .line 47
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "getUsbDeviceState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_getUsbDeviceState:Ljava/lang/reflect/Method;

    .line 48
    sget-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sHtcEnvInstance:Ljava/lang/Class;

    const-string v1, "hasUsbDeviceSlot"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/android/os/HtcEnvironment;->sMethod_hasUsbDeviceSlot:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
