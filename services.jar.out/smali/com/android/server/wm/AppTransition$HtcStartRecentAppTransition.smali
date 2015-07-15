.class Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcStartRecentAppTransition"
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0x96

.field private static final SCALE_DOWN_DURATION:I = 0xc8


# instance fields
.field private mExcludeFromRecent:Z

.field private mIsHack:Z

.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .locals 1

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mIsHack:Z

    .line 1188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mExcludeFromRecent:Z

    return-void
.end method


# virtual methods
.method applyTransition(ZII)Landroid/view/animation/Animation;
    .locals 12
    .param p1, "enter"    # Z
    .param p2, "displayAppWidth"    # I
    .param p3, "displayAppHeight"    # I

    .prologue
    const/4 v9, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1197
    iget-boolean v3, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mExcludeFromRecent:Z

    if-nez v3, :cond_1

    .line 1198
    if-nez p1, :cond_2

    .line 1199
    iget-object v3, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->this$0:Lcom/android/server/wm/AppTransition;

    # getter for: Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wm/AppTransition;->access$000(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;

    move-result-object v5

    if-le p3, p2, :cond_0

    const/16 v3, 0x3e9

    :goto_0
    invoke-static {v5, v3}, Lcom/android/internal/util/RecentAnimationUtil;->getScaleRegion(Landroid/content/Context;I)Landroid/graphics/Rect;

    move-result-object v8

    .line 1201
    .local v8, "scaleDowntoRect":Landroid/graphics/Rect;
    if-eqz v8, :cond_2

    .line 1202
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, p2

    div-float v2, v3, v5

    .line 1203
    .local v2, "scaleW":F
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, p3

    div-float v4, v3, v5

    .line 1204
    .local v4, "scaleH":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    # invokes: Lcom/android/server/wm/AppTransition;->computePivot(IF)F
    invoke-static {v3, v2}, Lcom/android/server/wm/AppTransition;->access$100(IF)F

    move-result v5

    iget v3, v8, Landroid/graphics/Rect;->top:I

    # invokes: Lcom/android/server/wm/AppTransition;->computePivot(IF)F
    invoke-static {v3, v4}, Lcom/android/server/wm/AppTransition;->access$100(IF)F

    move-result v6

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1207
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v10, 0xc8

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1208
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 1209
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1210
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->this$0:Lcom/android/server/wm/AppTransition;

    # getter for: Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->access$000(Lcom/android/server/wm/AppTransition;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x10c000b

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1212
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1213
    invoke-virtual {v0, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1225
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v2    # "scaleW":F
    .end local v4    # "scaleH":F
    .end local v8    # "scaleDowntoRect":Landroid/graphics/Rect;
    :goto_1
    return-object v0

    .line 1199
    :cond_0
    const/16 v3, 0x3ea

    goto :goto_0

    .line 1218
    :cond_1
    if-eqz p1, :cond_2

    .line 1219
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v7, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1220
    .local v7, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v10, 0x96

    invoke-virtual {v7, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1221
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v0, v7

    .line 1222
    goto :goto_1

    .line 1225
    .end local v7    # "alpha":Landroid/view/animation/AlphaAnimation;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method cleanAnimParams()V
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mIsHack:Z

    .line 1230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mExcludeFromRecent:Z

    .line 1231
    return-void
.end method

.method isHack()Z
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mIsHack:Z

    return v0
.end method

.method public prepareTransition(Z)V
    .locals 1
    .param p1, "isExcludeFromRecent"    # Z

    .prologue
    .line 1191
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mExcludeFromRecent:Z

    .line 1192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition$HtcStartRecentAppTransition;->mIsHack:Z

    .line 1193
    return-void
.end method
