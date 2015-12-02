.class Lcom/htc/lib3/media/HtcField;
.super Ljava/lang/Object;
.source "HtcField.java"


# instance fields
.field field:Ljava/lang/reflect/Field;

.field fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/htc/lib3/media/HtcField;->fieldName:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lib3/media/HtcField;->field:Ljava/lang/reflect/Field;

    .line 17
    return-void
.end method

.method public static getFileld_int(Lcom/htc/lib3/media/HtcField;Ljava/lang/Object;)I
    .locals 2

    .prologue
    const/high16 v0, -0x80000000

    .line 57
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/htc/lib3/media/HtcField;->field:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib3/media/HtcField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static initFields([Lcom/htc/lib3/media/HtcField;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/lib3/media/HtcField;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p0, v1

    .line 31
    :try_start_0
    iget-object v3, v0, Lcom/htc/lib3/media/HtcField;->fieldName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/htc/lib3/media/HtcField;->fieldName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 29
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 33
    :cond_1
    iget-object v3, v0, Lcom/htc/lib3/media/HtcField;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/lib3/media/HtcField;->field:Ljava/lang/reflect/Field;

    .line 34
    const-string v3, "HtcField"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " found field : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/htc/lib3/media/HtcField;->fieldName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 39
    :cond_2
    return-void
.end method
