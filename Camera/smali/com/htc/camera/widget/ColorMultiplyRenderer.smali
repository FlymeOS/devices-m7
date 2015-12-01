.class public final Lcom/htc/camera/widget/ColorMultiplyRenderer;
.super Ljava/lang/Object;
.source "ColorMultiplyRenderer.java"


# static fields
.field private static volatile m_CategoryColor:Ljava/lang/Integer;

.field private static volatile m_DarkCategoryColor:Ljava/lang/Integer;

.field private static volatile m_LightCategoryColor:Ljava/lang/Integer;

.field private static volatile m_MultiplyColor:Ljava/lang/Integer;

.field private static volatile m_OverlayColor:Ljava/lang/Integer;

.field private static volatile m_UpdateThemeIDHandler:Lcom/htc/camera/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/camera/base/b",
            "<",
            "Lcom/htc/camera/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/htc/camera/widget/a;

    invoke-direct {v0}, Lcom/htc/camera/widget/a;-><init>()V

    sput-object v0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_UpdateThemeIDHandler:Lcom/htc/camera/base/b;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 17
    sput-object p0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_CategoryColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 17
    sput-object p0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_DarkCategoryColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$202(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 17
    sput-object p0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_LightCategoryColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$302(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 17
    sput-object p0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_MultiplyColor:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$402(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 17
    sput-object p0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_OverlayColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public static getCategoryColor(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getColors(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_CategoryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private static declared-synchronized getColors(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    const-class v2, Lcom/htc/camera/widget/ColorMultiplyRenderer;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_CategoryColor:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 70
    :goto_0
    monitor-exit v2

    return v0

    .line 53
    :cond_0
    :try_start_1
    instance-of v3, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_1

    .line 55
    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 62
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_LightCategoryColor:Ljava/lang/Integer;

    .line 63
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_CategoryColor:Ljava/lang/Integer;

    .line 64
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_DarkCategoryColor:Ljava/lang/Integer;

    .line 65
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_MultiplyColor:Ljava/lang/Integer;

    .line 66
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_OverlayColor:Ljava/lang/Integer;

    .line 67
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0

    .line 55
    :array_0
    .array-data 4
        0x7f01000f
        0x7f01000e
        0x7f010010
        0x7f01000d
        0x7f010014
    .end array-data
.end method

.method public static getMultiplyColor(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 92
    invoke-static {p0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getColors(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_MultiplyColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getOverlayColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static getOverlayColor(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 102
    invoke-static {p0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getColors(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_OverlayColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "overlay_color"

    const-string v2, "color"

    const-string v3, "com.htc"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static initialize()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/htc/camera/CameraApplication;->EVENT_THEME_ID_UPDATED:Lcom/htc/camera/base/EventKey;

    sget-object v2, Lcom/htc/camera/widget/ColorMultiplyRenderer;->m_UpdateThemeIDHandler:Lcom/htc/camera/base/b;

    invoke-virtual {v0, v1, v2}, Lcom/htc/camera/CameraApplication;->addEventHandler(Lcom/htc/camera/base/EventKey;Lcom/htc/camera/base/b;)V

    .line 112
    return-void
.end method

.method public static render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 119
    invoke-static {p0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->getCategoryColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/camera/widget/ColorMultiplyRenderer;->render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;I)V

    .line 120
    return-void
.end method

.method public static render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;I)V
    .locals 2

    .prologue
    .line 124
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 129
    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 132
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 135
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method
