.class public final enum Lcom/htc/camera/AspectRatio;
.super Ljava/lang/Enum;
.source "AspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/camera/AspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_10x7:Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_11x9:Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_16x10:Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_16x9:Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_1x1:Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_3x2:Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_4x3:Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_5x3:Lcom/htc/camera/AspectRatio;

.field public static final enum Ratio_5x4:Lcom/htc/camera/AspectRatio;

.field public static final enum Unknown:Lcom/htc/camera/AspectRatio;


# instance fields
.field public final ratio:D


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Unknown"

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    .line 10
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_16x9"

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_16x9:Lcom/htc/camera/AspectRatio;

    .line 11
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_16x10"

    const-wide v2, 0x3ff999999999999aL    # 1.6

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_16x10:Lcom/htc/camera/AspectRatio;

    .line 12
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_11x9"

    const-wide v2, 0x3ff38e38e38e38e4L    # 1.2222222222222223

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_11x9:Lcom/htc/camera/AspectRatio;

    .line 13
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_10x7"

    const-wide v2, 0x3ff6db6db6db6db7L    # 1.4285714285714286

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_10x7:Lcom/htc/camera/AspectRatio;

    .line 14
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_4x3"

    const/4 v2, 0x5

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    .line 15
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_5x4"

    const/4 v2, 0x6

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_5x4:Lcom/htc/camera/AspectRatio;

    .line 16
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_5x3"

    const/4 v2, 0x7

    const-wide v3, 0x3ffaaaaaaaaaaaabL    # 1.6666666666666667

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_5x3:Lcom/htc/camera/AspectRatio;

    .line 17
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_3x2"

    const/16 v2, 0x8

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_3x2:Lcom/htc/camera/AspectRatio;

    .line 18
    new-instance v0, Lcom/htc/camera/AspectRatio;

    const-string v1, "Ratio_1x1"

    const/16 v2, 0x9

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/AspectRatio;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/htc/camera/AspectRatio;->Ratio_1x1:Lcom/htc/camera/AspectRatio;

    .line 7
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/camera/AspectRatio;

    sget-object v1, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_16x9:Lcom/htc/camera/AspectRatio;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_16x10:Lcom/htc/camera/AspectRatio;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_11x9:Lcom/htc/camera/AspectRatio;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/camera/AspectRatio;->Ratio_10x7:Lcom/htc/camera/AspectRatio;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/camera/AspectRatio;->Ratio_5x4:Lcom/htc/camera/AspectRatio;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/camera/AspectRatio;->Ratio_5x3:Lcom/htc/camera/AspectRatio;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/camera/AspectRatio;->Ratio_3x2:Lcom/htc/camera/AspectRatio;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/camera/AspectRatio;->Ratio_1x1:Lcom/htc/camera/AspectRatio;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/AspectRatio;->$VALUES:[Lcom/htc/camera/AspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-wide p3, p0, Lcom/htc/camera/AspectRatio;->ratio:D

    .line 33
    return-void
.end method

.method public static getAspectRatio(II)Lcom/htc/camera/AspectRatio;
    .locals 8

    .prologue
    const-wide v6, 0x3fa47ae147ae147bL    # 0.04

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    .line 40
    if-lez p0, :cond_10

    if-lez p1, :cond_10

    .line 42
    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 43
    const-wide v2, 0x3ffc71c75818c5caL    # 1.777778

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3fe2000000000000L    # 0.5625

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 44
    :cond_0
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_16x9:Lcom/htc/camera/AspectRatio;

    .line 62
    :goto_0
    return-object v0

    .line 45
    :cond_1
    const-wide v2, 0x3ffaaaab042528aeL    # 1.666667

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-lez v2, :cond_2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    .line 46
    :cond_2
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_5x3:Lcom/htc/camera/AspectRatio;

    goto :goto_0

    .line 47
    :cond_3
    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-lez v2, :cond_4

    const-wide v2, 0x3fe999999999999aL    # 0.8

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_5

    .line 48
    :cond_4
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_5x4:Lcom/htc/camera/AspectRatio;

    goto :goto_0

    .line 49
    :cond_5
    const-wide v2, 0x3ff999999999999aL    # 1.6

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-lez v2, :cond_6

    const-wide/high16 v2, 0x3fe4000000000000L    # 0.625

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_7

    .line 50
    :cond_6
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_16x10:Lcom/htc/camera/AspectRatio;

    goto :goto_0

    .line 51
    :cond_7
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-lez v2, :cond_8

    const-wide v2, 0x3fe55556084a515dL    # 0.666667

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_9

    .line 52
    :cond_8
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_3x2:Lcom/htc/camera/AspectRatio;

    goto :goto_0

    .line 53
    :cond_9
    const-wide v2, 0x3ff6db6c3760bf5dL    # 1.42857

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-lez v2, :cond_a

    const-wide v2, 0x3fe6666666666666L    # 0.7

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_b

    .line 54
    :cond_a
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_10x7:Lcom/htc/camera/AspectRatio;

    goto/16 :goto_0

    .line 55
    :cond_b
    const-wide v2, 0x3ff55554fbdad752L    # 1.333333

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-lez v2, :cond_c

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_d

    .line 56
    :cond_c
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_4x3:Lcom/htc/camera/AspectRatio;

    goto/16 :goto_0

    .line 57
    :cond_d
    const-wide v2, 0x3ff38e38a7e73a36L    # 1.222222

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-lez v2, :cond_e

    const-wide v2, 0x3fea2e8c0485a0beL    # 0.818182

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_f

    .line 58
    :cond_e
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_11x9:Lcom/htc/camera/AspectRatio;

    goto/16 :goto_0

    .line 59
    :cond_f
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_10

    .line 60
    sget-object v0, Lcom/htc/camera/AspectRatio;->Ratio_1x1:Lcom/htc/camera/AspectRatio;

    goto/16 :goto_0

    .line 62
    :cond_10
    sget-object v0, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    goto/16 :goto_0
.end method

.method public static getAspectRatio(Landroid/hardware/Camera$Size;)Lcom/htc/camera/AspectRatio;
    .locals 2

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0, v1}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    goto :goto_0
.end method

