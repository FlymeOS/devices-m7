.class Lcom/htc/camera/power/BatteryWatcher;
.super Lcom/htc/camera/component/IntentReceiver;
.source "BatteryWatcher.java"

# interfaces
.implements Lcom/htc/camera/power/IBatteryWatcher;


# static fields
.field private static volatile BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

.field private static volatile BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;


# instance fields
.field private m_WorkerThread:Lcom/htc/camera/WorkerThread;


# direct methods
.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 71
    const-string v1, "Battery Watcher"

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;II)V

    .line 37
    new-instance v0, Lcom/htc/camera/power/BatteryWatcher$1;

    const-string v1, "Battery Check Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/camera/power/BatteryWatcher$1;-><init>(Lcom/htc/camera/power/BatteryWatcher;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/power/BatteryWatcher;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    .line 72
    sget-object v0, Lcom/htc/camera/power/BatteryWatcher;->PROPERTY_IS_LOW_BATTERY_LEVEL:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/power/BatteryWatcher;->enablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V

    .line 73
    sget-object v0, Lcom/htc/camera/power/BatteryWatcher;->PROPERTY_IS_LOW_BATTERY_TEMPERATURE:Lcom/htc/camera/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/power/BatteryWatcher;->enablePropertyLogs(Lcom/htc/camera/base/PropertyKey;I)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/power/BatteryWatcher;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/camera/power/BatteryWatcher;->checkBatteryCapacity()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/camera/power/BatteryWatcher;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/camera/power/BatteryWatcher;->checkBatteryTemperature()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/power/BatteryWatcher;)Lcom/htc/camera/WorkerThread;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/power/BatteryWatcher;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/power/BatteryWatcher;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/camera/power/BatteryWatcher;Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkBatteryCapacity()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 81
    const-class v1, Lcom/htc/camera/power/BatteryWatcher;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lcom/htc/camera/power/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "/sys/camera_led_status/low_cap_limit"

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    sput-object v0, Lcom/htc/camera/power/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    .line 91
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const-string v0, "/sys/class/power_supply/battery/capacity"

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/htc/camera/power/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v0, v2, :cond_2

    move v0, v6

    .line 94
    :goto_1
    const/16 v2, 0x2713

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/power/BatteryWatcher;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 95
    return-void

    .line 89
    :cond_1
    const/16 v0, 0xf

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/power/BatteryWatcher;->BATTERY_CAPACITY_LIMIT:Ljava/lang/Integer;

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    .line 93
    goto :goto_1
.end method

.method private checkBatteryTemperature()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 102
    const-class v1, Lcom/htc/camera/power/BatteryWatcher;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/htc/camera/power/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 106
    const-string v0, "/sys/camera_led_status/low_temp_limit"

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/power/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    .line 112
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const-string v0, "/sys/class/power_supply/battery/batt_temp"

    invoke-static {v0}, Lcom/htc/camera/io/FileUtility;->readInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    const/16 v2, 0x2714

    sget-object v1, Lcom/htc/camera/power/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_3

    move v0, v6

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/htc/camera/power/BatteryWatcher;->sendMessage(Lcom/htc/camera/component/Component;IIILjava/lang/Object;Z)Z

    .line 116
    :cond_1
    return-void

    .line 110
    :cond_2
    const/16 v0, 0x64

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/htc/camera/power/BatteryWatcher;->BATTERY_TEMPERATURE_LIMIT:Ljava/lang/Integer;

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v3

    .line 115
    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/htc/camera/WorkerThread;->exit()V

    .line 128
    invoke-super {p0}, Lcom/htc/camera/component/IntentReceiver;->deinitializeOverride()V

    .line 129
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/htc/camera/component/IntentReceiver;->handleMessage(Landroid/os/Message;)V

    .line 155
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 142
    sget-object v2, Lcom/htc/camera/power/BatteryWatcher;->PROPERTY_BATTERY_LEVEL_PERCENTAGE:Lcom/htc/camera/base/PropertyKey;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v2, v1}, Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    .line 143
    sget-object v1, Lcom/htc/camera/power/BatteryWatcher;->PROPERTY_IS_LOW_BATTERY_LEVEL:Lcom/htc/camera/base/PropertyKey;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :pswitch_1
    sget-object v1, Lcom/htc/camera/power/BatteryWatcher;->PROPERTY_IS_LOW_BATTERY_TEMPERATURE:Lcom/htc/camera/base/PropertyKey;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/htc/camera/power/BatteryWatcher;->setReadOnlyProperty(Lcom/htc/camera/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/htc/camera/component/IntentReceiver;->initializeOverride()V

    .line 167
    invoke-virtual {p0}, Lcom/htc/camera/power/BatteryWatcher;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/htc/camera/power/BatteryWatcher;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    invoke-virtual {v1}, Lcom/htc/camera/WorkerThread;->start()V

    .line 173
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_RESUMING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/power/BatteryWatcher$2;

    invoke-direct {v2, p0}, Lcom/htc/camera/power/BatteryWatcher$2;-><init>(Lcom/htc/camera/power/BatteryWatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 182
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/power/BatteryWatcher$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/power/BatteryWatcher$3;-><init>(Lcom/htc/camera/power/BatteryWatcher;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 192
    return-void
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/htc/camera/WorkerThread;->sendMessage(I)Z

    .line 204
    iget-object v0, p0, Lcom/htc/camera/power/BatteryWatcher;->m_WorkerThread:Lcom/htc/camera/WorkerThread;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/htc/camera/WorkerThread;->sendMessage(I)Z

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/power/BatteryWatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected prepareIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 219
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    return-void
.end method
