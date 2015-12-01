.class public Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;
.super Lcom/htc/lib1/cc/widget/reminder/drag/WorkspaceView;
.source "ReminderView.java"


# direct methods
.method private b(I)Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getButtons()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-virtual {p0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->getButtonCount()I

    move-result v2

    .line 150
    invoke-direct {p0, v2}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 152
    invoke-virtual {p0, v0}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->a(I)Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const-string v0, "RemiView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getButtons: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/lib1/cc/widget/reminder/debug/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(I)Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public a(Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public b(Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public b(Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public c(Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;)V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->a(Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->b(Lcom/htc/lib1/cc/widget/reminder/drag/BaseTile$Button;)V

    .line 199
    return-void
.end method

.method public c(Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;)V
    .locals 0

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->a(Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView;->b(Lcom/htc/lib1/cc/widget/reminder/ui/ReminderView$ReminderTile;)V

    .line 208
    return-void
.end method

.method public getButtonCount()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getDragThreshold()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    const/16 v0, -0x3e8

    return v0
.end method

.method public getDragType()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public setMastHeadVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 459
    return-void
.end method
