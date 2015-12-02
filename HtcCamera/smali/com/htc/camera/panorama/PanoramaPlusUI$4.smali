.class Lcom/htc/camera/panorama/PanoramaPlusUI$4;
.super Ljava/lang/Object;
.source "PanoramaPlusUI.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;


# direct methods
.method constructor <init>(Lcom/htc/camera/panorama/PanoramaPlusUI;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 365
    sget-object v0, Lcom/htc/camera/panorama/PanoramaPlusUI$14;->$SwitchMap$com$htc$camera$panorama$PanoramaPlusUI$PanoramaPlusUIState:[I

    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_UIState:Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;
    invoke-static {v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$800(Lcom/htc/camera/panorama/PanoramaPlusUI;)Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/panorama/PanoramaPlusUI$PanoramaPlusUIState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 371
    :pswitch_0
    new-array v0, v11, [F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v9

    aput v1, v0, v9

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroTimestamp:J
    invoke-static {v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$1900(Lcom/htc/camera/panorama/PanoramaPlusUI;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v1, v3

    double-to-float v1, v1

    aput v1, v0, v10

    .line 372
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    # setter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_GyroTimestamp:J
    invoke-static {v1, v2, v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$1902(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J

    .line 375
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 376
    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpGyro:J
    invoke-static {v3}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2000(Lcom/htc/camera/panorama/PanoramaPlusUI;)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide v5, 0xb2d05e00L

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # setter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->m_LastTimeDumpGyro:J
    invoke-static {v3, v1, v2}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2002(Lcom/htc/camera/panorama/PanoramaPlusUI;J)J

    .line 379
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # getter for: Lcom/htc/camera/panorama/PanoramaPlusUI;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$2100(Lcom/htc/camera/panorama/PanoramaPlusUI;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onSensorChanged() - Gyro: {"

    aput-object v3, v2, v7

    aget v3, v0, v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, ", "

    aput-object v3, v2, v9

    aget v3, v0, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, ", "

    aput-object v3, v2, v11

    const/4 v3, 0x5

    aget v4, v0, v9

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aget v4, v0, v10

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "}"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/htc/camera/panorama/PanoramaPlusUI$4;->this$0:Lcom/htc/camera/panorama/PanoramaPlusUI;

    # invokes: Lcom/htc/camera/panorama/PanoramaPlusUI;->onSensorValuesChanged(I[F)V
    invoke-static {v1, v11, v0}, Lcom/htc/camera/panorama/PanoramaPlusUI;->access$1800(Lcom/htc/camera/panorama/PanoramaPlusUI;I[F)V

    goto/16 :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
