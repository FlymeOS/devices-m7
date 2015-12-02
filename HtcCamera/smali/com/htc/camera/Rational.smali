.class public Lcom/htc/camera/Rational;
.super Ljava/lang/Object;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/camera/Rational;",
        ">;"
    }
.end annotation


# instance fields
.field private m_DF:Ljava/text/DecimalFormat;

.field private m_Denominator:D

.field private m_Numerator:D


# direct methods
.method public constructor <init>(DD)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "@##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/camera/Rational;->m_DF:Ljava/text/DecimalFormat;

    .line 21
    iput-wide p1, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    .line 22
    iput-wide p3, p0, Lcom/htc/camera/Rational;->m_Denominator:D

    .line 23
    return-void
.end method

.method public static parseRational(Ljava/lang/String;)Lcom/htc/camera/Rational;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 54
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v2, Lcom/htc/camera/Rational;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    array-length v1, v0

    if-le v1, v5, :cond_0

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    invoke-direct {v2, v3, v4, v0, v1}, Lcom/htc/camera/Rational;-><init>(DD)V

    return-object v2

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/htc/camera/Rational;
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lcom/htc/camera/Rational;

    iget-wide v1, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    iget-wide v3, p0, Lcom/htc/camera/Rational;->m_Denominator:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/Rational;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/htc/camera/Rational;->clone()Lcom/htc/camera/Rational;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/htc/camera/Rational;)I
    .locals 6

    .prologue
    .line 38
    .line 39
    iget-wide v0, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    iget-wide v2, p1, Lcom/htc/camera/Rational;->m_Denominator:D

    mul-double/2addr v0, v2

    .line 40
    iget-wide v2, p0, Lcom/htc/camera/Rational;->m_Denominator:D

    iget-wide v4, p1, Lcom/htc/camera/Rational;->m_Numerator:D

    mul-double/2addr v2, v4

    .line 41
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 42
    const/4 v0, -0x1

    .line 46
    :goto_0
    return v0

    .line 43
    :cond_0
    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/htc/camera/Rational;

    invoke-virtual {p0, p1}, Lcom/htc/camera/Rational;->compareTo(Lcom/htc/camera/Rational;)I

    move-result v0

    return v0
.end method

.method public toDouble()D
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    iget-wide v2, p0, Lcom/htc/camera/Rational;->m_Denominator:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toInteger()I
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    iget-wide v2, p0, Lcom/htc/camera/Rational;->m_Denominator:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/camera/Rational;->m_DF:Ljava/text/DecimalFormat;

    invoke-virtual {p0, v0}, Lcom/htc/camera/Rational;->toString(Ljava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/text/DecimalFormat;)Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/camera/Rational;->m_DF:Ljava/text/DecimalFormat;

    .line 91
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/Rational;->m_Denominator:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 93
    iget-wide v0, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    add-double/2addr v0, v7

    double-to-int v0, v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 94
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 96
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/htc/camera/Rational;->m_Numerator:D

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/htc/camera/Rational;->m_Denominator:D

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
