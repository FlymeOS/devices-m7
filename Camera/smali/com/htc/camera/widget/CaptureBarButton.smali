.class public Lcom/htc/camera/widget/CaptureBarButton;
.super Landroid/view/View;
.source "CaptureBarButton.java"


# instance fields
.field private m_BackgroundScale:F

.field private m_BackgroundScalingStartTime:J

.field private m_BackgroundScalingState:I

.field private m_BackgroundStartScaling:F

.field private m_IconDrawable:Landroid/graphics/drawable/Drawable;

.field private m_IconScale:F

.field private m_IconScalingStartTime:J

.field private m_IconScalingState:I

.field private m_IconStartScaling:F

.field private m_IsAutoColorOn:Z

.field private m_IsAutoScalingEnabled:Z

.field private m_IsPressed:Z

.field private m_StaticIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    .line 30
    iput v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    .line 33
    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    .line 35
    iput v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingState:I

    .line 37
    iput-boolean v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoColorOn:Z

    .line 38
    iput-boolean v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoScalingEnabled:Z

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/htc/camera/widget/CaptureBarButton;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private prepareBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .prologue
    const-wide/32 v7, 0x3938700

    const v6, 0x4c64e1c0    # 6.0E7f

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3fa66666    # 1.3f

    .line 239
    iget v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    packed-switch v0, :pswitch_data_0

    .line 281
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 282
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 285
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 286
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 287
    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    return-void

    .line 243
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 244
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 248
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingStartTime:J

    sub-long/2addr v0, v2

    .line 249
    cmp-long v2, v0, v7

    if-gez v2, :cond_0

    .line 251
    iget v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundStartScaling:F

    iget v3, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundStartScaling:F

    sub-float v3, v4, v3

    long-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    .line 252
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 259
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 260
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 261
    goto :goto_0

    .line 256
    :cond_0
    iput v4, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    .line 257
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    goto :goto_1

    .line 265
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingStartTime:J

    sub-long/2addr v0, v2

    .line 266
    cmp-long v2, v0, v7

    if-gez v2, :cond_1

    .line 268
    iget v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundStartScaling:F

    iget v3, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundStartScaling:F

    sub-float/2addr v3, v5

    long-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    .line 269
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 276
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 277
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 278
    goto/16 :goto_0

    .line 273
    :cond_1
    iput v5, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    goto :goto_2

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .prologue
    const-wide/32 v7, 0x3938700

    const v6, 0x4c64e1c0    # 6.0E7f

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    .line 297
    iget v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingState:I

    packed-switch v0, :pswitch_data_0

    .line 339
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 340
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 344
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 345
    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    return-void

    .line 301
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 302
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 306
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingStartTime:J

    sub-long/2addr v0, v2

    .line 307
    cmp-long v2, v0, v7

    if-gez v2, :cond_0

    .line 309
    iget v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconStartScaling:F

    iget v3, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconStartScaling:F

    sub-float/2addr v3, v4

    long-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    sub-float v0, v2, v0

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    .line 310
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 317
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 318
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 319
    goto :goto_0

    .line 314
    :cond_0
    iput v4, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    .line 315
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingState:I

    goto :goto_1

    .line 323
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingStartTime:J

    sub-long/2addr v0, v2

    .line 324
    cmp-long v2, v0, v7

    if-gez v2, :cond_1

    .line 326
    iget v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconStartScaling:F

    iget v3, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconStartScaling:F

    sub-float v3, v5, v3

    long-to-float v0, v0

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    .line 327
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 334
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 335
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 336
    goto/16 :goto_0

    .line 331
    :cond_1
    iput v5, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingState:I

    goto :goto_2

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final cancelBackgroundScaling()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelBackgroundScaling(Z)V

    .line 57
    return-void
.end method

.method public final cancelBackgroundScaling(Z)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 60
    iget v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    .line 70
    iget v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundStartScaling:F

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingStartTime:J

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 81
    :goto_1
    :pswitch_0
    return-void

    .line 65
    :pswitch_1
    if-eqz p1, :cond_0

    goto :goto_1

    .line 76
    :cond_1
    iput v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundStartScaling:F

    .line 77
    iput v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final cancelIconScaling()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelIconScaling(Z)V

    .line 89
    return-void
