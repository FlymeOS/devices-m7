.class public Lcom/htc/camera/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final maximum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final minimum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 26
    instance-of v1, p1, Lcom/htc/camera/Range;

    if-eqz v1, :cond_0

    .line 28
    check-cast p1, Lcom/htc/camera/Range;

    .line 29
    iget-object v1, p0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    iget-object v2, p1, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 50
    :cond_0
    shl-int/lit8 v0, v0, 0x10

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/camera/Range;->maximum:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
