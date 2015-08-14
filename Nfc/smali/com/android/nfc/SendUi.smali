.class public Lcom/android/nfc/SendUi;
.super Ljava/lang/Object;
.source "SendUi.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/TimeAnimator$TimeListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/SendUi$ScreenshotTask;,
        Lcom/android/nfc/SendUi$Callback;
    }
.end annotation


# static fields
.field static final BLACK_LAYER_ALPHA_DOWN_RANGE:[F

.field static final BLACK_LAYER_ALPHA_UP_RANGE:[F

.field static final FADE_IN_DURATION_MS:I = 0xfa

.field static final FADE_IN_START_DELAY_MS:I = 0x15e

.field static final FAST_SEND_DURATION_MS:I = 0x15e

.field static final FINISH_SCALE_UP:I = 0x0

.field static final FINISH_SEND_SUCCESS:I = 0x1

.field static final INTERMEDIATE_SCALE:F = 0.6f

.field static final PRE_DURATION_MS:I = 0x15e

.field static final PRE_SCREENSHOT_SCALE:[F

.field static final SCALE_UP_DURATION_MS:I = 0x12c

.field static final SCALE_UP_SCREENSHOT_SCALE:[F

.field static final SEND_SCREENSHOT_SCALE:[F

.field static final SLIDE_OUT_DURATION_MS:I = 0x12c

.field static final SLOW_SEND_DURATION_MS:I = 0x1f40

.field static final STATE_COMPLETE:I = 0x9

.field static final STATE_IDLE:I = 0x0

.field static final STATE_SENDING:I = 0x8

.field static final STATE_W4_NFC_TAP:I = 0x7

.field static final STATE_W4_PRESEND:I = 0x5

.field static final STATE_W4_SCREENSHOT:I = 0x1

.field static final STATE_W4_SCREENSHOT_PRESEND_NFC_TAP_REQUESTED:I = 0x3

.field static final STATE_W4_SCREENSHOT_PRESEND_REQUESTED:I = 0x2

.field static final STATE_W4_SCREENSHOT_THEN_STOP:I = 0x4

.field static final STATE_W4_TOUCH:I = 0x6

.field static final TAG:Ljava/lang/String; = "SendUi"

.field static final TEXT_HINT_ALPHA_DURATION_MS:I = 0x1f4

.field static final TEXT_HINT_ALPHA_RANGE:[F

.field static final TEXT_HINT_ALPHA_START_DELAY_MS:I = 0x12c


# instance fields
.field final mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

.field final mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

.field final mBlackLayer:Landroid/widget/ImageView;

.field final mCallback:Lcom/android/nfc/SendUi$Callback;

.field final mContext:Landroid/content/Context;

.field mDecor:Landroid/view/View;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayMatrix:Landroid/graphics/Matrix;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field final mFastSendAnimator:Landroid/animation/ObjectAnimator;

.field final mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

.field final mFrameCounterAnimator:Landroid/animation/TimeAnimator;

.field final mHardwareAccelerated:Z

.field final mHintAnimator:Landroid/animation/ObjectAnimator;

.field final mLayoutInflater:Landroid/view/LayoutInflater;

.field final mPreAnimator:Landroid/animation/ObjectAnimator;

.field private mReleaseScreenshotHandler:Landroid/os/Handler;

.field private mReleaseScreenshotThread:Landroid/os/HandlerThread;

.field mRenderedFrames:I

.field final mScaleUpAnimator:Landroid/animation/ObjectAnimator;

.field mScreenshotBitmap:Landroid/graphics/Bitmap;

.field final mScreenshotLayout:Landroid/view/View;

.field final mScreenshotView:Landroid/widget/ImageView;

.field final mSlowSendAnimator:Landroid/animation/ObjectAnimator;

.field mState:I

.field final mStatusBarManager:Landroid/app/StatusBarManager;

.field final mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

.field mSurface:Landroid/graphics/SurfaceTexture;

.field mSurfaceHeight:I

.field mSurfaceWidth:I

.field final mTextHint:Landroid/widget/TextView;

.field final mTextRetry:Landroid/widget/TextView;

.field final mTextureView:Landroid/view/TextureView;

.field mToastString:Ljava/lang/String;

.field final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 94
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/SendUi;->PRE_SCREENSHOT_SCALE:[F

    .line 97
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/SendUi;->SEND_SCREENSHOT_SCALE:[F

    .line 101
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/nfc/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    .line 109
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/nfc/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    .line 110
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/nfc/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    .line 112
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/nfc/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    return-void

    .line 94
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 97
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 101
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 109
    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x0
    .end array-data

    .line 110
    :array_4
    .array-data 4
        0x0
        0x3f666666    # 0.9f
    .end array-data

    .line 112
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/SendUi$Callback;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/SendUi$Callback;

    .prologue
    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 201
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    .line 202
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/SendUi;->mCallback:Lcom/android/nfc/SendUi$Callback;

    .line 204
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 205
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 206
    const-string v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mWindowManager:Landroid/view/WindowManager;

    .line 207
    const-string v2, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mDisplay:Landroid/view/Display;

    .line 211
    const-string v2, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mTextureView:Landroid/view/TextureView;

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mTextureView:Landroid/view/TextureView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    .line 233
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-eqz v2, :cond_0

    const/high16 v13, 0x1000000

    .line 236
    .local v13, "hwAccelerationFlags":I
    :goto_0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7d3

    or-int/lit16 v8, v13, 0x400

    or-int/lit16 v8, v8, 0x100

    const/4 v9, -0x1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 247
    new-instance v2, Landroid/animation/TimeAnimator;

    invoke-direct {v2}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 250
    const-string v2, "scaleX"

    sget-object v3, Lcom/android/nfc/SendUi;->PRE_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 251
    .local v16, "preX":Landroid/animation/PropertyValuesHolder;
    const-string v2, "scaleY"

    sget-object v3, Lcom/android/nfc/SendUi;->PRE_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 252
    .local v17, "preY":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    const-string v2, "scaleX"

    sget-object v3, Lcom/android/nfc/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 258
    .local v14, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v2, "scaleY"

    sget-object v3, Lcom/android/nfc/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 259
    .local v15, "postY":Landroid/animation/PropertyValuesHolder;
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 262
    .local v10, "alphaDown":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    const-string v2, "scaleX"

    sget-object v3, Lcom/android/nfc/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 273
    .local v18, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    const-string v2, "scaleY"

    sget-object v3, Lcom/android/nfc/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 275
    .local v19, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    const/4 v4, 0x1

    aput-object v19, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 280
    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 281
    .local v12, "fadeIn":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    const-string v2, "alpha"

    sget-object v3, Lcom/android/nfc/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 288
    .local v11, "alphaUp":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 293
    const-string v2, "alpha"

    sget-object v3, Lcom/android/nfc/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 298
    const-string v2, "alpha"

    sget-object v3, Lcom/android/nfc/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 303
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    const v3, 0x103000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v20

    .line 310
    .local v20, "window":Landroid/view/Window;
    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 311
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 312
    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mDecor:Landroid/view/View;

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-eqz v2, :cond_1

    .line 316
    new-instance v2, Lcom/android/nfc/FireflyRenderer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/nfc/FireflyRenderer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    .line 320
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/SendUi;->mState:I

    .line 322
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mReleaseScreenshotHandler:Landroid/os/Handler;

    .line 323
    new-instance v2, Lcom/android/nfc/SendUi$1;

    const-string v3, "ReleaseScreenshotHandler"

    const/16 v4, 0x13

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/nfc/SendUi$1;-><init>(Lcom/android/nfc/SendUi;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mReleaseScreenshotThread:Landroid/os/HandlerThread;

    .line 329
    return-void

    .line 233
    .end local v10    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "alphaUp":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "fadeIn":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "hwAccelerationFlags":I
    .end local v14    # "postX":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "postY":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "preX":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "preY":Landroid/animation/PropertyValuesHolder;
    .end local v18    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .end local v19    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .end local v20    # "window":Landroid/view/Window;
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 318
    .restart local v10    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    .restart local v11    # "alphaUp":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "fadeIn":Landroid/animation/PropertyValuesHolder;
    .restart local v13    # "hwAccelerationFlags":I
    .restart local v14    # "postX":Landroid/animation/PropertyValuesHolder;
    .restart local v15    # "postY":Landroid/animation/PropertyValuesHolder;
    .restart local v16    # "preX":Landroid/animation/PropertyValuesHolder;
    .restart local v17    # "preY":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "window":Landroid/view/Window;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    goto :goto_1

    .line 259
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 558
    packed-switch p0, :pswitch_data_0

    .line 566
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 560
    :pswitch_0
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 562
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 564
    :pswitch_2
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method createScreenshot()Landroid/graphics/Bitmap;
    .locals 23

    .prologue
    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplay:Landroid/view/Display;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x112004f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 612
    .local v7, "hasNavBar":Z
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v6, v0, [F

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v6, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v6, v20

    .line 613
    .local v6, "dims":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplay:Landroid/view/Display;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getRotation()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/nfc/SendUi;->getDegreesForRotation(I)F

    move-result v5

    .line 614
    .local v5, "degrees":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050010

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 618
    .local v19, "statusBarHeight":I
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050011

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 620
    .local v8, "navBarHeight":I
    :goto_0
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050012

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 623
    .local v9, "navBarHeightLandscape":I
    :goto_1
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050013

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 626
    .local v10, "navBarWidth":I
    :goto_2
    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-lez v20, :cond_4

    const/4 v15, 0x1

    .line 627
    .local v15, "requiresRotation":Z
    :goto_3
    const-string v20, "SendUi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "requiresRotation = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-eqz v15, :cond_0

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Matrix;->reset()V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    neg-float v0, v5

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 633
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget v21, v6, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    aput v21, v6, v20

    .line 634
    const/16 v20, 0x1

    const/16 v21, 0x1

    aget v21, v6, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    aput v21, v6, v20

    .line 637
    :cond_0
    const/16 v20, 0x0

    aget v20, v6, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v6, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 639
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_5

    .line 640
    const-string v20, "SendUi"

    const-string v21, "Failed to get screenshot"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/16 v20, 0x0

    .line 682
    :goto_4
    return-object v20

    .line 618
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "navBarHeight":I
    .end local v9    # "navBarHeightLandscape":I
    .end local v10    # "navBarWidth":I
    .end local v15    # "requiresRotation":Z
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 620
    .restart local v8    # "navBarHeight":I
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 623
    .restart local v9    # "navBarHeightLandscape":I
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 626
    .restart local v10    # "navBarWidth":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    .line 644
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "requiresRotation":Z
    :cond_5
    if-eqz v15, :cond_6

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 648
    .local v18, "ss":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 649
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 650
    const/high16 v20, 0x43b40000    # 360.0f

    sub-float v20, v20, v5

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 651
    const/16 v20, 0x0

    aget v20, v6, v20

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    const/16 v21, 0x1

    aget v21, v6, v21

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 652
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 654
    move-object/from16 v3, v18

    .line 661
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v18    # "ss":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v12, 0x0

    .line 662
    .local v12, "newLeft":I
    move/from16 v13, v19

    .line 663
    .local v13, "newTop":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 664
    .local v14, "newWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 665
    .local v11, "newHeight":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .line 666
    .local v16, "smallestWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43200000    # 160.0f

    div-float v20, v20, v21

    div-float v17, v16, v20

    .line 667
    .local v17, "smallestWidthDp":F
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 669
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v19

    sub-int v11, v20, v8

    .line 680
    :goto_5
    invoke-static {v3, v12, v13, v14, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v20, v3

    .line 682
    goto/16 :goto_4

    .line 673
    :cond_7
    const v20, 0x4415c000    # 599.0f

    cmpl-float v20, v17, v20

    if-lez v20, :cond_8

    .line 674
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v19

    sub-int v11, v20, v9

    goto :goto_5

    .line 676
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v11, v20, v19

    .line 677
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v14, v20, v10

    goto :goto_5
.end method

.method dismiss()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 530
    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 552
    :goto_0
    return-void

    .line 534
    :cond_0
    iput v2, p0, Lcom/android/nfc/SendUi;->mState:I

    .line 535
    iput-object v4, p0, Lcom/android/nfc/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 536
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 537
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 538
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 539
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 540
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 541
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 542
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 543
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 544
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/nfc/SendUi;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 545
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 546
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mReleaseScreenshotHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/SendUi;->mReleaseScreenshotThread:Landroid/os/HandlerThread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    iput-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 548
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 551
    :cond_1
    iput-object v4, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    goto :goto_0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 824
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 794
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 795
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mCallback:Lcom/android/nfc/SendUi$Callback;

    invoke-interface {v1}, Lcom/android/nfc/SendUi$Callback;->onCanceled()V

    .line 797
    const/4 v1, 0x1

    .line 803
    :goto_0
    return v1

    .line 798
    :cond_0
    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/SendUi;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 803
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 809
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public finish(I)V
    .locals 13
    .param p1, "finishMode"    # I

    .prologue
    .line 461
    iget v9, p0, Lcom/android/nfc/SendUi;->mState:I

    packed-switch v9, :pswitch_data_0

    .line 487
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    if-eqz v9, :cond_0

    .line 488
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    invoke-virtual {v9}, Lcom/android/nfc/FireflyRenderer;->stop()V

    .line 491
    :cond_0
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    .line 495
    .local v2, "currentScale":F
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    .line 497
    .local v1, "currentAlpha":F
    if-nez p1, :cond_2

    .line 498
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 501
    .local v7, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 503
    .local v8, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 505
    .local v6, "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 507
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    .line 526
    .end local v6    # "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    :cond_1
    :goto_0
    const/16 v9, 0x9

    iput v9, p0, Lcom/android/nfc/SendUi;->mState:I

    .line 527
    .end local v1    # "currentAlpha":F
    .end local v2    # "currentScale":F
    :goto_1
    :pswitch_0
    return-void

    .line 469
    :pswitch_1
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_1

    .line 472
    :pswitch_2
    const-string v9, "SendUi"

    const-string v10, "Unexpected call to finish() in STATE_W4_SCREENSHOT_THEN_STOP"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 478
    :pswitch_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/nfc/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 479
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_1

    .line 508
    .restart local v1    # "currentAlpha":F
    .restart local v2    # "currentScale":F
    :cond_2
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 510
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 512
    .local v4, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 514
    .local v5, "postY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 516
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 519
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 521
    .local v3, "fadeIn":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 523
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 524
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 519
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public finishAndToast(ILjava/lang/String;)V
    .locals 0
    .param p1, "finishMode"    # I
    .param p2, "toast"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p2, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/nfc/SendUi;->finish(I)V

    .line 457
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 900
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 896
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 707
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 690
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_2

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/SendUi;->dismiss()V

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_3

    .line 697
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 698
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 699
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_1

    .line 700
    iget-boolean v0, p0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 701
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    iget-object v1, p0, Lcom/android/nfc/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/nfc/SendUi;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/nfc/SendUi;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/FireflyRenderer;->start(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 710
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 686
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 834
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 876
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 854
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 881
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/SendUi;->mRenderedFrames:I

    .line 749
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 750
    iput-object p1, p0, Lcom/android/nfc/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 751
    iput p2, p0, Lcom/android/nfc/SendUi;->mSurfaceWidth:I

    .line 752
    iput p3, p0, Lcom/android/nfc/SendUi;->mSurfaceHeight:I

    .line 754
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 765
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 759
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 769
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 715
    iget v0, p0, Lcom/android/nfc/SendUi;->mRenderedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/SendUi;->mRenderedFrames:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 725
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 723
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 729
    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 741
    :goto_0
    return v0

    .line 732
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/nfc/SendUi;->mState:I

    .line 734
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 737
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 738
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 740
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mCallback:Lcom/android/nfc/SendUi$Callback;

    invoke-interface {v0}, Lcom/android/nfc/SendUi$Callback;->onSendConfirmed()V

    .line 741
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 859
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 867
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 891
    const/4 v0, 0x0

    return-object v0
.end method

.method public showPreSend(Z)V
    .locals 9
    .param p1, "promptToNfcTap"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 344
    iget v4, p0, Lcom/android/nfc/SendUi;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 365
    :pswitch_0
    const-string v2, "SendUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected showPreSend() in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/SendUi;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    return-void

    .line 346
    :pswitch_1
    const-string v2, "SendUi"

    const-string v3, "Unexpected showPreSend() in STATE_IDLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :pswitch_2
    if-eqz p1, :cond_0

    .line 352
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_0

    .line 354
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_0

    .line 359
    :pswitch_3
    const-string v2, "SendUi"

    const-string v3, "Unexpected showPreSend() in STATE_W4_SCREENSHOT_PRESEND_REQUESTED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :pswitch_4
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 371
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 374
    .local v1, "statusBarHeight":I
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 376
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 377
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 379
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 380
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 382
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 384
    if-eqz p1, :cond_2

    .line 385
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 390
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 399
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 401
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_1

    .line 411
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 416
    :goto_2
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mDecor:Landroid/view/View;

    iget-object v6, p0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 420
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    .line 422
    iget-boolean v4, p0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-nez v4, :cond_1

    .line 423
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 425
    :cond_1
    if-eqz p1, :cond_3

    :goto_3
    iput v2, p0, Lcom/android/nfc/SendUi;->mState:I

    goto/16 :goto_0

    .line 387
    .end local v0    # "orientation":I
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 403
    .restart local v0    # "orientation":I
    :pswitch_5
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 407
    :pswitch_6
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    :cond_3
    move v2, v3

    .line 425
    goto :goto_3

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 401
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public showSendHint()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 772
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 775
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 779
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 780
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const v3, 0x3f666666    # 0.9f

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 788
    .local v0, "alphaUp":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 789
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 790
    return-void
.end method

.method public showStartSend()V
    .locals 11

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 430
    iget v5, p0, Lcom/android/nfc/SendUi;->mState:I

    if-ge v5, v6, :cond_0

    .line 451
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    .line 436
    .local v2, "currentScale":F
    const-string v5, "scaleX"

    new-array v6, v10, [F

    aput v2, v6, v7

    aput v9, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 438
    .local v3, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleY"

    new-array v6, v10, [F

    aput v2, v6, v7

    aput v9, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 441
    .local v4, "postY":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 443
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    .line 444
    .local v1, "currentAlpha":F
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    cmpl-float v5, v1, v9

    if-lez v5, :cond_1

    .line 445
    const-string v5, "alpha"

    new-array v6, v10, [F

    aput v1, v6, v7

    aput v9, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 447
    .local v0, "alphaDown":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 448
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 450
    .end local v0    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public takeScreenshot()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mReleaseScreenshotHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/SendUi;->mReleaseScreenshotThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/SendUi;->mState:I

    .line 339
    new-instance v0, Lcom/android/nfc/SendUi$ScreenshotTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/SendUi$ScreenshotTask;-><init>(Lcom/android/nfc/SendUi;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/SendUi$ScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
