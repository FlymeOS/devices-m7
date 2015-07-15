.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_CAMERA_LEAVE_MODE:I = 0x1

.field private static final BRIGHTNESS_NONE_MODE:I

.field static mCurrentButtonValue:I

.field static mCurrentValue:I

.field static mTargetButtonValue:I


# instance fields
.field private final DEBUG_ON:Z

.field private final TAG:Ljava/lang/String;

.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private mCameraAnimating:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDuration:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mStartTimeNanos:J

.field private mStartValue:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "XAN-RA"

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->TAG:Ljava/lang/String;

    .line 34
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/RampAnimator;->mStartTimeNanos:J

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/RampAnimator;->mDuration:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mCameraAnimating:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 233
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 74
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 76
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mDuration:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/display/RampAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mDuration:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mStartTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mStartTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/RampAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mCameraAnimating:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/display/RampAnimator;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/RampAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mStartValue:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method private cancelAnimationCallback()V
    .locals 4

    .prologue
    .line 230
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    .prologue
    .line 226
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 227
    return-void
.end method


# virtual methods
.method public animateTo(IIII)Z
    .locals 6
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "duration"    # I
    .param p4, "buttonValue"    # I

    .prologue
    .line 91
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/RampAnimator;->animateTo(IIIII)Z

    move-result v0

    return v0
.end method

.method public animateTo(IIIII)Z
    .locals 7
    .param p1, "target"    # I
    .param p2, "rate"    # I
    .param p3, "duration"    # I
    .param p4, "mode"    # I
    .param p5, "buttonValue"    # I

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 99
    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-eqz v4, :cond_5

    .line 101
    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v4, :cond_0

    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v4, :cond_4

    .line 102
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 103
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 104
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 105
    sput p1, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 107
    sput p5, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    .line 109
    iget-object v4, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v5, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 111
    sget v4, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    sput v4, Lcom/android/server/display/RampAnimator;->mCurrentButtonValue:I

    .line 113
    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v4, :cond_1

    .line 114
    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 115
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v4, :cond_2

    .line 118
    iget-object v4, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v4}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 121
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z

    if-eqz v4, :cond_3

    .line 122
    const-string v4, "XAN-RA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAnimating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v3

    .line 208
    :cond_4
    :goto_0
    return v0

    .line 133
    :cond_5
    if-ne p4, v3, :cond_6

    .line 134
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mCameraAnimating:Z

    .line 139
    :cond_6
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 140
    .local v2, "old_rate":I
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mDuration:I

    .line 152
    .local v1, "old_duration":I
    if-gez p3, :cond_10

    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v4, :cond_8

    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v4, :cond_7

    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v5, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v4, v5, :cond_8

    :cond_7
    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    sget v5, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v4, v5, :cond_10

    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v4, p1, :cond_10

    .line 158
    :cond_8
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 160
    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mCameraAnimating:Z

    if-nez v4, :cond_9

    .line 161
    iput v6, p0, Lcom/android/server/display/RampAnimator;->mDuration:I

    .line 174
    :cond_9
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->DEBUG_ON:Z

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v4, :cond_a

    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-ne p1, v4, :cond_b

    :cond_a
    if-ltz p5, :cond_c

    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentButtonValue:I

    if-eq p5, v4, :cond_c

    .line 176
    :cond_b
    const-string v4, "XAN-RA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateTo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bValue("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/display/RampAnimator;->mCurrentButtonValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/RampAnimator;->mDuration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAnimating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAnimatedValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_c
    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-ne v4, p1, :cond_d

    if-ltz p5, :cond_e

    sget v4, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    if-eq v4, p5, :cond_e

    :cond_d
    move v0, v3

    .line 192
    .local v0, "changed":Z
    :cond_e
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 195
    sput p5, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    .line 200
    iget-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v4, :cond_4

    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-ne p1, v4, :cond_f

    if-ltz p5, :cond_4

    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentButtonValue:I

    if-eq p5, v4, :cond_4

    .line 202
    :cond_f
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 203
    sget v3, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 204
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 205
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    goto/16 :goto_0

    .line 165
    .end local v0    # "changed":Z
    :cond_10
    if-ltz p3, :cond_9

    .line 166
    iput v6, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 167
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/display/RampAnimator;->mStartTimeNanos:J

    .line 168
    sget v4, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iput v4, p0, Lcom/android/server/display/RampAnimator;->mStartValue:I

    .line 169
    iput p3, p0, Lcom/android/server/display/RampAnimator;->mDuration:I

    goto/16 :goto_1
.end method

.method cancelAnimation()V
    .locals 4

    .prologue
    .line 389
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    sget v3, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->animateTo(IIII)Z

    .line 390
    return-void
.end method

.method getCurrentBrightness()I
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    sget v0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method getTargetBrightness()I
    .locals 1

    .prologue
    .line 385
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .prologue
    .line 222
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 223
    return-void
.end method
