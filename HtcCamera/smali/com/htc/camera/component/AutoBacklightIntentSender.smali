.class public Lcom/htc/camera/component/AutoBacklightIntentSender;
.super Lcom/htc/camera/component/cm;
.source "AutoBacklightIntentSender.java"


# static fields
.field public static final BASIC_BRIGHTNESS_VALUE:I

.field public static final LOW_BATTERY_BRIGHTNESS_VALUE:I

.field public static final PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String;


# instance fields
.field private mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

.field private m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;

.field private m_BrightnessValue:I

.field private m_BrightnessValueDualMode:I

.field private final m_DisableAutoBacklightRunnable:Ljava/lang/Runnable;

.field private final m_EnableAutoBacklightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "/sys/class/backlight/tegra-pwm-bl/backlight_info"

    sput-object v0, Lcom/htc/camera/component/AutoBacklightIntentSender;->PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String;

    .line 53
    :goto_0
    const/16 v0, 0xe9

    sput v0, Lcom/htc/camera/component/AutoBacklightIntentSender;->BASIC_BRIGHTNESS_VALUE:I

    .line 54
    const/16 v0, 0xd3

    sput v0, Lcom/htc/camera/component/AutoBacklightIntentSender;->LOW_BATTERY_BRIGHTNESS_VALUE:I

    .line 56
    return-void

    .line 51
    :cond_0
    const-string v0, "/sys/class/leds/lcd-backlight/backlight_info"

    sput-object v0, Lcom/htc/camera/component/AutoBacklightIntentSender;->PATH_CAMERA_MINIMUM_BACKLIGHT_BRIGHTNESS:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    const-string v0, "AutoBacklightIntentSender"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/htc/camera/component/cm;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;I)V

    .line 62
    iput v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    .line 63
    iput v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValueDualMode:I

    .line 69
    new-instance v0, Lcom/htc/camera/component/AutoBacklightIntentSender$1;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AutoBacklightIntentSender$1;-><init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_DisableAutoBacklightRunnable:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/htc/camera/component/AutoBacklightIntentSender$2;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/AutoBacklightIntentSender$2;-><init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V

    iput-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_EnableAutoBacklightRunnable:Ljava/lang/Runnable;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/camera/component/AutoBacklightIntentSender;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/camera/component/AutoBacklightIntentSender;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getMinimumBacklightValueDualMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->disableAutoBacklight()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/camera/component/AutoBacklightIntentSender;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getMinimumBacklightValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/camera/component/AutoBacklightIntentSender;)Lcom/htc/camera/power/IBatteryWatcher;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/camera/component/AutoBacklightIntentSender;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/camera/component/AutoBacklightIntentSender;)Lcom/htc/camera/dualcamera/IDualCameraController;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/camera/component/AutoBacklightIntentSender;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValueDualMode:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/camera/component/AutoBacklightIntentSender;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BrightnessValueDualMode:I

    return p1
.end method

.method private disableAutoBacklight()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v1, "disableAutoBacklight()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-class v0, Lcom/htc/camera/ag;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    .line 393
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_DisableAutoBacklightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_DisableAutoBacklightRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 395
    :cond_1
    return-void
.end method

.method private enableAutoBacklight()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoBacklight()"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-class v0, Lcom/htc/camera/ag;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ag;

    .line 383
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_EnableAutoBacklightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/camera/ag;->enqueueTask(Ljava/lang/Runnable;)Lcom/htc/camera/Handle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_EnableAutoBacklightRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 385
    :cond_1
    return-void
.end method

