.class final Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field final compatInfo:Landroid/content/res/CompatibilityInfo;

.field final icon:I

.field final labelRes:I

.field final logo:I

.field final nonLocalizedLabel:Ljava/lang/CharSequence;

.field final pkg:Ljava/lang/String;

.field final theme:I

.field thumbnail:Landroid/graphics/Bitmap;

.field final windowFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)V
    .locals 1
    .param p1, "_pkg"    # Ljava/lang/String;
    .param p2, "_theme"    # I
    .param p3, "_compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "_nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p5, "_labelRes"    # I
    .param p6, "_icon"    # I
    .param p7, "_logo"    # I
    .param p8, "_windowFlags"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/StartingData;->thumbnail:Landroid/graphics/Bitmap;

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/android/server/wm/StartingData;->theme:I

    .line 45
    iput-object p3, p0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 46
    iput-object p4, p0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 47
    iput p5, p0, Lcom/android/server/wm/StartingData;->labelRes:I

    .line 48
    iput p6, p0, Lcom/android/server/wm/StartingData;->icon:I

    .line 49
    iput p7, p0, Lcom/android/server/wm/StartingData;->logo:I

    .line 50
    iput p8, p0, Lcom/android/server/wm/StartingData;->windowFlags:I

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "_pkg"    # Ljava/lang/String;
    .param p2, "_theme"    # I
    .param p3, "_compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "_nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p5, "_labelRes"    # I
    .param p6, "_icon"    # I
    .param p7, "_logo"    # I
    .param p8, "_windowFlags"    # I
    .param p9, "_thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/StartingData;-><init>(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)V

    .line 63
    iput-object p9, p0, Lcom/android/server/wm/StartingData;->thumbnail:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method
