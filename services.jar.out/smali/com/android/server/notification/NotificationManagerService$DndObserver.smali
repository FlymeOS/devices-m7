.class Lcom/android/server/notification/NotificationManagerService$DndObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DndObserver"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "htc_dnd_feature_enabled"


# instance fields
.field private registered:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3511
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3512
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->registered:Z

    .line 3513
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3517
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3518
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->registered:Z

    if-nez v6, :cond_0

    .line 3519
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->registered:Z

    .line 3520
    const-string v6, "htc_dnd_feature_enabled"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3523
    :cond_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v7, "htc_dnd_feature_enabled"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    :goto_0
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDndEnabled:Z
    invoke-static {v6, v4}, Lcom/android/server/notification/NotificationManagerService;->access$6002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3524
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dnd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDndEnabled:Z
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDndEnabled:Z
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v4, v4, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v4, :cond_2

    .line 3528
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3530
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/notification/NotificationManagerService;->mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    .line 3532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 3534
    .local v0, "identity":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 3535
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_1

    .line 3536
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3540
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3544
    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    .line 3545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    .line 3547
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3549
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3553
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3554
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    .line 3555
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$DndObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 3556
    monitor-exit v5

    .line 3558
    .end local v0    # "identity":J
    :cond_2
    return-void

    :cond_3
    move v4, v5

    .line 3523
    goto :goto_0

    .line 3538
    .restart local v0    # "identity":J
    :catch_0
    move-exception v4

    .line 3540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3556
    .end local v0    # "identity":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 3540
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3549
    :catchall_2
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
