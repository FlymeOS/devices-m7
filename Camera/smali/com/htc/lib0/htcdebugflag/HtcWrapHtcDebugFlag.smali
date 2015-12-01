.class public Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;
.super Ljava/lang/Object;
.source "HtcWrapHtcDebugFlag.java"


# static fields
.field public static final Htc_DEBUG_flag:Z

.field private static TAG:Ljava/lang/String;

.field private static mGetHtcDebugFlagMethod:Ljava/lang/reflect/Method;

.field private static mHtcDebugFlag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const-string v0, "HtcWrapHtcDebugFlag"

    sput-object v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->TAG:Ljava/lang/String;

    .line 15
    sput-object v1, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mHtcDebugFlag:Ljava/lang/Object;

    .line 16
    sput-object v1, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mGetHtcDebugFlagMethod:Ljava/lang/reflect/Method;

    .line 18
    invoke-static {}, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->getHtcDebugFlag()Z

    move-result v0

    sput-boolean v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->Htc_DEBUG_flag:Z

    return-void
.end method

.method private static getHtcDebugFlag()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-static {}, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->init()V

    .line 62
    const/4 v2, 0x0

    .line 63
    sget-object v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mHtcDebugFlag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    sget-object v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mGetHtcDebugFlagMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 66
    sget-object v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mGetHtcDebugFlagMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mHtcDebugFlag:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 79
    :goto_0
    if-eqz v0, :cond_0

    .line 80
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 84
    :goto_1
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 69
    sget-object v3, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invocation of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mGetHtcDebugFlagMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 77
    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v2

    .line 77
    goto :goto_0

    .line 74
    :catch_2
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 84
    goto :goto_1
.end method

.method private static init()V
    .locals 6

    .prologue
    .line 23
    :try_start_0
    sget-object v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mHtcDebugFlag:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string v0, "com.htc.htcjavaflag.HtcDebugFlag"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mHtcDebugFlag:Ljava/lang/Object;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 29
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 30
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 31
    const-string v5, "getHtcDebugFlag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 34
    sput-object v3, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->mGetHtcDebugFlagMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 29
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    sget-object v0, Lcom/htc/lib0/htcdebugflag/HtcWrapHtcDebugFlag;->TAG:Ljava/lang/String;

    const-string v1, "HtcDebugFlag class Not Found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 46
    :catch_2
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 48
    :catch_3
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method
