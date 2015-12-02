.class public Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field private static final localLOGI:Z

.field private static localSecurity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/htc/lib1/cc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->localLOGI:Z

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->localSecurity:Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    const-string v0, "HtcRemiView"

    invoke-static {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    sget-boolean v0, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->localLOGI:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "HtcRemiView"

    invoke-static {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method private static output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 92
    const-string v0, "HtcRemiView"

    invoke-static {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method
