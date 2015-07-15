.class public Lcom/htc/widget/FlipTabView;
.super Ljava/lang/Object;
.source "FlipTabView.java"


# instance fields
.field private final ANIMATION_DURATION:I

.field private mAmPm:I

.field private mAmPmRes:[I

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mClearRunnable:Ljava/lang/Runnable;

.field private mClockWeatherClockTabDownRes:I

.field private mClockWeatherClockTabShadow:I

.field private mClockWeatherClockTabUpRes:I

.field private mDigital:Lcom/htc/widget/FlipDigitalView;

.field private mDigitalDown:Lcom/htc/widget/FlipDigitalView;

.field private mDigitalNext:Lcom/htc/widget/FlipDigitalView;

.field private mDigitalUp:Lcom/htc/widget/FlipDigitalView;

.field private mDownContainer:Landroid/view/ViewGroup;

.field private mDownTab:Landroid/widget/ImageView;

.field private mFlipClock:Landroid/view/View;

.field private mFlipRes:Landroid/content/res/Resources;

.field private mHandler:Landroid/os/Handler;

.field private mHour:I

.field private mMask:Landroid/widget/ImageView;

.field private mNumberRes:[I

.field private mTab:Landroid/widget/ImageView;

.field private mUpContainer:Landroid/view/ViewGroup;

.field private mUpNext:Landroid/view/ViewGroup;

.field private mUpTab:Landroid/widget/ImageView;

.field private mUpTabContainer:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V
    .locals 1
    .param p1, "flipClock"    # Landroid/view/View;
    .param p2, "numberRes"    # [I
    .param p3, "ampmRes"    # [I
    .param p4, "flipRes"    # Landroid/content/res/Resources;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/htc/widget/FlipTabView;->ANIMATION_DURATION:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/FlipTabView;->mHour:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/FlipTabView;->mAmPm:I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/htc/widget/FlipTabView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/FlipTabView$1;-><init>(Lcom/htc/widget/FlipTabView;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 219
    new-instance v0, Lcom/htc/widget/FlipTabView$2;

    invoke-direct {v0, p0}, Lcom/htc/widget/FlipTabView$2;-><init>(Lcom/htc/widget/FlipTabView;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mClearRunnable:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    .line 53
    iput-object p2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    .line 54
    iput-object p3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    .line 55
    iput-object p4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/FlipTabView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/FlipTabView;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/widget/FlipTabView;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/widget/FlipTabView;->endAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/FlipTabView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/FlipTabView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/FlipTabView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/FlipTabView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/FlipTabView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/FlipTabView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;
    .locals 1
    .param p0, "x0"    # Lcom/htc/widget/FlipTabView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    return-object v0
.end method

.method private endAnimation()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    iget v1, p0, Lcom/htc/widget/FlipTabView;->mHour:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    .line 215
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    iget v1, p0, Lcom/htc/widget/FlipTabView;->mAmPm:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/FlipDigitalView;->setAmPm(I)V

    .line 216
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mClearRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    return-void
.end method

.method private getRotationDown(FLandroid/view/animation/Interpolator;)Lcom/htc/widget/Rotate3dAnimation;
    .locals 10
    .param p1, "upCenterX"    # F
    .param p2, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 196
    new-instance v0, Lcom/htc/widget/Rotate3dAnimation;

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v5, 0x439b0000    # 310.0f

    move v3, p1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 197
    .local v0, "rotationDown":Lcom/htc/widget/Rotate3dAnimation;
    invoke-virtual {v0, v8, v9}, Lcom/htc/widget/Rotate3dAnimation;->setStartOffset(J)V

    .line 198
    invoke-virtual {v0, v8, v9}, Lcom/htc/widget/Rotate3dAnimation;->setDuration(J)V

    .line 199
    invoke-virtual {v0, v6}, Lcom/htc/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 200
    invoke-virtual {v0, p2}, Lcom/htc/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 202
    return-object v0
.end method

.method private getRotationUp(FFLandroid/view/animation/Interpolator;)Lcom/htc/widget/Rotate3dAnimation;
    .locals 7
    .param p1, "upCenterX"    # F
    .param p2, "upCenterY"    # F
    .param p3, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 188
    new-instance v0, Lcom/htc/widget/Rotate3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x439b0000    # 310.0f

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 189
    .local v0, "rotationUp":Lcom/htc/widget/Rotate3dAnimation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/Rotate3dAnimation;->setDuration(J)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/Rotate3dAnimation;->setFillAfter(Z)V

    .line 191
    invoke-virtual {v0, p3}, Lcom/htc/widget/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 192
    return-object v0
.end method

.method private setHourDigitControls(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 109
    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    .line 110
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setHourControls(Landroid/os/Bundle;)V

    .line 111
    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    .line 112
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setHourUpControls(Landroid/os/Bundle;)V

    .line 113
    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    .line 114
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setHourDownControls(Landroid/os/Bundle;)V

    .line 115
    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    .line 116
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setHourUpNextControls(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method private setHourTabControls(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "left_up_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    .line 72
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "left_down_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mDownContainer:Landroid/view/ViewGroup;

    .line 73
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "left_up_next"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    .line 74
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string v2, "hour_mask"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    .line 75
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "left_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "left_up_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "left_up_tab_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpTabContainer:Landroid/widget/ImageView;

    .line 78
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "left_down_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;

    .line 79
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 85
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v1, "clock_weather_clock_tab_up_left"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabUpRes:I

    .line 86
    const-string v1, "clock_weather_clock_tab_down_left"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabDownRes:I

    .line 87
    return-void
.end method

.method private setMinuteTabControls(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_up_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    .line 91
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_down_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mDownContainer:Landroid/view/ViewGroup;

    .line 92
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_up_next"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    .line 93
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "minute_mask"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    .line 95
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_up_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;

    .line 96
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_up_tab_container"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mUpTabContainer:Landroid/widget/ImageView;

    .line 97
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    const-string/jumbo v2, "right_down_tab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mTab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 104
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v1, "clock_weather_clock_tab_up_right"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabUpRes:I

    .line 105
    const-string v1, "clock_weather_clock_tab_down_right"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabDownRes:I

    .line 106
    return-void
.end method

.method private startAimation()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabShadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpTabContainer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabUpRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabUpRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabDownRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    return-void
.end method


# virtual methods
.method public applyRotation(IIFFLandroid/view/animation/Interpolator;Landroid/view/animation/TranslateAnimation;)V
    .locals 8
    .param p1, "oldHour"    # I
    .param p2, "hour"    # I
    .param p3, "upCenterX"    # F
    .param p4, "upCenterY"    # F
    .param p5, "i"    # Landroid/view/animation/Interpolator;
    .param p6, "trans"    # Landroid/view/animation/TranslateAnimation;

    .prologue
    .line 171
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/FlipTabView;->applyRotation(IIIFFLandroid/view/animation/Interpolator;Landroid/view/animation/TranslateAnimation;)V

    .line 172
    return-void
.end method

.method public applyRotation(IIIFFLandroid/view/animation/Interpolator;Landroid/view/animation/TranslateAnimation;)V
    .locals 2
    .param p1, "oldHour"    # I
    .param p2, "hour"    # I
    .param p3, "ampm"    # I
    .param p4, "upCenterX"    # F
    .param p5, "upCenterY"    # F
    .param p6, "i"    # Landroid/view/animation/Interpolator;
    .param p7, "trans"    # Landroid/view/animation/TranslateAnimation;

    .prologue
    .line 157
    iput p2, p0, Lcom/htc/widget/FlipTabView;->mHour:I

    .line 158
    iput p3, p0, Lcom/htc/widget/FlipTabView;->mAmPm:I

    .line 159
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    .line 160
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p3}, Lcom/htc/widget/FlipDigitalView;->setAmPm(I)V

    .line 161
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    .line 162
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    .line 163
    invoke-direct {p0}, Lcom/htc/widget/FlipTabView;->startAimation()V

    .line 164
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p4, p5, p6}, Lcom/htc/widget/FlipTabView;->getRotationUp(FFLandroid/view/animation/Interpolator;)Lcom/htc/widget/Rotate3dAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDownContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, p4, p6}, Lcom/htc/widget/FlipTabView;->getRotationDown(FLandroid/view/animation/Interpolator;)Lcom/htc/widget/Rotate3dAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    invoke-virtual {v0, p7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    return-void
.end method

.method public clearAnimation(I)V
    .locals 1
    .param p1, "digit"    # I

    .prologue
    .line 152
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/FlipTabView;->clearAnimation(II)V

    .line 153
    return-void
.end method

.method public clearAnimation(II)V
    .locals 2
    .param p1, "digit"    # I
    .param p2, "ampm"    # I

    .prologue
    const/4 v1, 0x4

    .line 141
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 142
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDownContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 143
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 144
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    .line 145
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p2}, Lcom/htc/widget/FlipDigitalView;->setAmPm(I)V

    .line 147
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mUpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 149
    return-void
.end method

.method public setAmPm(I)V
    .locals 1
    .param p1, "ampm"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/htc/widget/FlipTabView;->mAmPm:I

    .line 132
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setAmPm(I)V

    .line 133
    return-void
.end method

.method public setHourControls(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const-string v0, "clock_weather_clock_tab_shadow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabShadow:I

    .line 60
    invoke-direct {p0, p1}, Lcom/htc/widget/FlipTabView;->setHourDigitControls(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/htc/widget/FlipTabView;->setHourTabControls(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public setMinuteControls(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const-string v0, "clock_weather_clock_tab_shadow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FlipTabView;->mClockWeatherClockTabShadow:I

    .line 66
    invoke-virtual {p0, p1}, Lcom/htc/widget/FlipTabView;->setMinuteDigitControls(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/htc/widget/FlipTabView;->setMinuteTabControls(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public setMinuteDigitControls(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 120
    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    .line 121
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setMinuteControls(Landroid/os/Bundle;)V

    .line 122
    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    .line 123
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setMinuteUpControls(Landroid/os/Bundle;)V

    .line 124
    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    .line 125
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setMinuteDownControls(Landroid/os/Bundle;)V

    .line 126
    new-instance v0, Lcom/htc/widget/FlipDigitalView;

    iget-object v1, p0, Lcom/htc/widget/FlipTabView;->mFlipClock:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/FlipTabView;->mNumberRes:[I

    iget-object v3, p0, Lcom/htc/widget/FlipTabView;->mAmPmRes:[I

    iget-object v4, p0, Lcom/htc/widget/FlipTabView;->mFlipRes:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/widget/FlipDigitalView;-><init>(Landroid/view/View;[I[ILandroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    .line 127
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setMinuteUpNextControls(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "digit"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/htc/widget/FlipTabView;->mHour:I

    .line 137
    iget-object v0, p0, Lcom/htc/widget/FlipTabView;->mDigital:Lcom/htc/widget/FlipDigitalView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FlipDigitalView;->setValue(I)V

    .line 138
    return-void
.end method
