.class public Lcom/htc/camera/manualcapture/MModeData;
.super Ljava/lang/Object;
.source "MModeData.java"


# static fields
.field public static final AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

.field public static final ZERO_VALUE:Lcom/htc/camera/manualcapture/MModeData;


# instance fields
.field private m_Indicator:Z

.field private m_Title:Ljava/lang/String;

.field private m_Value:Lcom/htc/camera/Rational;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 8
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    new-instance v1, Lcom/htc/camera/Rational;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/camera/Rational;-><init>(DD)V

    invoke-direct {v0, v1}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;)V

    sput-object v0, Lcom/htc/camera/manualcapture/MModeData;->AUTO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    .line 9
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    new-instance v1, Lcom/htc/camera/Rational;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/htc/camera/Rational;-><init>(DD)V

    invoke-direct {v0, v1}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;)V

    sput-object v0, Lcom/htc/camera/manualcapture/MModeData;->ZERO_VALUE:Lcom/htc/camera/manualcapture/MModeData;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/Rational;)V
    .locals 2

    .prologue
    .line 17
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V

    .line 18
    return-void

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/htc/camera/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    .line 27
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/htc/camera/Rational;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/camera/Rational;-><init>(DD)V

    iput-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Title:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Title:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Title:Ljava/lang/String;

    .line 36
    :cond_1
    iput-boolean p3, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Indicator:Z

    .line 37
    return-void
.end method


# virtual methods
.method public clone()Lcom/htc/camera/manualcapture/MModeData;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/htc/camera/manualcapture/MModeData;

    iget-object v1, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    iget-object v2, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Title:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Indicator:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/camera/manualcapture/MModeData;-><init>(Lcom/htc/camera/Rational;Ljava/lang/String;Z)V

    .line 42
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/htc/camera/manualcapture/MModeData;->clone()Lcom/htc/camera/manualcapture/MModeData;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Title:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/htc/camera/Rational;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    return-object v0
.end method

.method public isAuto()Z
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndicator()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Indicator:Z

    return v0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDouble()D
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public toInteger()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toInteger()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/camera/manualcapture/MModeData;->m_Value:Lcom/htc/camera/Rational;

    invoke-virtual {v0}, Lcom/htc/camera/Rational;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
