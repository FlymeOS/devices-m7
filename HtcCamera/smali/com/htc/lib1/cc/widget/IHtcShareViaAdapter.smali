.class abstract Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;
.super Landroid/widget/BaseAdapter;
.source "IHtcShareViaAdapter.java"


# static fields
.field static final BG_SET_DRAWABLE:I = 0x1

.field static final BG_SET_RES_ID:I = 0x2

.field static final EXPAND_DEFAULT:I = 0xa0

.field static final FILE_NAME:Ljava/lang/String; = "task_specific_history_file_name.xml"

.field static final HAD_EXPAND:I = 0xa2

.field static final INDEX_OF_MORE:I = 0x4

.field static final MORE:I

.field static final NEED_EXPAND:I = 0xa1

.field static final NOT_EXPAND:I = 0xa3

.field static final WP:I = -0x2


# instance fields
.field private mResIdEmpty:I

.field private mResIdLoading:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/htc/lib1/cc/j;->st_more:I

    sput v0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->MORE:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput v0, p0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->mResIdEmpty:I

    .line 27
    iput v0, p0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->mResIdLoading:I

    return-void
.end method


# virtual methods
.method abstract expand()V
.end method

.method getStringEmpty(Landroid/content/res/Resources;)I
    .locals 3

    .prologue
    .line 58
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->mResIdEmpty:I

    if-nez v0, :cond_0

    .line 59
    const-string v0, "activity_list_empty"

    const-string v1, "string"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->mResIdEmpty:I

    .line 61
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->mResIdEmpty:I

    return v0
.end method

.method getStringLoading(Landroid/content/res/Resources;)I
    .locals 3

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->mResIdLoading:I

    if-nez v0, :cond_0

    .line 66
    const-string v0, "loading"

    const-string v1, "string"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->mResIdLoading:I

    .line 68
    :cond_0
    iget v0, p0, Lcom/htc/lib1/cc/widget/IHtcShareViaAdapter;->mResIdLoading:I

    return v0
.end method

.method abstract isDataEmpty()Z
.end method

.method abstract isDataReady()Z
.end method

.method abstract isDimissOk()Z
.end method

.method abstract isExpanded()I
.end method

.method abstract setIsDimissOk(Z)V
.end method

.method abstract setListItemBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method abstract setListItemBackgroundResource(I)V
.end method

.method abstract setListItemTextAppearance(I)V
.end method

.method abstract setQueryByPackageName(Z)V
.end method

.method abstract shrink()V
.end method
