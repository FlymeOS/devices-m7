.class Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "HtcAmsCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAmsCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackChecker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAmsCallbackManager;


# direct methods
.method private constructor <init>(Lcom/android/server/am/HtcAmsCallbackManager;)V
    .locals 0

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/android/server/am/HtcAmsCallbackManager$CallbackChecker;->this$0:Lcom/android/server/am/HtcAmsCallbackManager;

    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public afterStartActivityUncheckedLocked()V
    .locals 2

    .prologue
    .line 1583
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.afterStartActivityUncheckedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    return-void
.end method

.method public beforeStartActivityUncheckedLocked()V
    .locals 2

    .prologue
    .line 1579
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.beforeStartActivityUncheckedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    return-void
.end method

.method public onAddRecentTask(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "prevTask"    # Lcom/android/server/am/HtcWrapTaskRecord;

    .prologue
    .line 1517
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAddRecentTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return-void
.end method

.method public onAddRecentTaskLocked(Lcom/android/server/am/HtcWrapTaskRecord;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "history"    # Ljava/util/ArrayList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1513
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAddRecentTaskLocked, deprecated!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    return-void
.end method

.method public onAppDiedLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1534
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAppDiedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return-void
.end method

.method public onAppDiedLockedV2(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1538
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAppDiedLockedV2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    return-void
.end method

.method public onAttachApplicationLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1503
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onAttachApplicationLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return-void
.end method

.method public onBroadcastIntentLocked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1521
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onBroadcastIntentLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return-void
.end method

.method public onCleanUpApplicationRecordLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1547
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onCleanUpApplicationRecordLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    return-void
.end method

.method public onCrashApplication(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 1543
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onCrashApplication"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void
.end method

.method public onFinishBooting()V
    .locals 2

    .prologue
    .line 1474
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onFinishBooting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    return-void
.end method

.method public onGenerateApplicationProvidersLocked(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "pi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1508
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGenerateApplicationProvidersLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    return-void
.end method

.method public onGenerateProcessError(Lcom/android/server/am/HtcWrapProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 1593
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGenerateProcessError"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    return-void
.end method

.method public onGoingToSleep()V
    .locals 2

    .prologue
    .line 1478
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    return-void
.end method

.method public onHandleActivityPaused(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 1559
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleActivityPaused"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return-void
.end method

.method public onHandleActivityResumed(Lcom/android/server/am/HtcWrapActivityRecord;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/server/am/HtcWrapActivityRecord;

    .prologue
    .line 1555
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleActivityResumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-void
.end method

.method public onHandleApplicationCrash(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1526
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleApplicationCrash, deprecated!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return-void
.end method

.method public onHandleApplicationCrashV2(Lcom/android/server/am/HtcWrapProcessRecord;Ljava/util/HashSet;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "pkgList"    # Ljava/util/HashSet;

    .prologue
    .line 1530
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleApplicationCrashV2"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1551
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHandleTopAppChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-void
.end method

.method public onHibernate()V
    .locals 2

    .prologue
    .line 1563
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHibernate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return-void
.end method

.method public onHibernateKillApp(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1567
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onHibernateKillApp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1470
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onMain"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return-void
.end method

.method public onRealAppNotResponding(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1495
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onRealAppNotResponding"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    return-void
.end method

.method public onRemoveProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1499
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onRemoveProcessLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    return-void
.end method

.method public onResumeFromHibernate()V
    .locals 2

    .prologue
    .line 1571
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onResumeFromHibernate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return-void
.end method

.method public onShutdown()V
    .locals 2

    .prologue
    .line 1575
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onShutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    return-void
.end method

.method public onStartActivityUncheckedLockedNewIntent(Lcom/android/server/am/HtcWrapTaskRecord;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 2
    .param p1, "prev"    # Lcom/android/server/am/HtcWrapTaskRecord;
    .param p2, "curr"    # Lcom/android/server/am/HtcWrapTaskRecord;

    .prologue
    .line 1588
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartActivityUncheckedLockedNewIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    return-void
.end method

.method public onStartProcessLocked(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;

    .prologue
    .line 1491
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartProcessLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    return-void
.end method

.method public onStartProcessLockedNewPackage(Lcom/android/server/am/HtcWrapProcessRecord;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "process"    # Lcom/android/server/am/HtcWrapProcessRecord;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1487
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onStartProcessLockedNewPackage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    return-void
.end method

.method public onWakingUp()V
    .locals 2

    .prologue
    .line 1482
    const-string v0, "HtcAmsCallbackManager"

    const-string v1, "CallbackChecker.onWakingUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return-void
.end method