.end method

.method public final cancelIconScaling(Z)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    iget v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingState:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :cond_0
    :pswitch_0
    if-eqz p1, :cond_1

    .line 102
    iget v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconStartScaling:F

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingState:I

    .line 104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingStartTime:J

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 113
    :goto_1
    :pswitch_1
    return-void

    .line 97
    :pswitch_2
    if-eqz p1, :cond_0

    goto :goto_1

    .line 108
    :cond_1
    iput v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconStartScaling:F

    .line 109
    iput v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScale:F

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconScalingState:I

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 127
    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getWidth()I

    move-result v4

    if-gt v2, v4, :cond_0

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getHeight()I

    move-result v2

    if-le v3, v2, :cond_3

    .line 129
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoScalingEnabled:Z

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelBackgroundScaling()V

    .line 132
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelIconScaling()V

    .line 134
    :cond_1
    iput-boolean v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    move v0, v1

    .line 163
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 164
    return v0

    .line 139
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 142
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoScalingEnabled:Z

    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->scaleUpBackground()V

    .line 147
    :cond_4
    iput-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    goto :goto_0

    .line 151
    :pswitch_2
    iget-boolean v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoScalingEnabled:Z

    if-eqz v2, :cond_5

    .line 153
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelBackgroundScaling()V

    .line 154
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelIconScaling()V

    .line 156
    :cond_5
    iput-boolean v1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, v0}, Lcom/htc/camera/widget/CaptureBarButton;->prepareBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_StaticIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getWidth()I

    move-result v0

    .line 184
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getWidth()I

    move-result v1

    .line 185
    iget-object v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_StaticIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 186
    iget-object v3, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_StaticIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 187
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 188
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 189
    iget-object v4, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_StaticIconDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_StaticIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/htc/camera/widget/CaptureBarButton;->prepareIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoColorOn:Z

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Lcom/htc/camera/widget/CaptureBarButton$1;

    invoke-direct {v2, p0, p1}, Lcom/htc/camera/widget/CaptureBarButton$1;-><init>(Lcom/htc/camera/widget/CaptureBarButton;Landroid/graphics/Canvas;)V

    invoke-static {v0, p1, v1, v2}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;)V

    .line 211
    :cond_2
    :goto_0
    return-void

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    .line 221
    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoScalingEnabled:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelBackgroundScaling()V

    .line 224
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelIconScaling()V

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoColorOn:Z

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 229
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 230
    return-void
.end method

.method public final scaleUpBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 375
    iget v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 378
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingStartTime:J

    .line 379
    iput v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    .line 380
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundStartScaling:F

    .line 381
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingStartTime:J

    .line 385
    iput v2, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScalingState:I

    .line 386
    iget v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundScale:F

    iput v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_BackgroundStartScaling:F

    .line 387
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setAutoColorOn(Z)V
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoColorOn:Z

    if-eq v0, p1, :cond_0

    .line 399
    iput-boolean p1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoColorOn:Z

    .line 400
    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 403
    :cond_0
    return-void
.end method

.method public final setAutoScalingEnabled(Z)V
    .locals 0

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoScalingEnabled:Z

    .line 411
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 419
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    if-eqz v0, :cond_1

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsPressed:Z

    .line 422
    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoScalingEnabled:Z

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelBackgroundScaling()V

    .line 425
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->cancelIconScaling()V

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IsAutoColorOn:Z

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 430
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 431
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 440
    iput-object p1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_IconDrawable:Landroid/graphics/drawable/Drawable;

    .line 441
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 443
    :cond_0
    return-void
.end method

.method public final setIconResource(I)V
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 447
    return-void
.end method

.method public final setStaticIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_StaticIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 456
    iput-object p1, p0, Lcom/htc/camera/widget/CaptureBarButton;->m_StaticIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 457
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->invalidate()V

    .line 459
    :cond_0
    return-void
.end method

.method public final setStaticIconResource(I)V
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/htc/camera/widget/CaptureBarButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/camera/widget/CaptureBarButton;->setStaticIcon(Landroid/graphics/drawable/Drawable;)V

    .line 463
    return-void
.end method
