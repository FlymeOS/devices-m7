.class public final Lcom/htc/server/gesture/GloveInputFilter;
.super Landroid/view/InputFilter;
.source "GloveInputFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GloveInputFilter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFakeGloveEvent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mSavedToolType:I

.field private mVerifyState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManagerService"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 17
    iput-boolean v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mFakeGloveEvent:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 19
    iput v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    .line 20
    iput v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    .line 25
    iput-object p1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/gesture/GloveInputFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/gesture/GloveInputFilter;

    .prologue
    .line 13
    iget v0, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/server/gesture/GloveInputFilter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/htc/server/gesture/GloveInputFilter;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/server/gesture/GloveInputFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/gesture/GloveInputFilter;

    .prologue
    .line 13
    iget v0, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/server/gesture/GloveInputFilter;)Lcom/android/server/input/InputManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/htc/server/gesture/GloveInputFilter;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object v0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 10
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 32
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 33
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 34
    .local v0, "action":I
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 36
    .local v3, "toolType":I
    iget-boolean v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mFakeGloveEvent:Z

    if-eqz v6, :cond_0

    .line 37
    const/4 v3, 0x5

    .line 40
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_3

    .line 87
    :cond_2
    const-string v4, "GloveInputFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mVerifyState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " toolType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_3
    return-void

    .line 42
    :pswitch_0
    iget v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-nez v6, :cond_4

    .line 43
    iput v3, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    .line 44
    iput v4, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    .line 46
    iget-object v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_1

    .line 47
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 49
    :cond_4
    iget v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-ne v6, v7, :cond_1

    .line 50
    iget v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    if-ne v6, v3, :cond_6

    .line 52
    const/4 v6, 0x5

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 53
    .local v1, "isGloveMode":Z
    :goto_1
    iget-object v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    .line 54
    iput v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    goto :goto_0

    .end local v1    # "isGloveMode":Z
    :cond_5
    move v1, v5

    .line 52
    goto :goto_1

    .line 56
    :cond_6
    iget-object v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    .line 57
    iput v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    goto :goto_0

    .line 62
    :pswitch_1
    iget v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-ne v6, v4, :cond_1

    .line 63
    iget v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    if-ne v6, v3, :cond_7

    .line 64
    iput v7, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    .line 66
    iget-object v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/htc/server/gesture/GloveInputFilter$1;

    invoke-direct {v6, p0}, Lcom/htc/server/gesture/GloveInputFilter$1;-><init>(Lcom/htc/server/gesture/GloveInputFilter;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 77
    :cond_7
    iget-object v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    .line 78
    iput v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    goto/16 :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFakeGloveEvent(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mFakeGloveEvent:Z

    .line 93
    return-void
.end method
