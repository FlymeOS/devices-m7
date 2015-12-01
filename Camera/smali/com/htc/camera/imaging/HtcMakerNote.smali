.class public Lcom/htc/camera/imaging/HtcMakerNote;
.super Ljava/lang/Object;
.source "HtcMakerNote.java"


# instance fields
.field public final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/camera/imaging/HtcMakerNoteEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/camera/imaging/HtcMakerNote;->entries:Ljava/util/List;

    .line 17
    return-void
.end method

.method public static deserialize([B)Lcom/htc/camera/imaging/HtcMakerNote;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 25
    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge v0, v3, :cond_2

    :cond_0
    move-object v0, v1

    .line 64
    :cond_1
    :goto_0
    return-object v0

    .line 29
    :cond_2
    aget-byte v0, p0, v4

    const/16 v2, 0x68

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    aget-byte v0, p0, v0

    const/16 v2, 0x74

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v2, 0x49

    if-eq v0, v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 33
    :cond_4
    new-instance v0, Lcom/htc/camera/imaging/HtcMakerNote;

    invoke-direct {v0}, Lcom/htc/camera/imaging/HtcMakerNote;-><init>()V

    .line 37
    array-length v2, p0

    if-le v2, v3, :cond_5

    .line 38
    invoke-static {p0, v3}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->deserialize([BI)Lcom/htc/camera/imaging/HtcMakerNoteEntry;

    move-result-object v1

    .line 39
    :cond_5
    if-eqz v1, :cond_6

    .line 40
    iget-object v2, v0, Lcom/htc/camera/imaging/HtcMakerNote;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_6
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->tag:I

    if-nez v2, :cond_1

    .line 45
    invoke-virtual {v1}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->getDataInteger()[I

    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    array-length v2, v3

    if-lez v2, :cond_1

    .line 48
    invoke-virtual {v1}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->getRawByteCount()I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    .line 49
    aget v1, v3, v4

    :goto_1
    if-lez v1, :cond_1

    .line 51
    invoke-static {p0, v2}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->deserialize([BI)Lcom/htc/camera/imaging/HtcMakerNoteEntry;

    move-result-object v3

    .line 52
    if-eqz v3, :cond_1

    .line 54
    iget-object v4, v0, Lcom/htc/camera/imaging/HtcMakerNote;->entries:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v3}, Lcom/htc/camera/imaging/HtcMakerNoteEntry;->getRawByteCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 49
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
