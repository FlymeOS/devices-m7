.class Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReminderBehaviorObserver"
.end annotation


# static fields
.field private static final KEY_ENABLED:Ljava/lang/String; = "htc_accessibility_notification_reminder_enabled"

.field private static final KEY_FREQUENCY:Ljava/lang/String; = "htc_accessibility_notification_reminder_frequency"


# instance fields
.field private registered:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3569
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3570
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    .line 3571
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, 0x0

    .line 3575
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3576
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    if-nez v1, :cond_0

    .line 3577
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->registered:Z

    .line 3578
    const-string v1, "htc_accessibility_notification_reminder_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3580
    const-string v1, "htc_accessibility_notification_reminder_frequency"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3582
    const-string v1, "NotificationService"

    const-string v2, "reminderChange:register"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v2, "htc_accessibility_notification_reminder_enabled"

    const/4 v3, 0x3

    invoke-static {v0, v2, v6, v3}, Lcom/android/internal/util/SettingsUtil;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v2

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$802(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 3589
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v2, "htc_accessibility_notification_reminder_frequency"

    const-wide/16 v4, 0x3a98

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mReminderFrequency:J
    invoke-static {v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$6102(Lcom/android/server/notification/NotificationManagerService;J)J

    .line 3592
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reminderChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderFrequency:J
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderAlarmPost:Z
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mReminderEnabled:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3597
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$ReminderBehaviorObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateReminderAlarm(Z)V
    invoke-static {v1, v6}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;Z)V

    .line 3599
    :cond_1
    return-void
.end method
