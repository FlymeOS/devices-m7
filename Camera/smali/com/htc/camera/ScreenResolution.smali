.class public final enum Lcom/htc/camera/ScreenResolution;
.super Ljava/lang/Enum;
.source "ScreenResolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/ScreenResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/ScreenResolution;

.field public static final CURRENT:Lcom/htc/camera/ScreenResolution;

.field public static final enum FHD:Lcom/htc/camera/ScreenResolution;

.field public static final enum FWVGA:Lcom/htc/camera/ScreenResolution;

.field public static final enum HD:Lcom/htc/camera/ScreenResolution;

.field public static final enum HVGA:Lcom/htc/camera/ScreenResolution;

.field public static final enum QHD:Lcom/htc/camera/ScreenResolution;

.field public static final enum QVGA:Lcom/htc/camera/ScreenResolution;

.field public static final enum WQVGA:Lcom/htc/camera/ScreenResolution;

.field public static final enum WSVGA:Lcom/htc/camera/ScreenResolution;

.field public static final enum WVGA:Lcom/htc/camera/ScreenResolution;

.field public static final enum WXGA:Lcom/htc/camera/ScreenResolution;


# instance fields
.field public final actualDiagonalLength:F

.field public final actualHeight:I

.field public final actualWidth:I

.field public final aspectRatio:Lcom/htc/camera/AspectRatio;

.field public final diagonalLength:F

.field public final hasNavigationBar:Z

.field public final height:I

.field public final navigationBarHeight:I

