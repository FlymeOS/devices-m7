.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field private static FontChangePath:Ljava/lang/String; = null

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final SANS_INDEX:I = 0x1

.field private static final SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static UIFontBoldPath:Ljava/lang/String;

.field private static UIFontPath:Ljava/lang/String;

.field public static isFontChangeUsed:Z

.field private static final sAliasLikeDefaults:[[Landroid/graphics/Typeface;

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field private static final sFilterPattern:Ljava/util/regex/Pattern;

.field private static final sIllegalString:[Ljava/lang/String;

.field private static final sLikeDefaultFamilys:[Ljava/lang/String;

.field private static sNeedClean:Z

.field private static final sStaticDefaults:[Landroid/graphics/Typeface;

.field private static final sStaticLikeDefaults:[[Landroid/graphics/Typeface;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v9}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 102
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FontChangePath:Ljava/lang/String;

    .line 112
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 113
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 116
    sput-boolean v6, Landroid/graphics/Typeface;->isFontChangeUsed:Z

    .line 117
    sput-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    .line 124
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, " "

    aput-object v1, v0, v6

    const-string v1, ".."

    aput-object v1, v0, v7

    sput-object v0, Landroid/graphics/Typeface;->sIllegalString:[Ljava/lang/String;

    .line 130
    const-string v0, "\\p{Cntrl}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sFilterPattern:Ljava/util/regex/Pattern;

    .line 132
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "sans-serif"

    aput-object v1, v0, v6

    const-string/jumbo v1, "sans-serif-condensed-custom"

    aput-object v1, v0, v7

    const-string v1, "arial"

    aput-object v1, v0, v8

    const-string v1, "helvetica"

    aput-object v1, v0, v9

    const-string/jumbo v1, "tahoma"

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const-string/jumbo v2, "verdana"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sans-serif-condensed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "sans-serif-light"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sans-serif-thin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "sans-serif-medium"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "sans-serif-black"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "sans-serif-condensed-light"

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    .line 442
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    .line 445
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 446
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 447
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 448
    const-string/jumbo v0, "serif"

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 449
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 451
    new-array v1, v10, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v1, v6

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v1, v7

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v1, v8

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v1, v9

    sput-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 458
    new-array v1, v10, [Landroid/graphics/Typeface;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v1, v6

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v1, v7

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v1, v8

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v1, v9

    sput-object v1, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    .line 465
    const/16 v0, 0xc

    new-array v0, v0, [[Landroid/graphics/Typeface;

    new-array v1, v10, [Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    new-array v1, v10, [Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    new-array v1, v10, [Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    new-array v1, v10, [Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    new-array v1, v10, [Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-static {v2, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object v1, v0, v10

    const/4 v1, 0x5

    new-array v2, v10, [Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v10, [Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v10, [Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v10, [Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v10, [Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v10, [Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v10, [Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-static {v3, v8}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-static {v3, v9}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    .line 542
    const/16 v0, 0xc

    new-array v0, v0, [[Landroid/graphics/Typeface;

    new-array v1, v10, [Landroid/graphics/Typeface;

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    aget-object v3, v3, v7

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    aget-object v3, v3, v8

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v6

    aget-object v3, v3, v9

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    new-array v1, v10, [Landroid/graphics/Typeface;

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    aget-object v3, v3, v8

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v7

    aget-object v3, v3, v9

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    new-array v1, v10, [Landroid/graphics/Typeface;

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    aget-object v3, v3, v6

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    aget-object v3, v3, v7

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    aget-object v3, v3, v8

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v8

    aget-object v3, v3, v9

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v9

    aput-object v1, v0, v8

    new-array v1, v10, [Landroid/graphics/Typeface;

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v9

    aget-object v3, v3, v6

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v9

    aget-object v3, v3, v7

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v9

    aget-object v3, v3, v8

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v9

    aget-object v3, v3, v9

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    new-array v1, v10, [Landroid/graphics/Typeface;

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v10

    aget-object v3, v3, v6

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v10

    aget-object v3, v3, v7

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v10

    aget-object v3, v3, v8

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v3, v3, v10

    aget-object v3, v3, v9

    iget-wide v4, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v2, v1, v9

    aput-object v1, v0, v10

    const/4 v1, 0x5

    new-array v2, v10, [Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    aget-object v4, v4, v9

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v10, [Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    aget-object v4, v4, v9

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v10, [Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    aget-object v4, v4, v9

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v10, [Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    aget-object v4, v4, v9

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v10, [Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    aget-object v4, v4, v9

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v10, [Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    aget-object v4, v4, v9

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v10, [Landroid/graphics/Typeface;

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    aget-object v4, v4, v7

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    aget-object v4, v4, v8

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    aget-object v4, v4, v9

    iget-wide v4, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    .line 620
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 360
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 365
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 366
    return-void
.end method

.method public static _create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 150
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 9
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    const/4 v8, 0x4

    .line 228
    if-ltz p1, :cond_0

    const/4 v5, 0x3

    if-le p1, v5, :cond_1

    .line 229
    :cond_0
    const/4 p1, 0x0

    .line 231
    :cond_1
    const-wide/16 v2, 0x0

    .line 232
    .local v2, "ni":J
    if-eqz p0, :cond_b

    .line 234
    iget v5, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v5, p1, :cond_3

    move-object v4, p0

    .line 270
    :cond_2
    :goto_0
    return-object v4

    .line 239
    :cond_3
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v0, v8, :cond_5

    .line 240
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 241
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v5, p1

    goto :goto_0

    .line 239
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_5
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 245
    :cond_6
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v5, p1

    goto :goto_0

    .line 247
    :cond_7
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 254
    .end local v0    # "j":I
    :cond_8
    sget-object v5, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 256
    .local v1, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v1, :cond_9

    .line 257
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 258
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-nez v4, :cond_2

    .line 263
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_9
    new-instance v4, Landroid/graphics/Typeface;

    invoke-static {v2, v3, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Landroid/graphics/Typeface;-><init>(J)V

    .line 264
    .restart local v4    # "typeface":Landroid/graphics/Typeface;
    if-nez v1, :cond_a

    .line 265
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    invoke-direct {v1, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 266
    .restart local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v5, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 268
    :cond_a
    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 248
    .end local v1    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_b
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    if-eqz v5, :cond_8

    .line 249
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v5, p1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 190
    if-ltz p1, :cond_0

    const/4 v2, 0x3

    if-le p1, v2, :cond_1

    .line 191
    :cond_0
    const/4 p1, 0x0

    .line 193
    :cond_1
    if-nez p0, :cond_3

    .line 194
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    .line 212
    :cond_2
    :goto_0
    return-object v1

    .line 197
    :cond_3
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->_create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 200
    .local v1, "tf":Landroid/graphics/Typeface;
    if-eqz v1, :cond_4

    sget-object v2, Landroid/graphics/Typeface;->sStaticDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 201
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v2, p1

    goto :goto_0

    .line 204
    :cond_4
    if-eqz v1, :cond_2

    .line 205
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 206
    sget-object v2, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v2, v2, v0

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 207
    sget-object v2, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v2, v2, v0

    aget-object v1, v2, p1

    goto :goto_0

    .line 205
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 290
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 291
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 293
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 296
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 333
    array-length v2, p0

    new-array v1, v2, [J

    .line 334
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 335
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 348
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 349
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 350
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 353
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 306
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 316
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 317
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 318
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 320
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 323
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 279
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFontPathSwitchFont(I)Ljava/lang/String;
    .locals 3
    .param p0, "typefaceIndex"    # I

    .prologue
    .line 668
    invoke-static {p0}, Landroid/graphics/Typeface;->getFullSwitchFont(I)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullSwitchFont(I)Ljava/lang/String;
    .locals 13
    .param p0, "typefaceIndex"    # I

    .prologue
    .line 677
    const-string v9, "default"

    .line 678
    .local v9, "systemFont":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object v10, v9

    .line 726
    .end local v9    # "systemFont":Ljava/lang/String;
    .local v10, "systemFont":Ljava/lang/String;
    :goto_1
    return-object v10

    .line 681
    .end local v10    # "systemFont":Ljava/lang/String;
    .restart local v9    # "systemFont":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v11, "persist.sys.switchfontpath"

    const-string v12, "empty"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 682
    invoke-static {v9}, Landroid/graphics/Typeface;->isIllegalProperties(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 684
    const-string v11, "Typeface"

    const-string v12, "SystemProperties contains illegal character"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string/jumbo v11, "persist.sys.switchfontpath"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    .line 686
    .end local v9    # "systemFont":Ljava/lang/String;
    .restart local v10    # "systemFont":Ljava/lang/String;
    goto :goto_1

    .line 690
    .end local v10    # "systemFont":Ljava/lang/String;
    .restart local v9    # "systemFont":Ljava/lang/String;
    :cond_1
    const-string v11, "empty"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 693
    new-instance v3, Ljava/io/File;

    const-string v11, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 695
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 696
    .local v6, "irr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 697
    .local v0, "brr":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 700
    .local v8, "string":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 702
    .end local v6    # "irr":Ljava/io/InputStreamReader;
    .local v7, "irr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 703
    .end local v0    # "brr":Ljava/io/BufferedReader;
    .local v1, "brr":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 705
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 706
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 707
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v0, v1

    .end local v1    # "brr":Ljava/io/BufferedReader;
    .restart local v0    # "brr":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "irr":Ljava/io/InputStreamReader;
    .restart local v6    # "irr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 714
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_2
    move-object v9, v8

    .line 715
    const-string/jumbo v11, "persist.sys.switchfontpath"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :catch_0
    move-exception v2

    .line 709
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    const-string v8, "default"

    .line 713
    goto :goto_2

    .line 710
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 711
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    const-string v8, "default"

    .line 712
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 710
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "irr":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "irr":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7    # "irr":Ljava/io/InputStreamReader;
    .restart local v6    # "irr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "brr":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "irr":Ljava/io/InputStreamReader;
    .restart local v1    # "brr":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "irr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "brr":Ljava/io/BufferedReader;
    .restart local v0    # "brr":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "irr":Ljava/io/InputStreamReader;
    .restart local v6    # "irr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 708
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "irr":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "irr":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7    # "irr":Ljava/io/InputStreamReader;
    .restart local v6    # "irr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "brr":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "irr":Ljava/io/InputStreamReader;
    .restart local v1    # "brr":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "irr":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "brr":Ljava/io/BufferedReader;
    .restart local v0    # "brr":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "irr":Ljava/io/InputStreamReader;
    .restart local v6    # "irr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 623
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 24

    .prologue
    .line 383
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v17

    .line 384
    .local v17, "systemFontConfigLocation":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v21, "fonts.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 386
    .local v6, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 387
    .local v13, "fontsIn":Ljava/io/FileInputStream;
    invoke-static {v13}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v11

    .line 389
    .local v11, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v10, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_2

    .line 393
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 394
    .local v8, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v14, :cond_0

    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 395
    :cond_0
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 398
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/graphics/FontFamily;

    sput-object v21, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 399
    sget-object v21, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v21 .. v21}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 401
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v18, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/4 v14, 0x0

    :goto_1
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_5

    .line 404
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 405
    .restart local v8    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 406
    if-nez v14, :cond_4

    .line 409
    sget-object v19, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 415
    .local v19, "typeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 411
    :cond_4
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v12

    .line 412
    .local v12, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v9, v0, [Landroid/graphics/FontFamily;

    const/16 v21, 0x0

    aput-object v12, v9, v21

    .line 413
    .local v9, "families":[Landroid/graphics/FontFamily;
    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v19

    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 418
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    .end local v12    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 419
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 420
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v16, v5

    .line 421
    .local v16, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v20, v0

    .line 422
    .local v20, "weight":I
    const/16 v21, 0x190

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 423
    new-instance v16, Landroid/graphics/Typeface;

    .end local v16    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 425
    .restart local v16    # "newFace":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_3

    .line 429
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "newFace":Landroid/graphics/Typeface;
    .end local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v20    # "weight":I
    :catch_0
    move-exception v7

    .line 430
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v22, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_4
    return-void

    .line 427
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "i":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_7
    :try_start_1
    sput-object v18, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 432
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v7

    .line 433
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error opening "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 434
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 435
    .local v7, "e":Ljava/io/IOException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 436
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 437
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v21, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "XML parse exception for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static isIllegalProperties(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 730
    sget-object v3, Landroid/graphics/Typeface;->sFilterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 731
    .local v1, "mm":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v2

    .line 734
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Landroid/graphics/Typeface;->sIllegalString:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 735
    sget-object v3, Landroid/graphics/Typeface;->sIllegalString:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 739
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    .line 369
    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 371
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 373
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v1
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static nativeCreateFromFile(Ljava/lang/String;)J
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 743
    sget-object v4, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v4, :cond_2

    .line 744
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 745
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 746
    const/4 v4, 0x1

    new-array v0, v4, [Landroid/graphics/FontFamily;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 747
    .local v0, "families":[Landroid/graphics/FontFamily;
    array-length v4, v0

    sget-object v5, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v3, v4, [J

    .line 748
    .local v3, "ptrArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 749
    aget-object v4, v0, v2

    iget-wide v4, v4, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v3, v2

    .line 748
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 751
    :cond_0
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 752
    array-length v4, v0

    add-int/2addr v4, v2

    sget-object v5, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v5, v5, v2

    iget-wide v6, v5, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v6, v3, v4

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 754
    :cond_1
    invoke-static {v3}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    return-wide v4

    .line 757
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v2    # "i":I
    .end local v3    # "ptrArray":[J
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Font not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method public static setAppTypeFace(Ljava/lang/String;)V
    .locals 0
    .param p0, "sAppName"    # Ljava/lang/String;

    .prologue
    .line 936
    invoke-static {}, Landroid/graphics/Typeface;->setSwitchFonts()V

    .line 937
    return-void
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 157
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 158
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 159
    return-void
.end method

.method private static setSwitchFonts()V
    .locals 16

    .prologue
    const-wide/16 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 763
    const-string v3, ""

    .line 766
    .local v3, "strFontPathBold":Ljava/lang/String;
    invoke-static {v13}, Landroid/graphics/Typeface;->getFontPathSwitchFont(I)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, "strFontPath":Ljava/lang/String;
    const-string v6, "default"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 771
    sput-boolean v12, Landroid/graphics/Typeface;->isFontChangeUsed:Z

    .line 773
    sget-object v2, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 774
    sget-object v3, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 785
    :goto_0
    sget-object v6, Landroid/graphics/Typeface;->FontChangePath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 922
    :goto_1
    return-void

    .line 778
    :cond_0
    sput-boolean v13, Landroid/graphics/Typeface;->isFontChangeUsed:Z

    .line 780
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DroidSans-Bold.ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 781
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DroidSans.ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 789
    :cond_1
    sput-object v2, Landroid/graphics/Typeface;->FontChangePath:Ljava/lang/String;

    .line 792
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 793
    .local v4, "tempNative":J
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 795
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v14, v15, v12}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 812
    :goto_2
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 813
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_2

    .line 814
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 817
    :cond_2
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 818
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 819
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v14, v15, v13}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 829
    :goto_3
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 830
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_3

    .line 831
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 834
    :cond_3
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 835
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 836
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v12}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 842
    :goto_4
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 843
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_4

    .line 844
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 849
    :cond_4
    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v10

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 850
    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v10

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v10}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 851
    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v10

    sget-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v7, v7, v10

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 852
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_5

    .line 853
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 857
    :cond_5
    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v11

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 858
    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v11

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v11}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 859
    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v6, v6, v11

    sget-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v7, v7, v11

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 860
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_6

    .line 861
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 864
    :cond_6
    sget-boolean v6, Landroid/graphics/Typeface;->isFontChangeUsed:Z

    if-eqz v6, :cond_e

    .line 865
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    sget-object v6, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_13

    .line 866
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v12

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 867
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v12

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v7, v7, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v8, v9, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 868
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v12

    sget-object v7, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v12

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 869
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_7

    .line 870
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 872
    :cond_7
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v13

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 873
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v13

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v7, v7, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v8, v9, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 874
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v13

    sget-object v7, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v13

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 875
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_8

    .line 876
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 878
    :cond_8
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v10

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 879
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v10

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    sget-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v8, v9, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 880
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v10

    sget-object v7, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v10

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 881
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_9

    .line 882
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 884
    :cond_9
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v11

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 885
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v11

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    sget-object v7, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v7, v7, v11

    iget v7, v7, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v8, v9, v7}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 886
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v11

    sget-object v7, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v11

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 887
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_a

    .line 888
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 865
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 802
    .end local v1    # "j":I
    :cond_b
    :try_start_0
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "excep":Ljava/lang/RuntimeException;
    sput-boolean v12, Landroid/graphics/Typeface;->isFontChangeUsed:Z

    .line 806
    sget-object v2, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 807
    sget-object v3, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 808
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v14, v15, v12}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_2

    .line 824
    .end local v0    # "excep":Ljava/lang/RuntimeException;
    :cond_c
    :try_start_1
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v3}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 825
    :catch_1
    move-exception v0

    .line 826
    .restart local v0    # "excep":Ljava/lang/RuntimeException;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v13}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_3

    .line 840
    .end local v0    # "excep":Ljava/lang/RuntimeException;
    :cond_d
    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_4

    .line 892
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_6
    sget-object v6, Landroid/graphics/Typeface;->sLikeDefaultFamilys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_13

    .line 893
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v12

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 894
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v12

    sget-object v7, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v12

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v12}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 895
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v12

    sget-object v7, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v12

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 896
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_f

    .line 897
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 899
    :cond_f
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v13

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 900
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v13

    sget-object v7, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v13

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v13}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 901
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v13

    sget-object v7, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v13

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 902
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_10

    .line 903
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 905
    :cond_10
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v10

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 906
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v10

    sget-object v7, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v10

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v10}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 907
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v10

    sget-object v7, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v10

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 908
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_11

    .line 909
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 911
    :cond_11
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v11

    iget-wide v4, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 912
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v11

    sget-object v7, Landroid/graphics/Typeface;->sStaticLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v11

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9, v11}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    .line 913
    sget-object v6, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v6, v6, v1

    aget-object v6, v6, v11

    sget-object v7, Landroid/graphics/Typeface;->sAliasLikeDefaults:[[Landroid/graphics/Typeface;

    aget-object v7, v7, v1

    aget-object v7, v7, v11

    iget-wide v8, v7, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v6, Landroid/graphics/Typeface;->mStyle:I

    .line 914
    sget-boolean v6, Landroid/graphics/Typeface;->sNeedClean:Z

    if-eqz v6, :cond_12

    .line 915
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeUnref(J)V

    .line 892
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 920
    :cond_13
    sput-boolean v13, Landroid/graphics/Typeface;->sNeedClean:Z

    .line 921
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    goto/16 :goto_1
.end method


# virtual methods
.method public checkNeedUpdate(J)Z
    .locals 3
    .param p1, "myNative"    # J

    .prologue
    .line 925
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 926
    const/4 v0, 0x1

    .line 927
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 637
    if-ne p0, p1, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v1

    .line 638
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 640
    check-cast v0, Landroid/graphics/Typeface;

    .line 642
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 629
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 633
    return-void

    .line 631
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNewNativeTypeface()J
    .locals 2

    .prologue
    .line 931
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    return-wide v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 651
    const/16 v0, 0x11

    .line 652
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 653
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 654
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
