.class public Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;
.super Ljava/lang/Object;
.source "TabBarUtils.java"


# static fields
.field private static categoryColors:[I

.field private static drawables:Landroid/util/SparseIntArray;

.field private static multiplyColor:I

.field private static overlayColor:I

.field private static screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    sput v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->overlayColor:I

    .line 35
    sput v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->multiplyColor:I

    .line 39
    const/4 v0, 0x4

    new-instance v1, Lcom/htc/lib1/cc/view/tabbar/d;

    invoke-direct {v1}, Lcom/htc/lib1/cc/view/tabbar/d;-><init>()V

    invoke-static {v0, v1}, Lcom/htc/lib1/cc/util/HtcCommonUtil;->addObserver(ILjava/util/Observer;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    .prologue
    .line 30
    sput p0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->overlayColor:I

    return p0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->categoryColors:[I

    return-object v0
.end method

.method static synthetic access$102([I)[I
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->categoryColors:[I

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;)Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->checkScreen(Landroid/content/Context;)Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->checkResources(Landroid/content/Context;)V

    return-void
.end method

.method private static checkResources(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->drawables:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    sget-object v2, Lcom/htc/lib1/cc/R$styleable;->TabBar:[I

    sget v3, Lcom/htc/lib1/cc/b;->tabbarStyle:I

    sget v4, Lcom/htc/lib1/cc/k;->TabBarStyle:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 51
    sget v2, Lcom/htc/lib1/cc/a;->tabbar_drawables:I

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 53
    sget v3, Lcom/htc/lib1/cc/a;->tabbar_colors:I

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->drawables:Landroid/util/SparseIntArray;

    .line 56
    sget-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->drawables:Landroid/util/SparseIntArray;

    sget v4, Lcom/htc/lib1/cc/e;->common_app_bkg:I

    sget v5, Lcom/htc/lib1/cc/e;->common_app_bkg:I

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->drawables:Landroid/util/SparseIntArray;

    sget v4, Lcom/htc/lib1/cc/e;->common_app_bkg_down_src:I

    sget v5, Lcom/htc/lib1/cc/e;->common_app_bkg_down_src:I

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    :cond_0
    sget v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->overlayColor:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->categoryColors:[I

    if-nez v0, :cond_2

    .line 65
    :cond_1
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/htc/lib1/cc/b;->overlay_color:I

    aput v1, v0, v6

    sget v1, Lcom/htc/lib1/cc/b;->multiply_color:I

    aput v1, v0, v7

    sget v1, Lcom/htc/lib1/cc/b;->light_category_color:I

    aput v1, v0, v8

    sget v1, Lcom/htc/lib1/cc/b;->category_color:I

    aput v1, v0, v9

    sget v1, Lcom/htc/lib1/cc/b;->dark_category_color:I

    aput v1, v0, v10

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sput v1, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->overlayColor:I

    .line 70
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    sput v1, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->multiplyColor:I

    .line 71
    new-array v1, v9, [I

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v1, v6

    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v1, v7

    invoke-virtual {v0, v10, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v1, v8

    sput-object v1, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->categoryColors:[I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    :cond_2
    return-void
.end method

.method private static checkScreen(Landroid/content/Context;)Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;
    .locals 12

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 102
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    invoke-direct {v0}, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;-><init>()V

    sput-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    .line 104
    sget-object v1, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, v1, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->display:Landroid/view/Display;

    .line 105
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 106
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->display:Landroid/view/Display;

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget v8, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 112
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 113
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->display:Landroid/view/Display;

    invoke-virtual {v0, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 116
    iget v0, v7, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, v7, Landroid/util/DisplayMetrics;->ydpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    .line 117
    :cond_0
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    mul-double/2addr v0, v10

    int-to-double v2, v8

    div-double v2, v0, v2

    .line 118
    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    mul-double/2addr v0, v10

    int-to-double v10, v8

    div-double/2addr v0, v10

    .line 119
    const-string v7, "TabBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[screen info] width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(px), height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(px), dpi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 126
    iget v0, v9, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    :try_start_0
    sget-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/htc/lib1/cc/h;->tab_customize_flag:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    sget-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iget v3, v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    if-nez v3, :cond_c

    .line 135
    const/16 v3, 0x140

    if-gt v0, v3, :cond_4

    .line 136
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iput v6, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    .line 153
    :goto_2
    const-string v0, "TabBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[screen info] size = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(inch), resolution = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iget v2, v2, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iget-object v0, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 156
    sget-object v1, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    if-eqz v0, :cond_2

    if-ne v0, v4, :cond_d

    :cond_2
    move v0, v6

    :goto_3
    iput-boolean v0, v1, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->portrait:Z

    .line 157
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    return-object v0

    .line 121
    :cond_3
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-double v0, v0

    mul-double/2addr v0, v10

    iget v2, v7, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v2, v2

    div-double v2, v0, v2

    .line 122
    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    mul-double/2addr v0, v10

    iget v8, v7, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v10, v8

    div-double/2addr v0, v10

    .line 123
    const-string v8, "TabBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[screen info] width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(px), height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(px), xdpi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ydpi = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v7, v7, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v3

    .line 131
    const-string v3, "TabBar"

    const-string v7, "R.integer.tab_customize_flag not found"

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iput v5, v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    goto/16 :goto_1

    .line 137
    :cond_4
    const/16 v3, 0x1e0

    if-gt v0, v3, :cond_6

    .line 138
    sget-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    cmpl-double v0, v1, v7

    if-ltz v0, :cond_5

    const/16 v0, 0x12

    :goto_4
    iput v0, v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    goto/16 :goto_2

    :cond_5
    move v0, v4

    goto :goto_4

    .line 139
    :cond_6
    const/16 v3, 0x21c

    if-gt v0, v3, :cond_8

    .line 140
    sget-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpl-double v0, v1, v7

    if-lez v0, :cond_7

    const/16 v0, 0x13

    :goto_5
    iput v0, v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x3

    goto :goto_5

    .line 141
    :cond_8
    const/16 v3, 0x2d0

    if-gt v0, v3, :cond_9

    .line 144
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    const/4 v3, 0x4

    iput v3, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    goto/16 :goto_2

    .line 145
    :cond_9
    const/16 v3, 0x438

    if-gt v0, v3, :cond_b

    .line 146
    sget-object v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    const-wide/high16 v7, 0x4016000000000000L    # 5.5

    cmpl-double v0, v1, v7

    if-ltz v0, :cond_a

    const/16 v0, 0x15

    :goto_6
    iput v0, v3, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x5

    goto :goto_6

    .line 148
    :cond_b
    sget-object v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iput v5, v0, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    goto/16 :goto_2

    .line 151
    :cond_c
    const-string v0, "TabBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[screen info] customization type = 0x"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils;->screenInfo:Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;

    iget v7, v7, Lcom/htc/lib1/cc/view/tabbar/TabBarUtils$ScreenInfo;->resolution:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    move v0, v5

    .line 156
    goto/16 :goto_3
.end method