.field public final statusBarHeight:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x1e0

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "FHD"

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->FHD:Lcom/htc/camera/ScreenResolution;

    .line 14
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "WXGA"

    const/16 v3, 0x500

    const/16 v4, 0x2f0

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->WXGA:Lcom/htc/camera/ScreenResolution;

    .line 15
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "HD"

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v0, v1, v8, v3, v4}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->HD:Lcom/htc/camera/ScreenResolution;

    .line 16
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "WSVGA"

    const/16 v3, 0x400

    const/16 v4, 0x258

    invoke-direct {v0, v1, v9, v3, v4}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->WSVGA:Lcom/htc/camera/ScreenResolution;

    .line 17
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "QHD"

    const/4 v3, 0x4

    const/16 v4, 0x3c0

    const/16 v5, 0x21c

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->QHD:Lcom/htc/camera/ScreenResolution;

    .line 18
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "FWVGA"

    const/4 v3, 0x5

    const/16 v4, 0x356

    invoke-direct {v0, v1, v3, v4, v6}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->FWVGA:Lcom/htc/camera/ScreenResolution;

    .line 19
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "WVGA"

    const/4 v3, 0x6

    const/16 v4, 0x320

    invoke-direct {v0, v1, v3, v4, v6}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->WVGA:Lcom/htc/camera/ScreenResolution;

    .line 20
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "HVGA"

    const/4 v3, 0x7

    const/16 v4, 0x140

    invoke-direct {v0, v1, v3, v6, v4}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->HVGA:Lcom/htc/camera/ScreenResolution;

    .line 21
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "WQVGA"

    const/16 v3, 0x8

    const/16 v4, 0x190

    const/16 v5, 0xf0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->WQVGA:Lcom/htc/camera/ScreenResolution;

    .line 22
    new-instance v0, Lcom/htc/camera/ScreenResolution;

    const-string v1, "QVGA"

    const/16 v3, 0x9

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/htc/camera/ScreenResolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/camera/ScreenResolution;->QVGA:Lcom/htc/camera/ScreenResolution;

    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/camera/ScreenResolution;

    sget-object v1, Lcom/htc/camera/ScreenResolution;->FHD:Lcom/htc/camera/ScreenResolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/camera/ScreenResolution;->WXGA:Lcom/htc/camera/ScreenResolution;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/camera/ScreenResolution;->HD:Lcom/htc/camera/ScreenResolution;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/camera/ScreenResolution;->WSVGA:Lcom/htc/camera/ScreenResolution;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v3, Lcom/htc/camera/ScreenResolution;->QHD:Lcom/htc/camera/ScreenResolution;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    sget-object v3, Lcom/htc/camera/ScreenResolution;->FWVGA:Lcom/htc/camera/ScreenResolution;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/htc/camera/ScreenResolution;->WVGA:Lcom/htc/camera/ScreenResolution;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/htc/camera/ScreenResolution;->HVGA:Lcom/htc/camera/ScreenResolution;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lcom/htc/camera/ScreenResolution;->WQVGA:Lcom/htc/camera/ScreenResolution;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget-object v3, Lcom/htc/camera/ScreenResolution;->QVGA:Lcom/htc/camera/ScreenResolution;

    aput-object v3, v0, v1

    sput-object v0, Lcom/htc/camera/ScreenResolution;->$VALUES:[Lcom/htc/camera/ScreenResolution;

    .line 52
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/htc/camera/CameraApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 53
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 54
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_1

    .line 60
    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 61
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 68
    :goto_0
    const-string v3, "ScreenResolution"

    const-string v4, "Screen size : "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, " x "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-static {}, Lcom/htc/camera/ScreenResolution;->values()[Lcom/htc/camera/ScreenResolution;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v5, v4

    .line 74
    iget v7, v2, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    if-ne v7, v1, :cond_2

    iget v7, v2, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    if-ne v7, v0, :cond_2

    .line 76
    const-string v0, "ScreenResolution"

    const-string v1, "Screen resolution : "

    invoke-static {v0, v1, v2}, Lcom/htc/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 81
    :goto_2
    if-nez v0, :cond_0

    .line 83
    const-string v0, "ScreenResolution"

    const-string v1, "Unknown screen resolution, set HD as screen resolution"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/htc/camera/ScreenResolution;->HD:Lcom/htc/camera/ScreenResolution;

    .line 86
    :cond_0
    sput-object v0, Lcom/htc/camera/ScreenResolution;->CURRENT:Lcom/htc/camera/ScreenResolution;

    .line 87
    return-void

    .line 65
    :cond_1
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    invoke-static {}, Lcom/htc/camera/CameraApplication;->current()Lcom/htc/camera/CameraApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/camera/CameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    invoke-static {}, Lcom/htc/camera/FeatureConfig;->hasSystemBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/htc/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/htc/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/htc/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "navigation_bar_width"

    :goto_0
    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    .line 105
    :goto_1
    iput p3, p0, Lcom/htc/camera/ScreenResolution;->actualWidth:I

    .line 106
    iput p4, p0, Lcom/htc/camera/ScreenResolution;->actualHeight:I

    .line 107
    mul-int v0, p3, p3

    mul-int v2, p4, p4

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcom/htc/camera/ScreenResolution;->actualDiagonalLength:F

    .line 108
    const-string v0, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/camera/ScreenResolution;->statusBarHeight:I

    .line 109
    iget v0, p0, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    if-gtz v0, :cond_2

    .line 111
    iput p3, p0, Lcom/htc/camera/ScreenResolution;->width:I

    .line 112
    iput p4, p0, Lcom/htc/camera/ScreenResolution;->height:I

    .line 113
    iput-boolean v4, p0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    .line 121
    :goto_2
    iget v0, p0, Lcom/htc/camera/ScreenResolution;->width:I

    iget v1, p0, Lcom/htc/camera/ScreenResolution;->width:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/camera/ScreenResolution;->height:I

    iget v2, p0, Lcom/htc/camera/ScreenResolution;->height:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/htc/camera/ScreenResolution;->diagonalLength:F

    .line 122
    invoke-static {p3, p4}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/camera/ScreenResolution;->aspectRatio:Lcom/htc/camera/AspectRatio;

    .line 123
    return-void

    .line 98
    :cond_0
    const-string v0, "navigation_bar_height"

    goto :goto_0

    .line 102
    :cond_1
    iput v4, p0, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    goto :goto_1

    .line 117
    :cond_2
    iget v0, p0, Lcom/htc/camera/ScreenResolution;->navigationBarHeight:I

    sub-int v0, p3, v0

    iput v0, p0, Lcom/htc/camera/ScreenResolution;->width:I

    .line 118
    iput p4, p0, Lcom/htc/camera/ScreenResolution;->height:I

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/camera/ScreenResolution;->hasNavigationBar:Z

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/ScreenResolution;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/htc/camera/ScreenResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/ScreenResolution;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/ScreenResolution;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/htc/camera/ScreenResolution;->$VALUES:[Lcom/htc/camera/ScreenResolution;

    invoke-virtual {v0}, [Lcom/htc/camera/ScreenResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/ScreenResolution;

    return-object v0
.end method
