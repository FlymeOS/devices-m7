.class public Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;
.super Lcom/htc/lib1/cc/widget/reminder/drag/DraggableView;
.source "BaseTile.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTileHint:Ljava/lang/String;


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 5

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;->mTileHint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;->mTileHint:Ljava/lang/String;

    .line 301
    :cond_0
    :goto_0
    return-object v0

    .line 290
    :cond_1
    const/4 v0, 0x0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lib1/cc/widget/reminder/util/MyUtil;->getResourceFormResApp(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_0

    .line 296
    sget v2, Lcom/htc/lib1/cc/j;->reminderview_common_unlock_hint_up:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    const-string v2, "BaseTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHint E: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile;->mTileHint:Ljava/lang/String;

    .line 283
    return-void
.end method