.method public static getAspectRatio(Lcom/htc/camera/Resolution;)Lcom/htc/camera/AspectRatio;
    .locals 2

    .prologue
    .line 78
    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/htc/camera/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/camera/Resolution;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    goto :goto_0
.end method

.method public static getAspectRatio(Lcom/htc/camera/imaging/Size;)Lcom/htc/camera/AspectRatio;
    .locals 2

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 73
    iget v0, p0, Lcom/htc/camera/imaging/Size;->width:I

    iget v1, p0, Lcom/htc/camera/imaging/Size;->height:I

    invoke-static {v0, v1}, Lcom/htc/camera/AspectRatio;->getAspectRatio(II)Lcom/htc/camera/AspectRatio;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/camera/AspectRatio;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/htc/camera/AspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/camera/AspectRatio;

    return-object v0
.end method

.method public static values()[Lcom/htc/camera/AspectRatio;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/htc/camera/AspectRatio;->$VALUES:[Lcom/htc/camera/AspectRatio;

    invoke-virtual {v0}, [Lcom/htc/camera/AspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/camera/AspectRatio;

    return-object v0
.end method


# virtual methods
.method public isWiderThan(Lcom/htc/camera/AspectRatio;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 88
    if-eqz p1, :cond_0

    sget-object v1, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/htc/camera/AspectRatio;->Unknown:Lcom/htc/camera/AspectRatio;

    if-ne p0, v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/htc/camera/AspectRatio;->ratio:D

    iget-wide v3, p1, Lcom/htc/camera/AspectRatio;->ratio:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