.method private getMinimumBacklightValue(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 253
    .line 255
    const/4 v3, 0x0

    .line 259
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v2, "Error when read backlight value file."

    invoke-static {v0, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    if-eqz v3, :cond_1

    .line 296
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 303
    :cond_1
    :goto_0
    return v1

    .line 265
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v0, 0x1

    invoke-direct {v2, v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 271
    const-string v3, "BL_CAM_MIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 274
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 276
    :try_start_4
    iget-object v3, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The backlight value from file is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-ltz v0, :cond_4

    const/16 v3, 0xff

    if-le v0, v3, :cond_5

    .line 281
    :cond_4
    iget-object v3, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v4, "The backlight value from file is invalid"

    invoke-static {v3, v4}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v0, v1

    .line 295
    :cond_5
    if-eqz v2, :cond_6

    .line 296
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_1
    move v1, v0

    .line 285
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 291
    :goto_2
    :try_start_6
    iget-object v3, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v4, "fail to get backlight value"

    invoke-static {v3, v4, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 295
    if-eqz v2, :cond_1

    .line 296
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 297
    :catch_1
    move-exception v0

    .line 298
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    :goto_3
    invoke-static {v2, v3, v0}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 295
    :goto_4
    if-eqz v2, :cond_7

    .line 296
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 294
    :cond_7
    :goto_5
    throw v0

    .line 297
    :catch_2
    move-exception v1

    .line 298
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 297
    :catch_3
    move-exception v0

    .line 298
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    goto :goto_3

    .line 297
    :catch_4
    move-exception v1

    .line 298
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 295
    :cond_8
    if-eqz v2, :cond_1

    .line 296
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 297
    :catch_5
    move-exception v0

    .line 298
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    goto :goto_3

    .line 294
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 290
    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private getMinimumBacklightValueDualMode(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 312
    .line 313
    const/16 v0, 0x96

    .line 314
    const/4 v3, 0x0

    .line 318
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DualMode Error when read backlight value file return default:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    if-eqz v3, :cond_1

    .line 355
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 362
    :cond_1
    :goto_0
    return v0

    .line 324
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    invoke-direct {v2, v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 330
    const-string v3, "BL_CAM_DUA_MIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 332
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 335
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The backlight value DualMode from file is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-ltz v0, :cond_4

    const/16 v1, 0xff

    if-le v0, v1, :cond_5

    .line 340
    :cond_4
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "The backlight value DualMode from file is invalid"

    invoke-static {v1, v3}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 341
    const/4 v0, 0x0

    .line 354
    :cond_5
    if-eqz v2, :cond_1

    .line 355
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 357
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    :goto_1
    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 350
    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v4, "fail to get backlight value DualMode"

    invoke-static {v3, v4, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 354
    if-eqz v2, :cond_6

    .line 355
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 361
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The backlight value DualMode return default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 354
    :goto_4
    if-eqz v2, :cond_7

    .line 355
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 353
    :cond_7
    :goto_5
    throw v0

    .line 356
    :catch_2
    move-exception v1

    .line 357
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 356
    :catch_3
    move-exception v1

    .line 357
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    :goto_6
    invoke-static {v2, v3, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 356
    :catch_4
    move-exception v1

    .line 357
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    goto :goto_1

    .line 354
    :cond_8
    if-eqz v2, :cond_6

    .line 355
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 356
    :catch_5
    move-exception v1

    .line 357
    iget-object v2, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->TAG:Ljava/lang/String;

    const-string v3, "fail to close reader"

    goto :goto_6

    .line 353
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 349
    :catch_6
    move-exception v1

    goto :goto_2
.end method

.method private registerListeners()V
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_DEACTIVATED:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/AutoBacklightIntentSender$3;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoBacklightIntentSender$3;-><init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 214
    sget-object v1, Lcom/htc/camera/HTCCamera;->EVENT_PAUSING:Lcom/htc/camera/base/EventKey;

    new-instance v2, Lcom/htc/camera/component/AutoBacklightIntentSender$4;

    invoke-direct {v2, p0}, Lcom/htc/camera/component/AutoBacklightIntentSender$4;-><init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/HTCCamera;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 223
    iget-object v1, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->legacyTriggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/camera/component/AutoBacklightIntentSender$5;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->isPreviewStarted:Lcom/htc/camera/property/Property;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/htc/camera/component/AutoBacklightIntentSender$5;-><init>(Lcom/htc/camera/component/AutoBacklightIntentSender;Lcom/htc/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    iget-object v0, v0, Lcom/htc/camera/dualcamera/IDualCameraController;->isDualCameraEnabled:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/AutoBacklightIntentSender$6;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/AutoBacklightIntentSender$6;-><init>(Lcom/htc/camera/component/AutoBacklightIntentSender;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/htc/camera/component/cm;->deinitializeOverride()V

    .line 171
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 179
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
    invoke-super {p0, p1}, Lcom/htc/camera/component/cm;->handleMessage(Landroid/os/Message;)V

    .line 188
    :goto_0
    return-void

    .line 182
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/htc/camera/component/cm;->initializeOverride()V

    .line 197
    const-class v0, Lcom/htc/camera/power/IBatteryWatcher;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/power/IBatteryWatcher;

    iput-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->m_BatteryWatcher:Lcom/htc/camera/power/IBatteryWatcher;

    .line 198
    const-class v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/dualcamera/IDualCameraController;

    iput-object v0, p0, Lcom/htc/camera/component/AutoBacklightIntentSender;->mDualCameraController:Lcom/htc/camera/dualcamera/IDualCameraController;

    .line 199
    invoke-direct {p0}, Lcom/htc/camera/component/AutoBacklightIntentSender;->registerListeners()V

    .line 200
    return-void
.end method
