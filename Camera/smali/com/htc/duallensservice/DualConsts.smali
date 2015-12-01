.class public Lcom/htc/duallensservice/DualConsts;
.super Ljava/lang/Object;
.source "DualConsts.java"


# static fields
.field public static final CLIENT_CAMERA:Ljava/lang/String; = "CameraShot"

.field public static final CLIENT_PHOTO:Ljava/lang/String; = "PhotoEnhancer"

.field public static final DEPTH_MAP_CALCULATION_DONE:I = 0x10

.field public static final DEPTH_MAP_IMAGE_PARSER_DONE:I = 0x1

.field public static final OP_AUTOWARP:Ljava/lang/String; = "DualCamAutoWarp"

.field public static final OP_DEPTH_MAP_ABORT:I = 0x10000010

.field public static final OP_DEPTH_MAP_ABORT_DONE:I = 0x10000010

.field public static final OP_DEPTH_MAP_CALCULATION:I = 0x10000001

.field public static final OP_DEPTH_MAP_CALCULATION_NO_ERROR:I = 0x10000000

.field public static final OP_DEPTH_MAP_CALCULATION_UNKNOWN_ERROR:I = 0x10000001

.field public static final OP_DEPTH_MAP_CALCULATION_WARPPED:I = 0x10000100

.field public static final OP_DEPTH_MAP_RESUME:I = 0x10000100

.field public static final OP_FORCEWARP:Ljava/lang/String; = "DualCamForceWarp"

.field public static final OP_NOWARP:Ljava/lang/String; = "DualCamNoWarp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
