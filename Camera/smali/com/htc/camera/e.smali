.class Lcom/htc/camera/e;
.super Ljava/lang/Object;
.source "CameraConfigFileReader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/camera/Resolution;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/camera/CameraConfigFileReader$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/camera/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/htc/camera/Resolution;Lcom/htc/camera/Resolution;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 59
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 61
    :cond_0
    const-string v1, "CameraConfigFileReader"

    const-string v2, "compare() - Failed to campare."

    invoke-static {v1, v2}, Lcom/htc/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    :goto_0
    return v0

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/htc/camera/Resolution;

    check-cast p2, Lcom/htc/camera/Resolution;

    invoke-virtual {p0, p1, p2}, Lcom/htc/camera/e;->a(Lcom/htc/camera/Resolution;Lcom/htc/camera/Resolution;)I

    move-result v0

    return v0
.end method
