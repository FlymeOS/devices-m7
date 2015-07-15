.class public Lcom/htc/widget/AnalogClockView;
.super Landroid/widget/ImageView;
.source "AnalogClockView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEBUG_FLAG:Z

.field private static final TAG:Ljava/lang/String; = "com.htc.widget.AnalogClockView"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mChanged:Z

.field private mControls:Lcom/htc/widget/AnalogControls;

.field private mCx:I

.field private mCy:I

.field private mDateFormat:Ljava/lang/String;

.field private mDialHeight:I

.field private mDialWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mHour:F

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinutes:F

.field private mSeconds:F

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private mUpdateIntervals:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/widget/AnalogClockView;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/AnalogClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/AnalogClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/htc/widget/AnalogClockView;->mUpdateIntervals:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogClockView;->mTickerStopped:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/AnalogClockView;->mHandler:Landroid/os/Handler;

    .line 259
    new-instance v0, Lcom/htc/widget/AnalogClockView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/AnalogClockView$1;-><init>(Lcom/htc/widget/AnalogClockView;)V

    iput-object v0, p0, Lcom/htc/widget/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    .line 280
    new-instance v0, Lcom/htc/widget/AnalogClockView$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/AnalogClockView$2;-><init>(Lcom/htc/widget/AnalogClockView;)V

    iput-object v0, p0, Lcom/htc/widget/AnalogClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/AnalogClockView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/AnalogClockView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/htc/widget/AnalogClockView;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/AnalogClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/widget/AnalogClockView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->onTimeTick()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/AnalogClockView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/AnalogClockView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/AnalogClockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/AnalogClockView;

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/widget/AnalogClockView;->mUpdateIntervals:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/AnalogClockView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/AnalogClockView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/AnalogClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/widget/AnalogClockView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->updateTime()V

    return-void
.end method

.method private onTimeTick()V
    .locals 5

    .prologue
    const/high16 v4, 0x42700000    # 60.0f

    .line 270
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 271
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/widget/AnalogClockView;->mSeconds:F

    .line 272
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/widget/AnalogClockView;->mMinutes:F

    .line 273
    iget v0, p0, Lcom/htc/widget/AnalogClockView;->mMinutes:F

    iget v1, p0, Lcom/htc/widget/AnalogClockView;->mSeconds:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/AnalogClockView;->mMinutes:F

    .line 274
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/widget/AnalogClockView;->mHour:F

    .line 275
    iget v0, p0, Lcom/htc/widget/AnalogClockView;->mHour:F

    iget v1, p0, Lcom/htc/widget/AnalogClockView;->mMinutes:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/AnalogClockView;->mHour:F

    .line 276
    iget v0, p0, Lcom/htc/widget/AnalogClockView;->mHour:F

    iget-object v1, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/AnalogClockView;->mHour:F

    .line 277
    invoke-virtual {p0}, Lcom/htc/widget/AnalogClockView;->invalidate()V

    .line 278
    return-void
.end method

