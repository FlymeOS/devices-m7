.class public abstract Lcom/htc/camera/component/SeekBarUI;
.super Lcom/htc/camera/component/CameraComponent;
.source "SeekBarUI.java"


# instance fields
.field protected m_ControlBar0:Landroid/widget/SeekBar;

.field protected m_ControlBar1:Landroid/widget/SeekBar;

.field private m_CurrentProgress:[I

.field protected m_DecreaseButton0:Landroid/view/View;

.field protected m_DecreaseButton1:Landroid/view/View;

.field protected m_IncreaseButton0:Landroid/view/View;

.field protected m_IncreaseButton1:Landroid/view/View;

.field private m_IsShoterBar:[Z

.field private m_ReceiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_SeekBarBackgroundDrawable:[Landroid/graphics/drawable/Drawable;

.field protected m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

.field protected m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

.field private m_SeekBarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private m_SeekBarMax:[I

.field private m_SeekBarTumbDrawable:[Landroid/graphics/drawable/Drawable;

.field private m_SeekBarVisibility:[I

.field private m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/camera/component/CameraComponent;-><init>(Ljava/lang/String;ZLcom/htc/camera/HTCCamera;)V

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarVisibility:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarMax:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_CurrentProgress:[I

    .line 49
    new-array v0, v1, [Z

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IsShoterBar:[Z

    .line 50
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarTumbDrawable:[Landroid/graphics/drawable/Drawable;

    .line 51
    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarBackgroundDrawable:[Landroid/graphics/drawable/Drawable;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_ReceiverList:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->disableAutoInflateView()V

    .line 60
    const v0, 0x7f0e00ea

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SeekBarUI;->setBaseLayoutId(I)V

    .line 61
    return-void

    .line 46
    :array_0
    .array-data 4
        0x4
        0x4
    .end array-data

    .line 47
    :array_1
    .array-data 4
        0x64
        0x64
    .end array-data

    .line 48
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 49
    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/camera/component/SeekBarUI;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private saveCurrentSeekBarProgress()V
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 308
    if-eqz v0, :cond_0

    .line 310
    iget-object v2, p0, Lcom/htc/camera/component/SeekBarUI;->m_CurrentProgress:[I

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    aput v0, v2, v1

    .line 305
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 313
    :cond_1
    return-void
.end method

.method private updateControlBar()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0}, Lcom/htc/camera/component/SeekBarUI;->updateControlBar(Z)V

    .line 212
    return-void
.end method

.method private updateControlBar(Z)V
    .locals 4

    .prologue
    const v3, 0x7f0a02de

    .line 216
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 219
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI;->m_IsShoterBar:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    .line 220
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI;->m_IsShoterBar:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 229
    sget v1, Lcom/htc/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 234
    :cond_1
    return-void

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method private updateUI()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarVisibility:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarVisibility:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move v1, v2

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 256
    if-eqz v0, :cond_1

    .line 258
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v3, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarBackgroundDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v3, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarTumbDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 261
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 262
    iget-object v3, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarMax:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 263
    iget-object v3, p0, Lcom/htc/camera/component/SeekBarUI;->m_CurrentProgress:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 253
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/htc/camera/component/SeekBarUI;->updateControlBar()V

    goto :goto_0
.end method


# virtual methods
.method protected getSeekBarMax(I)I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarMax:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 291
    const/4 v0, -0x1

    .line 292
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarMax:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method protected getSeekBarProgress(I)I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_CurrentProgress:[I

    aget v0, v0, p1

    return v0
.end method

.method protected hideControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-direct {p0}, Lcom/htc/camera/component/SeekBarUI;->saveCurrentSeekBarProgress()V

    .line 354
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/component/SeekBarUI;->showUI(Landroid/view/View;ZZ)V

    .line 355
    return-void
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-super {p0}, Lcom/htc/camera/component/CameraComponent;->initializeOverride()V

    .line 81
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    .line 83
    const-class v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SeekBarUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/splitcapture/ISplitPhotoController;

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    .line 84
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SplitPhotoController:Lcom/htc/camera/splitcapture/ISplitPhotoController;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No ISplitPhotoController interface"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarVisibility:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 100
    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/component/SeekBarUI;->setSeekBarThumbDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0, v0, v2}, Lcom/htc/camera/component/SeekBarUI;->setSeekBarBackgroud(ILandroid/graphics/drawable/Drawable;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method protected initializeUI()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_ControlBar0:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_ControlBar1:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    .line 111
    const v0, 0x7f0e01ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    .line 112
    const v0, 0x7f0e01f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e01ef

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_ControlBar0:Landroid/widget/SeekBar;

    .line 114
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e01f4

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_ControlBar1:Landroid/widget/SeekBar;

    .line 115
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e01f1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IncreaseButton0:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e01f6

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IncreaseButton1:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel0:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e01f0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_DecreaseButton0:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarControlPanel1:Landroid/widget/RelativeLayout;

    const v3, 0x7f0e01f5

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_DecreaseButton1:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/camera/component/SeekBarUI;->m_ControlBar0:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/camera/component/SeekBarUI;->m_ControlBar1:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const v0, 0x7f0e01ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    const v3, 0x7f0e01f3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 126
    iget-object v3, p0, Lcom/htc/camera/component/SeekBarUI;->m_ReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_ReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->previewSize:Lcom/htc/camera/property/Property;

    new-instance v1, Lcom/htc/camera/component/SeekBarUI$1;

    invoke-direct {v1, p0}, Lcom/htc/camera/component/SeekBarUI$1;-><init>(Lcom/htc/camera/component/SeekBarUI;)V

    invoke-virtual {v0, v1}, Lcom/htc/camera/property/Property;->addChangedCallback(Lcom/htc/camera/property/c;)V

    move v1, v2

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 145
    if-eqz v0, :cond_1

    .line 146
    new-instance v3, Lcom/htc/camera/component/SeekBarUI$2;

    invoke-direct {v3, p0, v1}, Lcom/htc/camera/component/SeekBarUI$2;-><init>(Lcom/htc/camera/component/SeekBarUI;I)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 141
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 165
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_ReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 167
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_ReceiverList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    if-eqz v0, :cond_3

    .line 170
    new-instance v1, Lcom/htc/camera/component/SeekBarUI$3;

    invoke-direct {v1, p0, v2}, Lcom/htc/camera/component/SeekBarUI$3;-><init>(Lcom/htc/camera/component/SeekBarUI;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 182
    :cond_4
    new-instance v0, Lcom/htc/camera/component/SeekBarUI$4;

    invoke-direct {v0, p0}, Lcom/htc/camera/component/SeekBarUI$4;-><init>(Lcom/htc/camera/component/SeekBarUI;)V

    invoke-virtual {p0, v0}, Lcom/htc/camera/component/SeekBarUI;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 197
    invoke-direct {p0}, Lcom/htc/camera/component/SeekBarUI;->updateUI()V

    goto/16 :goto_0
.end method

.method protected onEnteringFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IncreaseButton0:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 360
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_DecreaseButton0:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 361
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IncreaseButton1:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 362
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_DecreaseButton1:Landroid/view/View;

    invoke-virtual {p0, v0, p1, v1}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;I)V

    .line 363
    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IncreaseButton0:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 369
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_DecreaseButton0:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 370
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IncreaseButton1:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 371
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_DecreaseButton1:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V

    .line 373
    return-void
.end method

.method protected abstract onSeekBarProgressChanged(II)V
.end method

.method protected onUIRotationChanged(Lcom/htc/camera/rotate/UIRotation;Lcom/htc/camera/rotate/UIRotation;)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IncreaseButton0:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 379
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_DecreaseButton0:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 380
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IncreaseButton1:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 381
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_DecreaseButton1:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/htc/camera/component/SeekBarUI;->rotateView(Landroid/view/View;Lcom/htc/camera/rotate/UIRotation;)V

    .line 382
    return-void
.end method

.method protected setIsShortSeekBar(IZ)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IsShoterBar:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_IsShoterBar:[Z

    aput-boolean p2, v0, p1

    .line 280
    invoke-direct {p0}, Lcom/htc/camera/component/SeekBarUI;->updateControlBar()V

    goto :goto_0
.end method

.method protected setSeekBarBackgroud(ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarVisibility:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 337
    :cond_0
    if-nez p2, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarBackgroundDrawable:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarBackgroundDrawable:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method protected setSeekBarProgress(II)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_CurrentProgress:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_CurrentProgress:[I

    aput p2, v0, p1

    .line 300
    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/component/SeekBarUI;->onSeekBarProgressChanged(II)V

    goto :goto_0
.end method

.method protected setSeekBarThumbDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarVisibility:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 323
    :cond_0
    if-nez p2, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarTumbDrawable:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200e6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v1, p1

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarTumbDrawable:[Landroid/graphics/drawable/Drawable;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method protected setSeekBarVisibility(II)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarVisibility:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/camera/component/SeekBarUI;->m_SeekBarVisibility:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method protected showControls()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->initializeUI()V

    .line 242
    invoke-direct {p0}, Lcom/htc/camera/component/SeekBarUI;->updateUI()V

    .line 243
    invoke-virtual {p0}, Lcom/htc/camera/component/SeekBarUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/camera/component/SeekBarUI;->showUI(Landroid/view/View;ZZ)V

    .line 245
    return-void
.end method
