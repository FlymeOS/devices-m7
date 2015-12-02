.class public Lcom/htc/lib0/customization/HtcWrapCustomizationManager;
.super Ljava/lang/Object;
.source "HtcWrapCustomizationManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mCustomizationManager:Ljava/lang/Object;

.field private static mGetCustomizationReaderMethod:Ljava/lang/reflect/Method;

.field private static mReadCIDMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    const-string v0, "HtcWrapCustomizationManager"

    sput-object v0, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->TAG:Ljava/lang/String;

    .line 16
    sput-object v1, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mCustomizationManager:Ljava/lang/Object;

    .line 17
    sput-object v1, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mGetCustomizationReaderMethod:Ljava/lang/reflect/Method;

    .line 18
    sput-object v1, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mReadCIDMethod:Ljava/lang/reflect/Method;

    .line 26
    invoke-static {}, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->initGenericManager()V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private static initGenericManager()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 31
    :try_start_0
    const-string v1, "com.htc.customization.HtcCustomizationManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 35
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 36
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 37
    const-string v5, "getCustomizationReader"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    sput-object v3, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mGetCustomizationReaderMethod:Ljava/lang/reflect/Method;

    .line 35
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    const-string v5, "readCID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 42
    sput-object v3, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mReadCIDMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    sget-object v0, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->TAG:Ljava/lang/String;

    const-string v1, "[ACC][RR] HtcCustomizationManager class NotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    :goto_2
    return-void

    .line 43
    :cond_3
    :try_start_1
    const-string v5, "getInstance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mCustomizationManager:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 58
    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 60
    :catch_3
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/lib0/customization/HtcWrapCustomizationReader;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 116
    const/4 v1, 0x0

    .line 117
    sget-object v0, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mCustomizationManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    sget-object v0, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mGetCustomizationReaderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 120
    sget-object v0, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mGetCustomizationReaderMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mCustomizationManager:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    move-object v1, v0

    .line 132
    :goto_0
    if-eqz v1, :cond_0

    .line 133
    new-instance v0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    invoke-direct {v0, v1}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;-><init>(Ljava/lang/Object;)V

    .line 138
    :goto_1
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 123
    sget-object v2, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACC][RR]invocation of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationManager;->mGetCustomizationReaderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 127
    :catch_2
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;

    invoke-direct {v0, v6}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;-><init>(I)V

    goto :goto_1
.end method
