.class public final Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;
.super Ljava/lang/Object;
.source "HtcMediaRecorderUtils.java"


# static fields
.field public static final MPEG_4_PAUSEABLE:I

.field public static final QCP:I

.field public static final ZOE_STORY:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v0, Lcom/htc/lib3/media/HtcField;

    const-string v1, "QCP"

    invoke-direct {v0, v1}, Lcom/htc/lib3/media/HtcField;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/htc/lib3/media/HtcField;

    const-string v2, "ZOE_STORY"

    invoke-direct {v1, v2}, Lcom/htc/lib3/media/HtcField;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v2, Lcom/htc/lib3/media/HtcField;

    const-string v3, "MPEG_4_PAUSEABLE"

    invoke-direct {v2, v3}, Lcom/htc/lib3/media/HtcField;-><init>(Ljava/lang/String;)V

    .line 77
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/htc/lib3/media/HtcField;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 78
    const-class v4, Landroid/media/MediaRecorder$OutputFormat;

    invoke-static {v3, v4}, Lcom/htc/lib3/media/HtcField;->initFields([Lcom/htc/lib3/media/HtcField;Ljava/lang/Class;)V

    .line 80
    invoke-static {v0, v5}, Lcom/htc/lib3/media/HtcField;->getFileld_int(Lcom/htc/lib3/media/HtcField;Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->QCP:I

    .line 81
    invoke-static {v1, v5}, Lcom/htc/lib3/media/HtcField;->getFileld_int(Lcom/htc/lib3/media/HtcField;Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->ZOE_STORY:I

    .line 82
    invoke-static {v2, v5}, Lcom/htc/lib3/media/HtcField;->getFileld_int(Lcom/htc/lib3/media/HtcField;Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/htc/lib3/media/HtcMediaRecorderUtils$OutputFormat;->MPEG_4_PAUSEABLE:I

    .line 83
    return-void
.end method
