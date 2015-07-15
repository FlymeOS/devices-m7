.class Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/HtcWakeLockMonitor;
    .param p2, "x1"    # Lcom/android/server/power/HtcWakeLockMonitor$1;

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;)V

    return-void
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 375
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mContentQueryMap:Landroid/content/ContentQueryMap;
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$900(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/ContentQueryMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentQueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 376
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 377
    .local v0, "iVal":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    return p2

    .line 376
    .end local v0    # "iVal":Ljava/lang/Integer;
    .restart local p2    # "defValue":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 382
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    .line 384
    .local v1, "old_enable_monitor":Z
    const-string v5, "abnormal_app_monitor_enable"

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-direct {p0, v5, v2}, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 386
    .local v0, "app_monitor_enable":I
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    if-ne v0, v3, :cond_3

    move v2, v3

    :goto_1
    # setter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v5, v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1002(Lcom/android/server/power/HtcWakeLockMonitor;Z)Z

    .line 388
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    const-string v2, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingsObserver: app_monitor_enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ENABLE_MONITOR="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$SettingsObserver;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->clearRecord(IZ)V
    invoke-static {v2, v4, v3}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1200(Lcom/android/server/power/HtcWakeLockMonitor;IZ)V

    .line 398
    :cond_1
    return-void

    .end local v0    # "app_monitor_enable":I
    :cond_2
    move v2, v4

    .line 384
    goto :goto_0

    .restart local v0    # "app_monitor_enable":I
    :cond_3
    move v2, v4

    .line 386
    goto :goto_1
.end method