.method private setBounds()V
    .locals 6

    .prologue
    .line 171
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    if-nez v4, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/AnalogClockView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/AnalogClockView;->getLeft()I

    move-result v5

    sub-int v1, v4, v5

    .line 176
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lcom/htc/widget/AnalogClockView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/AnalogClockView;->getTop()I

    move-result v5

    sub-int v0, v4, v5

    .line 179
    .local v0, "availableHeight":I
    if-ge v1, v0, :cond_c

    .line 180
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    invoke-virtual {v4, v1, v1}, Lcom/htc/widget/AnalogControls;->setPanelSize(II)V

    .line 185
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AnalogClockView;->mDialWidth:I

    .line 187
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/AnalogClockView;->mDialHeight:I

    .line 190
    :cond_2
    div-int/lit8 v2, v1, 0x2

    .line 191
    .local v2, "x":I
    div-int/lit8 v3, v0, 0x2

    .line 193
    .local v3, "y":I
    iput v2, p0, Lcom/htc/widget/AnalogClockView;->mCx:I

    .line 194
    iput v3, p0, Lcom/htc/widget/AnalogClockView;->mCy:I

    .line 197
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 198
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mDialDay:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 200
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mDialNight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 201
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mDialNight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_4
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mHourHandDay:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 206
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mHourHandDay:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_5
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mHourHandNight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 209
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mHourHandNight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_6
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mMinuteHandDay:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 214
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mMinuteHandDay:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_7
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mMinuteHandNight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    .line 217
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mMinuteHandNight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 221
    :cond_8
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mSecondHandDay:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    .line 222
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mSecondHandDay:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_9
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mSecondHandNight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    .line 225
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mSecondHandNight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_a
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mCoverHandDay:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    .line 230
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mCoverHandDay:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    .line 232
    :cond_b
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mCoverHandNight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v4, v4, Lcom/htc/widget/AnalogControls;->mCoverHandNight:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/widget/AnalogClockView;->setBounds(IILandroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 182
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_c
    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    invoke-virtual {v4, v0, v0}, Lcom/htc/widget/AnalogControls;->setPanelSize(II)V

    goto/16 :goto_1
.end method

.method private setBounds(IILandroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 238
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 239
    .local v1, "w":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 240
    .local v0, "h":I
    div-int/lit8 v2, v1, 0x2

    sub-int v2, p1, v2

    div-int/lit8 v3, v0, 0x2

    sub-int v3, p2, v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p1

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v5, p2

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 241
    return-void
.end method

.method private startTickers()V
    .locals 10

    .prologue
    .line 245
    iget-boolean v2, p0, Lcom/htc/widget/AnalogClockView;->mTickerStopped:Z

    if-eqz v2, :cond_0

    .line 246
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget/AnalogClockView;->mTickerStopped:Z

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 248
    .local v0, "now":J
    iget-object v2, p0, Lcom/htc/widget/AnalogClockView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/widget/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    iget v4, p0, Lcom/htc/widget/AnalogClockView;->mUpdateIntervals:I

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v8, p0, Lcom/htc/widget/AnalogClockView;->mUpdateIntervals:I

    int-to-long v8, v8

    rem-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 250
    .end local v0    # "now":J
    :cond_0
    return-void
.end method

.method private stopTickers()V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/htc/widget/AnalogClockView;->mTickerStopped:Z

    if-nez v0, :cond_0

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogClockView;->mTickerStopped:Z

    .line 255
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/AnalogClockView;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 5

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->onTimeTick()V

    .line 162
    iget-object v2, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v3, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/AnalogControls;->updateWeekDate(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 164
    iget v2, p0, Lcom/htc/widget/AnalogClockView;->mHour:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/htc/widget/AnalogClockView;->mMinutes:F

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 165
    .local v1, "timeLocal":I
    iget-object v2, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget v3, p0, Lcom/htc/widget/AnalogClockView;->mHour:F

    float-to-int v3, v3

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/AnalogControls;->getIsDay(II)Z

    move-result v0

    .line 166
    .local v0, "isDay":Z
    iget-object v2, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    invoke-virtual {v2, v0}, Lcom/htc/widget/AnalogControls;->updatePanel(Z)V

    .line 168
    .end local v0    # "isDay":Z
    .end local v1    # "timeLocal":I
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 119
    sget-boolean v0, Lcom/htc/widget/AnalogClockView;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.AnalogClockView"

    const-string/jumbo v1, "init: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    if-nez p1, :cond_1

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_1
    new-instance v0, Lcom/htc/widget/AnalogControls;

    invoke-direct {v0}, Lcom/htc/widget/AnalogControls;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    .line 124
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    invoke-virtual {p0}, Lcom/htc/widget/AnalogClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/widget/AnalogControls;->setControls(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;)V

    .line 127
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->setBounds()V

    .line 128
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->updateTime()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 134
    iget-boolean v1, p0, Lcom/htc/widget/AnalogClockView;->mAttached:Z

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/AnalogClockView;->mAttached:Z

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/htc/widget/AnalogClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/AnalogClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/widget/AnalogClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 142
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->updateTime()V

    .line 143
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->startTickers()V

    .line 144
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 149
    iget-boolean v1, p0, Lcom/htc/widget/AnalogClockView;->mAttached:Z

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/AnalogClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/AnalogClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/AnalogClockView;->mAttached:Z

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->stopTickers()V

    .line 158
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.htc.widget.AnalogClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 289
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/AnalogClockView;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/AnalogClockView;->getLeft()I

    move-result v18

    sub-int v4, v17, v18

    .line 295
    .local v4, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/AnalogClockView;->getBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/AnalogClockView;->getTop()I

    move-result v18

    sub-int v3, v17, v18

    .line 296
    .local v3, "availableHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mHour:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mMinutes:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 297
    .local v16, "timeLocal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mHour:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AnalogControls;->getIsDay(II)Z

    move-result v8

    .line 298
    .local v8, "isDay":Z
    const/4 v14, 0x0

    .line 299
    .local v14, "scaled":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/widget/AnalogClockView;->mChanged:Z

    .line 300
    .local v5, "changed":Z
    if-eqz v5, :cond_2

    .line 301
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/AnalogClockView;->mChanged:Z

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/htc/widget/AnalogControls;->updatePanel(Z)V

    .line 305
    :cond_2
    const/4 v14, 0x1

    .line 306
    int-to-float v0, v4

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mDialWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mDialHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 308
    .local v13, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mCx:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mCy:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mHour:F

    move/from16 v17, v0

    const/high16 v18, 0x41f00000    # 30.0f

    mul-float v10, v17, v18

    .line 316
    .local v10, "r1":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mMinutes:F

    move/from16 v17, v0

    const/high16 v18, 0x40c00000    # 6.0f

    mul-float v11, v17, v18

    .line 317
    .local v11, "r2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mSeconds:F

    move/from16 v17, v0

    const/high16 v18, 0x40c00000    # 6.0f

    mul-float v12, v17, v18

    .line 320
    .local v12, "r3":F
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/htc/widget/AnalogControls;->mHourHandDay:Landroid/graphics/drawable/Drawable;

    .line 321
    .local v7, "hourHand":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v7, :cond_3

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mCx:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mCy:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 324
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    :cond_3
    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/htc/widget/AnalogControls;->mMinuteHandDay:Landroid/graphics/drawable/Drawable;

    .line 330
    .local v9, "minuteHand":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v9, :cond_4

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mCx:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mCy:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v11, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 333
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 338
    :cond_4
    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/htc/widget/AnalogControls;->mSecondHandDay:Landroid/graphics/drawable/Drawable;

    .line 339
    .local v15, "secondHand":Landroid/graphics/drawable/Drawable;
    :goto_3
    if-eqz v15, :cond_5

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mCx:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/AnalogClockView;->mCy:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 342
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 347
    :cond_5
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/widget/AnalogControls;->mCoverHandDay:Landroid/graphics/drawable/Drawable;

    .line 348
    .local v6, "coverHand":Landroid/graphics/drawable/Drawable;
    :goto_4
    if-eqz v6, :cond_6

    .line 349
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 352
    :cond_6
    if-eqz v14, :cond_0

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 320
    .end local v6    # "coverHand":Landroid/graphics/drawable/Drawable;
    .end local v7    # "hourHand":Landroid/graphics/drawable/Drawable;
    .end local v9    # "minuteHand":Landroid/graphics/drawable/Drawable;
    .end local v15    # "secondHand":Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/htc/widget/AnalogControls;->mHourHandNight:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 329
    .restart local v7    # "hourHand":Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/htc/widget/AnalogControls;->mMinuteHandNight:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 338
    .restart local v9    # "minuteHand":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/htc/widget/AnalogControls;->mSecondHandNight:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 347
    .restart local v15    # "secondHand":Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/widget/AnalogControls;->mCoverHandNight:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 359
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 360
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 361
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 362
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 364
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 365
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 367
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    .line 368
    int-to-float v7, v6

    iget v8, p0, Lcom/htc/widget/AnalogClockView;->mDialWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 371
    :cond_0
    if-eqz v1, :cond_1

    .line 372
    int-to-float v7, v2

    iget v8, p0, Lcom/htc/widget/AnalogClockView;->mDialHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 375
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 376
    .local v3, "scale":F
    iget v7, p0, Lcom/htc/widget/AnalogClockView;->mDialWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1}, Lcom/htc/widget/AnalogClockView;->resolveSize(II)I

    move-result v7

    iget v8, p0, Lcom/htc/widget/AnalogClockView;->mDialHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2}, Lcom/htc/widget/AnalogClockView;->resolveSize(II)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/AnalogClockView;->setMeasuredDimension(II)V

    .line 378
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 382
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 383
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->setBounds()V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AnalogClockView;->mChanged:Z

    .line 385
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 3
    .param p1, "dateFormat"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 105
    sget-boolean v0, Lcom/htc/widget/AnalogClockView;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.AnalogClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDateFormat~ dateFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/AnalogClockView;->mDateFormat:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/htc/widget/AnalogClockView;->mControls:Lcom/htc/widget/AnalogControls;

    iget-object v1, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/htc/widget/AnalogClockView;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AnalogControls;->updateWeekDate(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "timezone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 88
    sget-boolean v1, Lcom/htc/widget/AnalogClockView;->DEBUG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "com.htc.widget.AnalogClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTimeZone~ timezone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 90
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 94
    .local v0, "tz":Ljava/util/TimeZone;
    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AnalogClockView;->mCalendar:Ljava/util/Calendar;

    .line 95
    invoke-direct {p0}, Lcom/htc/widget/AnalogClockView;->updateTime()V

    .line 96
    return-void

    .line 92
    .end local v0    # "tz":Ljava/util/TimeZone;
    :cond_2
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .restart local v0    # "tz":Ljava/util/TimeZone;
    goto :goto_0
.end method
