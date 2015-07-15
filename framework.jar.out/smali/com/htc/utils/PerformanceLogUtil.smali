.class public Lcom/htc/utils/PerformanceLogUtil;
.super Ljava/lang/Object;
.source "PerformanceLogUtil.java"


# static fields
.field public static final Enabled:Z

.field public static LOG_HEADER:Ljava/lang/String; = null

.field public static PERFORMANCE_TEST_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "Perf"

.field private static mCurRotatingAppTokenStr:Ljava/lang/String;

.field private static mInitedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastAnimationStopComponent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 27
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformance()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    .line 30
    sput-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    .line 32
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfilePerformanceTest()I

    move-result v0

    if-lez v0, :cond_1

    .line 33
    sput-boolean v2, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    .line 34
    const-string v0, "[AutoProf]("

    sput-object v0, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    .line 63
    :cond_1
    sput-object v3, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    .line 115
    sput-object v3, Lcom/htc/utils/PerformanceLogUtil;->mLastAnimationStopComponent:Ljava/lang/String;

    .line 228
    sput-object v3, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    return-void

    :cond_2
    move v0, v1

    .line 27
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUsLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 272
    const-string v0, "NULL"

    return-object v0
.end method

.method public static getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "labelRes"    # I

    .prologue
    .line 243
    const-string v0, "NULL"

    return-object v0
.end method

.method public static logAddAppToken(Ljava/lang/String;)V
    .locals 3
    .param p0, "winToken"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "103) Add new Window App Token { HistoryRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logCheckPendingRotate()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "220) Rotate animation stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public static logDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p0, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 101
    .local v0, "keyCode":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "112) Back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "Perf"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v0    # "keyCode":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logDisplayActivity(Ljava/lang/String;)V
    .locals 3
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "133) Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logFinishDrawing(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-boolean v4, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v4, :cond_0

    .line 95
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 84
    .local v1, "label":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 85
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 86
    .local v2, "resources":Landroid/content/res/Resources;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v2, v4}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "111) Finish drawing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v4, "Perf"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static logHandleConfigurationChangedEnd(J)V
    .locals 4
    .param p0, "startTime"    # J

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "214) Top app configuration change finished, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public static logHandleConfigurationChangedStart(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .locals 7
    .param p0, "at"    # Landroid/app/ActivityThread;
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 158
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 159
    .local v1, "application":Landroid/app/Application;
    const/4 v2, 0x0

    .line 160
    .local v2, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 162
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 164
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-static {v3, v5}, Lcom/htc/utils/PerformanceLogUtil;->getUsLabel(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "212) Going to change top app configuration, orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v5, "Perf"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public static logHomeKeyTriggered()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "114) Home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public static logHtcHandleRotateAnimation(F)V
    .locals 3
    .param p0, "animationScale"    # F

    .prologue
    .line 205
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "219) Rotate animation start, scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    .line 211
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logHtcHandleRotateAnimation(Landroid/view/IApplicationToken;I)V
    .locals 3
    .param p0, "appToken"    # Landroid/view/IApplicationToken;
    .param p1, "duration"    # I

    .prologue
    .line 214
    if-eqz p0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "219) Rotate animation start, token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logMoveAppTokensToTop(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .local p1, "allWindows":Ljava/util/List;, "Ljava/util/List<+Landroid/view/WindowManagerPolicy$WindowState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "104) Move App tokens top, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/utils/PerformanceLogUtil;->parseComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public static logNoteStartWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "wakeLockType"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 150
    const-string v1, "SCREEN_FROZEN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "partial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "211) Start rotating, SCREEN_FROZEN partial wakelock held"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logNoteStopWakeLock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "wakeLockType"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 197
    const-string v1, "SCREEN_FROZEN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "partial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "215) Finish rotating, SCREEN_FROZEN partial wakelock released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logOnCreateActivity(Ljava/lang/String;)V
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    .line 69
    :cond_0
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "107) First init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->mInitedClassList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public static logPerformConfigurationChange(Landroid/content/ComponentCallbacks;J)V
    .locals 7
    .param p0, "cb"    # Landroid/content/ComponentCallbacks;
    .param p1, "startTime"    # J

    .prologue
    .line 173
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, p1

    .line 174
    .local v0, "duration":J
    const-wide/16 v4, 0x32

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "213) Configutation change callback { Callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v3, "Perf"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public static logSetRotation(Landroid/view/IApplicationToken;)V
    .locals 3
    .param p0, "appToken"    # Landroid/view/IApplicationToken;

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/utils/PerformanceLogUtil;->parseComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "224) Set rotation, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/utils/PerformanceLogUtil;->mCurRotatingAppTokenStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public static logShowActionBarOverflowMenu()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "134) Show Action Bar Overflow Menu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public static logStartProcessLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 39
    sget-boolean v1, Lcom/htc/utils/PerformanceLogUtil;->PERFORMANCE_TEST_MODE:Z

    if-nez v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "102) Starting process { Process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ActivityName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "}, pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "Perf"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logWindowAnimationStop(Ljava/lang/String;)V
    .locals 4
    .param p0, "appToken"    # Ljava/lang/String;

    .prologue
    .line 117
    if-eqz p0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/htc/utils/PerformanceLogUtil;->parseComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "component":Ljava/lang/String;
    sget-object v2, Lcom/htc/utils/PerformanceLogUtil;->mLastAnimationStopComponent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    sput-object v0, Lcom/htc/utils/PerformanceLogUtil;->mLastAnimationStopComponent:Ljava/lang/String;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/htc/utils/PerformanceLogUtil;->LOG_HEADER:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "130) Anim stop, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, "Perf"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "component":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private static parseComponentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "tokenString"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    .line 291
    if-nez p0, :cond_0

    .line 292
    const-string v6, "NULL"

    .line 323
    :goto_0
    return-object v6

    .line 295
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 296
    .local v5, "tokenCharArray":[C
    const/4 v2, 0x1

    .line 297
    .local v2, "findEnd":Z
    const/4 v1, -0x1

    .line 298
    .local v1, "end":I
    const/4 v0, -0x1

    .line 300
    .local v0, "begin":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 301
    if-eqz v2, :cond_2

    .line 303
    aget-char v6, v5, v3

    if-ne v6, v7, :cond_1

    .line 304
    move v1, v3

    .line 305
    const/4 v2, 0x0

    .line 300
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 310
    :cond_2
    aget-char v6, v5, v3

    if-ne v6, v7, :cond_1

    .line 311
    add-int/lit8 v0, v3, 0x1

    .line 317
    :cond_3
    const/4 v6, -0x1

    if-eq v0, v6, :cond_4

    .line 318
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 321
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "(PARSING_FAIL)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
