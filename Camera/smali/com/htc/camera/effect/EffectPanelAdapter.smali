.class public Lcom/htc/camera/effect/EffectPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "EffectPanelAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static m_ImageAndTextTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_CameraActivity:Lcom/htc/camera/HTCCamera;

.field private m_CoverDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

.field private m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

.field private m_EffectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_Rotation:Lcom/htc/camera/rotate/UIRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "EffectPanelAdapter"

    sput-object v0, Lcom/htc/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/HTCCamera;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 60
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    .line 61
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/htc/camera/widget/ColorMultiplyDrawable;

    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v2, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/widget/ColorMultiplyDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CoverDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    .line 64
    invoke-static {p1}, Lcom/htc/camera/effect/EffectPanelAdapter;->createEffectIconDrawableHashTable(Lcom/htc/camera/HTCCamera;)V

    .line 65
    return-void

    .line 61
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static createEffectIconDrawableHashTable(Lcom/htc/camera/HTCCamera;)V
    .locals 9

    .prologue
    const v8, 0x7f0200ad

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    sget-object v0, Lcom/htc/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    const-string v1, "createDrawableHashTable() - start"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/htc/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "mono"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200ae

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080265

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "negative"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200b1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080267

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "solarize"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200b5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080268

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "posterize"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200b3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080269

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "aqua"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200a8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f08026c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "distortion"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200ac

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080273

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vignette"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200b6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080274

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "depth"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200ab

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080272

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "dots"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080278

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "maple"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080279

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "nash"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200b0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f08027a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "splittoning_mono"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200af

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f08027b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "splittoning_color"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f08027c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-high"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200aa

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080277

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-red"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200b7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080275

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-green"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200a9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080276

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-sepia"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200b4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f080266

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "none"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f0200b2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v3, v5

    const v0, 0x7f080261

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/htc/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    const-string v1, "createDrawableHashTable() - end"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public static initialize(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    if-nez p2, :cond_1

    .line 109
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/htc/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030065

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    new-instance v1, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;

    invoke-direct {v1, v8}, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;-><init>(Lcom/htc/camera/effect/EffectPanelAdapter$1;)V

    .line 111
    const v0, 0x7f0e018b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/rotate/RotateLinearLayout;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->containerView:Lcom/htc/camera/rotate/RotateLinearLayout;

    .line 112
    const v0, 0x7f0e0063

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f0e018d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverView:Landroid/widget/ImageView;

    .line 114
    const v0, 0x7f0e018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverBackgroundView:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0e018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0e00a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectBase;

    .line 125
    sget-object v1, Lcom/htc/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 126
    if-nez v1, :cond_6

    .line 127
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    move-object v3, v1

    .line 130
    :goto_1
    iget-object v1, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->containerView:Lcom/htc/camera/rotate/RotateLinearLayout;

    iget-object v4, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v1, v4}, Lcom/htc/camera/rotate/RotateLinearLayout;->setRotation(Lcom/htc/camera/rotate/UIRotation;)V

    .line 133
    aget-object v1, v3, v5

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 134
    if-eqz v1, :cond_2

    .line 135
    iget-object v4, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :goto_2
    aget-object v1, v3, v6

    if-eqz v1, :cond_3

    .line 141
    iget-object v4, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    aget-object v1, v3, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    :goto_3
    iget-object v1, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CoverDrawable:Lcom/htc/camera/widget/ColorMultiplyDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v1, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    if-eq v1, v0, :cond_4

    .line 150
    iget-object v1, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v1, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    invoke-virtual {p2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 168
    :goto_4
    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/htc/camera/HTCCamera;

    iget-object v0, v0, Lcom/htc/camera/HTCCamera;->cameraType:Lcom/htc/camera/property/Property;

    invoke-virtual {v0}, Lcom/htc/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/CameraType;

    invoke-virtual {v0}, Lcom/htc/camera/CameraType;->isMainCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    :cond_0
    iget-object v0, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_5
    return-object p2

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;

    move-object v2, v0

    goto :goto_0

    .line 137
    :cond_2
    iget-object v1, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 143
    :cond_3
    iget-object v1, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 159
    :cond_4
    iget-object v1, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v1, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageCoverBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-virtual {p2, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_4

    .line 171
    :cond_5
    iget-object v0, v2, Lcom/htc/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_6
    move-object v3, v1

    goto/16 :goto_1
.end method

.method public setCurrentEffect(Lcom/htc/camera/effect/EffectBase;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_CurrentEffect:Lcom/htc/camera/effect/EffectBase;

    .line 183
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelAdapter;->notifyDataSetInvalidated()V

    .line 184
    return-void
.end method

.method public final setRotation(Lcom/htc/camera/rotate/UIRotation;)V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/htc/camera/effect/EffectPanelAdapter$1;->$SwitchMap$com$htc$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/htc/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/htc/camera/rotate/UIRotation;

    .line 222
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    .line 223
    return-void

    .line 197
    :pswitch_0
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 200
    :cond_0
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 203
    :pswitch_1
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 206
    :cond_1
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->InverseLandscape:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 209
    :pswitch_2
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 212
    :cond_2
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->InversePortrait:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 215
    :pswitch_3
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->Landscape:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 218
    :cond_3
    sget-object p1, Lcom/htc/camera/rotate/UIRotation;->Portrait:Lcom/htc/camera/rotate/UIRotation;

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateEffectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/htc/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    .line 231
    invoke-virtual {p0}, Lcom/htc/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    .line 232
    return-void

    .line 230
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
