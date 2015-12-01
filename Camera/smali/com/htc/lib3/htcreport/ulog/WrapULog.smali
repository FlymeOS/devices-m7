.class public final Lcom/htc/lib3/htcreport/ulog/WrapULog;
.super Ljava/lang/Object;
.source "WrapULog.java"


# static fields
.field private static volatile sIsInit:Z

.field private static sLog:Ljava/lang/reflect/Method;

.field private static sULogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sULogDataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static init()V
    .locals 6

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sIsInit:Z

    if-nez v0, :cond_4

    .line 22
    const-class v1, Lcom/htc/lib3/htcreport/ulog/WrapULog;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-boolean v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sIsInit:Z

    if-nez v0, :cond_3

    .line 24
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sULogClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 25
    const-string v0, "com.htc.utils.ulog.ULog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sULogClass:Ljava/lang/Class;

    .line 26
    :cond_0
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sULogDataClass:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 27
    const-string v0, "com.htc.utils.ulog.ULogData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sULogDataClass:Ljava/lang/Class;

    .line 28
    :cond_1
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sLog:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sULogDataClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sULogClass:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 29
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sULogClass:Ljava/lang/Class;

    const-string v2, "log"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sULogDataClass:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sLog:Ljava/lang/reflect/Method;

    .line 31
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sIsInit:Z

    .line 33
    :cond_3
    monitor-exit v1

    .line 35
    :cond_4
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static log(Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;)V
    .locals 5

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lcom/htc/lib3/htcreport/ulog/WrapULog;->init()V

    .line 68
    sget-object v0, Lcom/htc/lib3/htcreport/ulog/WrapULog;->sLog:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/lib3/htcreport/ulog/WrapReusableULogData;->getDelegate()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    return-void
.end method
