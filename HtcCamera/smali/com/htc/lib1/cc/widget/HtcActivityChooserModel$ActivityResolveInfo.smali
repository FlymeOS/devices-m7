.class public final Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

.field public weight:F


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1059
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;)I
    .locals 3

    .prologue
    .line 1087
    iget v0, p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1089
    if-nez v0, :cond_0

    .line 1090
    iget-object v0, p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    # getter for: Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->access$400(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->this$0:Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;

    # getter for: Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;->access$400(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1096
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1040
    check-cast p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    invoke-virtual {p0, p1}, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->compareTo(Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1068
    if-ne p0, p1, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v0

    .line 1071
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1072
    goto :goto_0

    .line 1074
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1075
    goto :goto_0

    .line 1077
    :cond_3
    check-cast p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;

    .line 1078
    iget v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 1079
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v1, "resolveInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Lcom/htc/lib1/cc/widget/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1108
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
