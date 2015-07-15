.class final Lcom/android/server/AlarmManagerService$EPSObserver;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EPSObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2642
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$EPSObserver;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2643
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2644
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2648
    # getter for: Lcom/android/server/AlarmManagerService;->HTC_DEBUG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    const-string v1, "EPS state change"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EPSObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$EPSObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/server/AlarmManagerService;->updateCurrentEPSState(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V

    .line 2651
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EPSObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2653
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EPSObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mCurrentEPSState:Z
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2654
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EPSObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->recoverEPSBlockedAlarmsLocked()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;)V

    .line 2655
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$EPSObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->recoverEPSScreenOffBlockedAlarmsLocked()V
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)V

    .line 2657
    :cond_1
    monitor-exit v1

    .line 2658
    return-void

    .line 2657
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
