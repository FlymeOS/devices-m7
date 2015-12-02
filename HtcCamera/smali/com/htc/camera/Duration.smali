.class public final Lcom/htc/camera/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Lcom/htc/camera/af;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/af;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/camera/Duration;",
        ">;"
    }
.end annotation


# static fields
.field private static final DURATION_10S:Lcom/htc/camera/Duration;

.field private static final DURATION_2S:Lcom/htc/camera/Duration;

.field private static final DURATION_3S:Lcom/htc/camera/Duration;

.field private static final DURATION_5S:Lcom/htc/camera/Duration;

.field public static final INFINITE:Lcom/htc/camera/Duration;

.field public static final ZERO:Lcom/htc/camera/Duration;


# instance fields
.field private final m_Milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lcom/htc/camera/Duration;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/htc/camera/Duration;->ZERO:Lcom/htc/camera/Duration;

    .line 9
    new-instance v0, Lcom/htc/camera/Duration;

    const-wide/16 v1, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/htc/camera/Duration;->DURATION_2S:Lcom/htc/camera/Duration;

    .line 10
    new-instance v0, Lcom/htc/camera/Duration;

    const-wide/16 v1, 0xbb8

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/htc/camera/Duration;->DURATION_3S:Lcom/htc/camera/Duration;

    .line 11
    new-instance v0, Lcom/htc/camera/Duration;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/htc/camera/Duration;->DURATION_5S:Lcom/htc/camera/Duration;

    .line 12
    new-instance v0, Lcom/htc/camera/Duration;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/htc/camera/Duration;->DURATION_10S:Lcom/htc/camera/Duration;

    .line 13
    new-instance v0, Lcom/htc/camera/Duration;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Duration;-><init>(J)V

    sput-object v0, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    .line 22
    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/htc/camera/Duration;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    sget-object v0, Lcom/htc/camera/Duration;->ZERO:Lcom/htc/camera/Duration;

    .line 64
    :goto_0
    return-object v0

    .line 47
    :cond_1
    const-string v1, "no_limit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "infinite"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    :cond_2
    sget-object v0, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    goto :goto_0

    .line 49
    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 53
    if-lez v0, :cond_7

    .line 57
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromSeconds(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_5
    const-string v3, "min"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 62
    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromMinutes(J)Lcom/htc/camera/Duration;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_6
    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    invoke-static {v1, v2}, Lcom/htc/camera/Duration;->fromMilliseconds(J)Lcom/htc/camera/Duration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 72
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromMilliseconds(J)Lcom/htc/camera/Duration;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/htc/camera/Duration;

    invoke-direct {v0, p0, p1}, Lcom/htc/camera/Duration;-><init>(J)V

    return-object v0
.end method

.method public static fromMinutes(J)Lcom/htc/camera/Duration;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/htc/camera/Duration;

    const-wide/32 v1, 0xea60

    mul-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Duration;-><init>(J)V

    return-object v0
.end method

.method public static fromSeconds(J)Lcom/htc/camera/Duration;
    .locals 3

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/htc/camera/Duration;->ZERO:Lcom/htc/camera/Duration;

    .line 109
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/htc/camera/Duration;->DURATION_2S:Lcom/htc/camera/Duration;

    goto :goto_0

    .line 103
    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 104
    sget-object v0, Lcom/htc/camera/Duration;->DURATION_3S:Lcom/htc/camera/Duration;

    goto :goto_0

    .line 105
    :cond_2
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 106
    sget-object v0, Lcom/htc/camera/Duration;->DURATION_5S:Lcom/htc/camera/Duration;

    goto :goto_0

    .line 107
    :cond_3
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 108
    sget-object v0, Lcom/htc/camera/Duration;->DURATION_10S:Lcom/htc/camera/Duration;

    goto :goto_0

    .line 109
    :cond_4
    new-instance v0, Lcom/htc/camera/Duration;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/camera/Duration;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/htc/camera/Duration;)I
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    .line 30
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    iget-wide v1, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    iget-wide v3, p1, Lcom/htc/camera/Duration;->m_Milliseconds:J

    sub-long/2addr v1, v3

    .line 33
    cmp-long v3, v1, v5

    if-gez v3, :cond_2

    .line 34
    const/4 v0, -0x1

    goto :goto_0

    .line 35
    :cond_2
    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/htc/camera/Duration;

    invoke-virtual {p0, p1}, Lcom/htc/camera/Duration;->compareTo(Lcom/htc/camera/Duration;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 81
    instance-of v1, p1, Lcom/htc/camera/Duration;

    if-eqz v1, :cond_0

    .line 82
    iget-wide v1, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    check-cast p1, Lcom/htc/camera/Duration;

    iget-wide v3, p1, Lcom/htc/camera/Duration;->m_Milliseconds:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 83
    :cond_0
    return v0
.end method

.method public getMilliseconds()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    return-wide v0
.end method

.method public getSeconds()J
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-wide v0, 0x7fffffffffffffffL

    .line 135
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    long-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/htc/camera/Duration;->INFINITE:Lcom/htc/camera/Duration;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeToString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 161
    invoke-virtual {p0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "infinite"

    .line 165
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    rem-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    div-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/htc/camera/Duration;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "Infinite"

    .line 178
    :goto_0
    return-object v0

    .line 176
    :cond_0
    iget-wide v0, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 177
    const-string v0, "%.3fsec"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/htc/camera/Duration;->m_Milliseconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
