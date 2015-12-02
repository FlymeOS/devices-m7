.class Lcom/htc/camera/q;
.super Ljava/lang/Object;
.source "DefaultPhotoResolutionProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/DefaultPhotoResolutionProvider$1;)V
    .locals 0

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/htc/camera/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 811
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 813
    :cond_0
    const-string v1, "DefaultPhotoResolutionProvider"

    const-string v2, "compare() - Failed to campare."

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_1
    :goto_0
    return v0

    .line 817
    :cond_2
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v1, v2

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 818
    const/4 v0, 0x1

    goto :goto_0

    .line 819
    :cond_3
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v1, v2

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 820
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 806
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/q;->a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
