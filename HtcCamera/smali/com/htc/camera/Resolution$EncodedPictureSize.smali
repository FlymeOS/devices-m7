.class public Lcom/htc/camera/Resolution$EncodedPictureSize;
.super Ljava/lang/Object;
.source "Resolution.java"


# instance fields
.field public final sizeBasic:J

.field public final sizeFine:J

.field public final sizeNormal:J

.field public final sizeSuper:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeSuper:J

    .line 43
    iput-wide p3, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeFine:J

    .line 44
    iput-wide p5, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeNormal:J

    .line 45
    iput-wide p7, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeBasic:J

    .line 46
    return-void
.end method


# virtual methods
.method public getSize(Lcom/htc/camera/PictureQuality;)J
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/htc/camera/Resolution$1;->$SwitchMap$com$htc$camera$PictureQuality:[I

    invoke-virtual {p1}, Lcom/htc/camera/PictureQuality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    const-string v0, "Resolution"

    const-string v1, "EncodedPictureSize - invalid quality"

    invoke-static {v0, v1}, Lcom/htc/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeSuper:J

    :goto_0
    return-wide v0

    .line 53
    :pswitch_0
    iget-wide v0, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeSuper:J

    goto :goto_0

    .line 55
    :pswitch_1
    iget-wide v0, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeFine:J

    goto :goto_0

    .line 57
    :pswitch_2
    iget-wide v0, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeNormal:J

    goto :goto_0

    .line 59
    :pswitch_3
    iget-wide v0, p0, Lcom/htc/camera/Resolution$EncodedPictureSize;->sizeBasic:J

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
