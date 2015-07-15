.class Landroid/view/ThreadedRenderer$HWUICacheConfig;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HWUICacheConfig"
.end annotation


# static fields
.field private static mIsNeedDeferredHWUICache:Z

.field private static mMaxCacheLayerSize:I

.field private static mMaxTextureCacheSize:I

.field private static mTextureSizeFlushRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 583
    const/high16 v0, 0x1800000

    sput v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mMaxTextureCacheSize:I

    .line 585
    const/high16 v0, 0x1000000

    sput v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mMaxCacheLayerSize:I

    .line 587
    const v0, 0x3f19999a    # 0.6f

    sput v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mTextureSizeFlushRatio:F

    .line 589
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsNeedDeferredHWUICache:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHWUICacheConfig()V
    .locals 3

    .prologue
    .line 569
    sget-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsNeedDeferredHWUICache:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 570
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsNeedDeferredHWUICache:Z

    .line 571
    sget v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mMaxTextureCacheSize:I

    sget v1, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mMaxCacheLayerSize:I

    sget v2, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mTextureSizeFlushRatio:F

    # invokes: Landroid/view/ThreadedRenderer;->nSetHWUICacheConfig(IIF)V
    invoke-static {v0, v1, v2}, Landroid/view/ThreadedRenderer;->access$100(IIF)V

    .line 573
    :cond_0
    return-void
.end method

.method public static setHWUICacheConfigDefer(IIF)V
    .locals 1
    .param p0, "maxTextureCache"    # I
    .param p1, "maxLayerCache"    # I
    .param p2, "textureFlushRatio"    # F

    .prologue
    .line 576
    sput p0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mMaxTextureCacheSize:I

    .line 577
    sput p1, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mMaxCacheLayerSize:I

    .line 578
    sput p2, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mTextureSizeFlushRatio:F

    .line 579
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer$HWUICacheConfig;->mIsNeedDeferredHWUICache:Z

    .line 580
    return-void
.end method
