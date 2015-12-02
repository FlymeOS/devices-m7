.class public Lcom/htc/lib1/mediamanager/i;
.super Ljava/lang/Object;
.source "MediaManager.java"


# direct methods
.method public static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2597
    if-nez p0, :cond_0

    .line 2599
    const-string v1, "MediaManager"

    const-string v2, "[convertURI_MMPtoMP]: Convert fail!"

    invoke-static {v1, v2}, Lcom/htc/lib1/mediamanager/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    :goto_0
    return-object v0

    .line 2603
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 2604
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 2605
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2606
    if-eqz v3, :cond_2

    .line 2608
    const-string v0, "MediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[convertURI_MMPtoMP] Input Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/lib1/mediamanager/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    if-eqz v1, :cond_1

    const-string v0, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const-string v0, "mediamanager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2611
    const-string v0, "content://mediamanager/media/"

    const-string v1, "content://media/"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2612
    const-string v1, "MediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[convertURI_MMPtoMP] Uri after convert:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lib1/mediamanager/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    move-object v0, p0

    .line 2621
    goto :goto_0

    .line 2617
    :cond_1
    const-string v0, "MediaManager"

    const-string v1, "[convertURI_MMPtoMP] Input not MMP URI and return the original URI."

    invoke-static {v0, v1}, Lcom/htc/lib1/mediamanager/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object p0, v0

    goto :goto_1
.end method
