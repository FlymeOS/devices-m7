.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    .prologue
    .line 233
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 237
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator.1;"
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-lez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mStartTimeNanos:J
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 238
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v10

    # setter for: Lcom/android/server/display/RampAnimator;->mStartTimeNanos:J
    invoke-static {v9, v10, v11}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    .line 242
    :cond_0
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v4

    .line 243
    .local v4, "frameTimeNanos":J
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v10

    sub-long v10, v4, v10

    long-to-float v9, v10

    const v10, 0x3089705f    # 1.0E-9f

    mul-float v8, v9, v10

    .line 245
    .local v8, "timeDelta":F
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # setter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v9, v4, v5}, Lcom/android/server/display/RampAnimator;->access$302(Lcom/android/server/display/RampAnimator;J)J

    .line 251
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v7

    .line 253
    .local v7, "scale":F
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_e

    .line 256
    :cond_1
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 257
    const-string v9, "XAN-RA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCb:Anim off.("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    int-to-float v10, v10

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    .line 318
    :cond_3
    :goto_0
    sget v6, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 319
    .local v6, "oldCurrentValue":I
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sput v9, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 322
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 325
    :cond_4
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 326
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_6

    .line 327
    :cond_5
    const-string v9, "XAN-RA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCb:setValue ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_6
    sget v9, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-ne v6, v9, :cond_7

    sget v9, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    sget v10, Lcom/android/server/display/RampAnimator;->mCurrentButtonValue:I

    if-eq v9, v10, :cond_c

    .line 335
    :cond_7
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 336
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_9

    .line 337
    :cond_8
    const-string v9, "XAN-RA"

    const-string v10, "mCb:SV S"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_9
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$900(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v10

    sget v11, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v9, v10, v11}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 341
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 342
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-gtz v9, :cond_b

    .line 343
    :cond_a
    const-string v9, "XAN-RA"

    const-string v10, "mCb:SV E"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_b
    sget v9, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    sput v9, Lcom/android/server/display/RampAnimator;->mCurrentButtonValue:I

    .line 352
    :cond_c
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    sget v10, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq v9, v10, :cond_12

    .line 353
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # invokes: Lcom/android/server/display/RampAnimator;->postAnimationCallback()V
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$1100(Lcom/android/server/display/RampAnimator;)V

    .line 372
    :cond_d
    :goto_1
    return-void

    .line 269
    .end local v6    # "oldCurrentValue":I
    :cond_e
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-lez v9, :cond_10

    .line 270
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mStartValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    sub-int v1, v9, v10

    .line 271
    .local v1, "DELTA":I
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mStartTimeNanos:J
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v10

    sub-long v10, v4, v10

    long-to-float v2, v10

    .line 272
    .local v2, "ELAPSED":F
    int-to-float v9, v1

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x49742400    # 1000000.0f

    mul-float/2addr v10, v11

    div-float v10, v2, v10

    mul-float v0, v9, v10

    .line 274
    .local v0, "AMOUNT":F
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mStartValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v0

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    .line 277
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mStartValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v9, v10, :cond_f

    .line 278
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    .line 285
    :goto_2
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_0

    .line 281
    :cond_f
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_2

    .line 299
    .end local v0    # "AMOUNT":F
    .end local v1    # "DELTA":I
    .end local v2    # "ELAPSED":F
    :cond_10
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    div-float v3, v9, v7

    .line 300
    .local v3, "amount":F
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    sget v10, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-le v9, v10, :cond_11

    .line 301
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v10

    add-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    .line 306
    :goto_3
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_0

    .line 303
    :cond_11
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)F

    move-result v10

    sub-float/2addr v10, v3

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$602(Lcom/android/server/display/RampAnimator;F)F

    goto :goto_3

    .line 356
    .end local v3    # "amount":F
    .restart local v6    # "oldCurrentValue":I
    :cond_12
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 357
    const-string v9, "XAN-RA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCb:FV ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_13
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const-wide/16 v10, -0x1

    # setter for: Lcom/android/server/display/RampAnimator;->mStartTimeNanos:J
    invoke-static {v9, v10, v11}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    .line 362
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v10, -0x1

    # setter for: Lcom/android/server/display/RampAnimator;->mDuration:I
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$002(Lcom/android/server/display/RampAnimator;I)I

    .line 365
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/display/RampAnimator;->mCameraAnimating:Z
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$1202(Lcom/android/server/display/RampAnimator;Z)Z

    .line 367
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimating:Z
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$1302(Lcom/android/server/display/RampAnimator;Z)Z

    .line 368
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$1400(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 369
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$1400(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    goto/16 :goto_1
.end method
