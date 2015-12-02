.class public Lcom/htc/lib0/customization/HtcWrapCustomizationReader;
.super Ljava/lang/Object;
.source "HtcWrapCustomizationReader.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mReaderMethods:[Ljava/lang/reflect/Method;


# instance fields
.field private mReader:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "HtcWrapCustomizationReader"

    sput-object v0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->initGenericReader()V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReader:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReader:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private static initGenericReader()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/reflect/Method;

    sput-object v1, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    .line 36
    :try_start_0
    const-string v1, "com.htc.customization.HtcCustomizationReader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 42
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 43
    const-string v5, "readInteger"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const-string v5, "readString"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 48
    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    aput-object v3, v4, v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-object v0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->TAG:Ljava/lang/String;

    const-string v1, "[ACC][RR] HtcCustomizationReader class NotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2
    :goto_2
    return-void

    .line 49
    :cond_3
    :try_start_1
    const-string v5, "readNullableBoolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 51
    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    aput-object v3, v4, v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    sget-object v1, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->TAG:Ljava/lang/String;

    const-string v2, "[ACC][RR] HtcCustomizationReader class IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 52
    :cond_4
    :try_start_2
    const-string v5, "readBoolean"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 54
    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    aput-object v3, v4, v5

    goto :goto_1

    .line 55
    :cond_5
    const-string v5, "readByte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 57
    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    aput-object v3, v4, v5

    goto :goto_1

    .line 58
    :cond_6
    const-string v5, "readIntArray"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 60
    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    const/4 v5, 0x5

    aput-object v3, v4, v5

    goto :goto_1

    .line 61
    :cond_7
    const-string v5, "readStringArray"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    const/4 v5, 0x6

    aput-object v3, v4, v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private readGeneric(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    :try_start_0
    sget-object v1, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 93
    sget-object v1, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReader:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACC][RR]invocation of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :catch_1
    move-exception v1

    .line 98
    sget-object v2, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACC][RR]invocation of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 100
    :catch_2
    move-exception v1

    .line 101
    sget-object v2, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACC][RR]invocation of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReaderMethods:[Ljava/lang/reflect/Method;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IllegalAccessException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReader:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readGeneric(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 179
    :cond_0
    return p2
.end method

.method public readInteger(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReader:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readGeneric(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 123
    :cond_0
    return p2
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->mReader:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/lib0/customization/HtcWrapCustomizationReader;->readGeneric(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    check-cast v0, Ljava/lang/String;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
