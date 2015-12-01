.class public final Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;
.super Ljava/lang/Object;
.source "WrapReusableULogData.java"


# static fields
.field private static sAddData:Ljava/lang/reflect/Method;

.field private static volatile sIsInit:Z

.field private static sObtain:Ljava/lang/reflect/Method;

.field private static sRecyle:Ljava/lang/reflect/Method;

.field private static sReusableULogDataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sSetAppId:Ljava/lang/reflect/Method;

.field private static sSetCategory:Ljava/lang/reflect/Method;

.field private static sSetTimestamp:Ljava/lang/reflect/Method;


# instance fields
.field private final mObject:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private static init()V
    .locals 6

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sIsInit:Z

    if-nez v0, :cond_8

    .line 28
    const-class v1, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-boolean v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sIsInit:Z

    if-nez v0, :cond_7

    .line 30
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "com.htc.utils.ulog.ReusableULogData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    .line 33
    :cond_0
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sObtain:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    const-string v2, "obtain"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sObtain:Ljava/lang/reflect/Method;

    .line 36
    :cond_1
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sRecyle:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 37
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    const-string v2, "recycle"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sRecyle:Ljava/lang/reflect/Method;

    .line 39
    :cond_2
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sSetAppId:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 40
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    const-string v2, "setAppId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sSetAppId:Ljava/lang/reflect/Method;

    .line 42
    :cond_3
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sSetCategory:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 43
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    const-string v2, "setCategory"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sSetCategory:Ljava/lang/reflect/Method;

    .line 45
    :cond_4
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sSetTimestamp:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 46
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    const-string v2, "setTimestamp"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sSetTimestamp:Ljava/lang/reflect/Method;

    .line 48
    :cond_5
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sAddData:Ljava/lang/reflect/Method;

    if-nez v0, :cond_6

    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 49
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sReusableULogDataClass:Ljava/lang/Class;

    const-string v2, "addData"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sAddData:Ljava/lang/reflect/Method;

    .line 51
    :cond_6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sIsInit:Z

    .line 53
    :cond_7
    monitor-exit v1

    .line 56
    :cond_8
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtain()Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->init()V

    .line 68
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sObtain:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;

    invoke-direct {v1, v0}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sAddData:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    return-object p0
.end method

.method getDelegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sRecyle:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sSetAppId:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->sSetCategory:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->mObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    return-object p0
.end method
