.class final Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Lcom/htc/lib1/cc/widget/l;


# instance fields
.field private final mNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 1126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$DefaultSorter;->mNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$1;)V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$DefaultSorter;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1163
    iget-object v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 1165
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 1167
    iget-object v4, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$DefaultSorter;->mNameToActivityMap:Ljava/util/Map;

    .line 1169
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 1171
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 1172
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 1173
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    .line 1174
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1175
    iget-object v1, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1176
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1177
    if-nez v1, :cond_0

    .line 1178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object v1, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1183
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1186
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 1187
    :goto_1
    if-ltz v2, :cond_4

    .line 1188
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;

    .line 1189
    iget-object v1, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1190
    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1192
    iget-object v1, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1193
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1194
    if-eqz v1, :cond_3

    .line 1195
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    .line 1196
    iget v6, v1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v7, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    add-float/2addr v6, v7

    iput v6, v1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    goto :goto_2

    .line 1201
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    .line 1202
    if-eqz v1, :cond_3

    .line 1203
    iget v5, v1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v0, v0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$HistoricalRecord;->weight:F

    add-float/2addr v0, v5

    iput v0, v1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1187
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1209
    :cond_4
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1216
    return-void
.end method
