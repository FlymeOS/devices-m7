.class Lcom/android/server/display/HtcAngleDetector$1;
.super Ljava/lang/Object;
.source "HtcAngleDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HtcAngleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/HtcAngleDetector;


# direct methods
.method constructor <init>(Lcom/android/server/display/HtcAngleDetector;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1173
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 22
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGSensorEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 817
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 818
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v11, v17, v18

    .line 819
    .local v11, "x":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v13, v17, v18

    .line 820
    .local v13, "y":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v15, v17, v18

    .line 822
    .local v15, "z":F
    mul-float v17, v11, v11

    mul-float v18, v13, v13

    add-float v17, v17, v18

    mul-float v18, v15, v15

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v4, v0

    .line 826
    .local v4, "gravity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1168
    .end local v4    # "gravity":F
    .end local v11    # "x":F
    .end local v13    # "y":F
    .end local v15    # "z":F
    :cond_0
    :goto_0
    return-void

    .line 829
    .restart local v4    # "gravity":F
    .restart local v11    # "x":F
    .restart local v13    # "y":F
    .restart local v15    # "z":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGSensorTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$900(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGSensorTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$900(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GSensorTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0xc8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    div-float v18, v11, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1102(Lcom/android/server/display/HtcAngleDetector;I)I

    move-result v12

    .line 835
    .local v12, "xAngle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    div-float v18, v13, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1202(Lcom/android/server/display/HtcAngleDetector;I)I

    move-result v14

    .line 836
    .local v14, "yAngle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    div-float v18, v15, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    const-wide v20, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1302(Lcom/android/server/display/HtcAngleDetector;I)I

    move-result v16

    .line 840
    .local v16, "zAngle":I
    # getter for: Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1400()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    aput v4, v17, v18

    .line 841
    # getter for: Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1600()[I

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    aput v12, v17, v18

    .line 842
    # getter for: Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1700()[I

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    aput v14, v17, v18

    .line 843
    # getter for: Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1800()[I

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    aput v16, v17, v18

    .line 844
    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v18

    mul-float v19, v11, v11

    mul-float v20, v15, v15

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    aput v19, v17, v18

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 848
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, angleBuffer: xAngle, yAngle, zAngle, gravity, pointer = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 851
    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v17

    sub-int v9, v17, v8

    .line 852
    .local v9, "j":I
    if-ltz v9, :cond_2

    .line 853
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1600()[I

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1700()[I

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1800()[I

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1400()[F

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v20

    aget v20, v20, v9

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 859
    :cond_2
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->xAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1600()[I

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->yAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1700()[I

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->zAngleBuffer:[I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1800()[I

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gravityBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1400()[F

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->projXZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1900()[F

    move-result-object v20

    add-int/lit8 v21, v9, 0xa

    aget v20, v20, v21

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 867
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_3
    # getter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$1500()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    rem-int/lit8 v17, v17, 0xa

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mAcceSensorBufferPointer:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1502(I)I

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2300(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v18

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$2502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$2700(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupTalkingTask:Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$2700(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$IsPickupTalkingTask;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 879
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2300(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 882
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGSL.onSC: screen off in reading at start."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$3200(Lcom/android/server/display/HtcAngleDetector;III)Z

    .line 889
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$2302(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isShaking(F)Z
    invoke-static {v0, v4}, Lcom/android/server/display/HtcAngleDetector;->access$3300(Lcom/android/server/display/HtcAngleDetector;F)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_7

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 899
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3602(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3900(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4000(Lcom/android/server/display/HtcAngleDetector;I)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->sendDelayScreenOnStateAfterEndCall(I)V

    .line 911
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4300(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mShakeAwakeTimeoutTask:Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4300(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$ShakeAwakeTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 918
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isSamePose(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$3200(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsShakeAwake:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3600(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 919
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    goto/16 :goto_0

    .line 925
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 926
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mGSL.onSC: x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v12}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v14}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", z="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->angleToString(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2100(Lcom/android/server/display/HtcAngleDetector;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", gravity="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/display/HtcAngleDetector;->acceleroMeterToString(F)Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/android/server/display/HtcAngleDetector;->access$2200(Lcom/android/server/display/HtcAngleDetector;F)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # operator++ for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4608(Lcom/android/server/display/HtcAngleDetector;)I

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4600(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->READING_DEBOUNCE_COUNTER:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4700(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isSameZAngle(I)Z
    invoke-static {v0, v1}, Lcom/android/server/display/HtcAngleDetector;->access$4800(Lcom/android/server/display/HtcAngleDetector;I)Z

    move-result v17

    if-nez v17, :cond_f

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 936
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGSL.onSC: reading detected. turning on."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_e

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 943
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3900(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4000(Lcom/android/server/display/HtcAngleDetector;I)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    if-eqz v17, :cond_f

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->sendDelayScreenOnStateAfterEndCall(I)V

    .line 997
    .end local v4    # "gravity":F
    .end local v11    # "x":F
    .end local v12    # "xAngle":I
    .end local v13    # "y":F
    .end local v14    # "yAngle":I
    .end local v15    # "z":F
    .end local v16    # "zAngle":I
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorEnabled:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 999
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getType()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1000
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v5, v17, v18

    .line 1001
    .local v5, "gyroX":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v6, v17, v18

    .line 1002
    .local v6, "gyroY":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v7, v17, v18

    .line 1004
    .local v7, "gyroZ":F
    mul-float v17, v5, v5

    mul-float v18, v6, v6

    add-float v17, v17, v18

    mul-float v18, v7, v7

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 1007
    .local v10, "omegaMagnitude":F
    # getter for: Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5300()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v18

    aput v10, v17, v18

    .line 1008
    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5500()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v18

    aput v5, v17, v18

    .line 1009
    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5600()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v18

    aput v6, v17, v18

    .line 1010
    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5700()[F

    move-result-object v17

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v18

    aput v7, v17, v18

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->BUFFER_DEBUG_SWITCH:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 1014
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech,  gyroBuffer: gyroX, gyroY, gyroZ, omegaMagnitude, pointer = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v8, v0, :cond_16

    .line 1017
    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v17

    sub-int v9, v17, v8

    .line 1018
    .restart local v9    # "j":I
    if-ltz v9, :cond_15

    .line 1019
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5500()[F

    move-result-object v19

    aget v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5600()[F

    move-result-object v19

    aget v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5700()[F

    move-result-object v19

    aget v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5300()[F

    move-result-object v19

    aget v19, v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 963
    .end local v5    # "gyroX":F
    .end local v6    # "gyroY":F
    .end local v7    # "gyroZ":F
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v10    # "omegaMagnitude":F
    .restart local v4    # "gravity":F
    .restart local v11    # "x":F
    .restart local v12    # "xAngle":I
    .restart local v13    # "y":F
    .restart local v14    # "yAngle":I
    .restart local v15    # "z":F
    .restart local v16    # "zAngle":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z
    invoke-static {v0, v12, v14, v1}, Lcom/android/server/display/HtcAngleDetector;->access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4900(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # operator++ for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4508(Lcom/android/server/display/HtcAngleDetector;)I

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4500(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->TALKING_DEBOUNCE_COUNTER:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5000(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 967
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGSL.onSC: talking detected. turning off."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .line 985
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4600(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4500(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 986
    :cond_13
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGSL.onSC: reset talking/reading counter and flag."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    goto/16 :goto_3

    .line 1024
    .end local v4    # "gravity":F
    .end local v11    # "x":F
    .end local v12    # "xAngle":I
    .end local v13    # "y":F
    .end local v14    # "yAngle":I
    .end local v15    # "z":F
    .end local v16    # "zAngle":I
    .restart local v5    # "gyroX":F
    .restart local v6    # "gyroY":F
    .restart local v7    # "gyroZ":F
    .restart local v8    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "omegaMagnitude":F
    :cond_15
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BufferMech, ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroXBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5500()[F

    move-result-object v19

    add-int/lit8 v20, v9, 0xa

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroYBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5600()[F

    move-result-object v19

    add-int/lit8 v20, v9, 0xa

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->gyroZBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5700()[F

    move-result-object v19

    add-int/lit8 v20, v9, 0xa

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/display/HtcAngleDetector;->omegaMagnitudeBuffer:[F
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5300()[F

    move-result-object v19

    add-int/lit8 v20, v9, 0xa

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1031
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_16
    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static {}, Lcom/android/server/display/HtcAngleDetector;->access$5400()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    rem-int/lit8 v17, v17, 0xa

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mGyroSensorBufferPointer:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5402(I)I

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5100(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mInitCompleted:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2300(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsCmpLastAngleTimeout:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4400(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 1039
    const-string v17, "HtcAngleDetector"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mGyro.onSC:, M="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", x="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", y="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", z="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", GyroAwake="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$4900(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", screen="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", PickupInTalking="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isGyroShakeAwake()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5900(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1b

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 1047
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGyro.onSC: Gyro shaking detected. turning on."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_19

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1054
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3900(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4000(Lcom/android/server/display/HtcAngleDetector;I)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    if-eqz v17, :cond_1a

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->sendDelayScreenOnStateAfterEndCall(I)V

    .line 1071
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1081
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isGyroAwakeMove()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$6000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_1f

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v20

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isSameAngle(III)Z
    invoke-static/range {v17 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$6100(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 1084
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGyro.onSC: Gyro awake. turning on."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mPSensorStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3400(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v17

    if-nez v17, :cond_1d

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsPsensorNear:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3502(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1091
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->SCREEN_TIMEOUT_READING:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3900(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    # invokes: Lcom/android/server/display/HtcAngleDetector;->setScreenTimeout(I)V
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4000(Lcom/android/server/display/HtcAngleDetector;I)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mReleaseProximityWakeLockOn:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    if-eqz v17, :cond_1e

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->sendDelayScreenOnStateAfterEndCall(I)V

    .line 1108
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1114
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4900(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsTimeoutInReading:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$5800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isGyroTalkingMove()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$6200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v20

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z
    invoke-static/range {v17 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 1117
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGyro.onSC: Gyro talking. turning off."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1137
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsPickupInTalking:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2500(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isActualScreenOn()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$2800(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isGyroTalkingMove()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$6200(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v20

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isReading(III)Z
    invoke-static/range {v17 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2900(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    goto/16 :goto_0

    .line 1141
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_xAngle:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$1100(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_yAngle:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/HtcAngleDetector;->access$1200(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mOld_zAngle:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$1300(Lcom/android/server/display/HtcAngleDetector;)I

    move-result v20

    # invokes: Lcom/android/server/display/HtcAngleDetector;->isTalking(III)Z
    invoke-static/range {v17 .. v20}, Lcom/android/server/display/HtcAngleDetector;->access$2600(Lcom/android/server/display/HtcAngleDetector;III)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    goto/16 :goto_0

    .line 1144
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3700(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->DEBUG_ON:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3000(Lcom/android/server/display/HtcAngleDetector;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 1146
    const-string v17, "HtcAngleDetector"

    const-string v18, "mGyro.onSC: Gyro talking. turning off.(mIsPickupInTalking)"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/display/HtcAngleDetector;->resetLastAngles()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$3100(Lcom/android/server/display/HtcAngleDetector;)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mTalkingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4502(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsTalkingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3802(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mReadingCounter:I
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4602(Lcom/android/server/display/HtcAngleDetector;I)I

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsReadingDetected:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$3702(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mCallbacks:Lcom/android/server/display/HtcAngleDetector$Callbacks;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$4100(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$Callbacks;

    move-result-object v17

    const/16 v18, -0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector$Callbacks;->updateBrightness(I)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroAwake:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$4902(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lcom/android/server/display/HtcAngleDetector;->mIsGyroMoveTimeout:Z
    invoke-static/range {v17 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5102(Lcom/android/server/display/HtcAngleDetector;Z)Z

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/server/display/HtcAngleDetector;->access$1000(Lcom/android/server/display/HtcAngleDetector;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/HtcAngleDetector$1;->this$0:Lcom/android/server/display/HtcAngleDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/HtcAngleDetector;->mGyroMoveTimeoutTask:Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/HtcAngleDetector;->access$5200(Lcom/android/server/display/HtcAngleDetector;)Lcom/android/server/display/HtcAngleDetector$GyroMoveTimeoutTask;

    move-result-object v18

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
