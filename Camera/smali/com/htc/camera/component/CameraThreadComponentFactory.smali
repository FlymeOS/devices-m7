.class public final Lcom/htc/camera/component/CameraThreadComponentFactory;
.super Lcom/htc/camera/component/ComponentFactory;
.source "CameraThreadComponentFactory.java"


# static fields
.field private static final m_Builders:[Lcom/htc/camera/component/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/htc/camera/component/at",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/htc/camera/component/at;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/debug/c;

    invoke-direct {v2}, Lcom/htc/camera/debug/c;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/component/o;

    invoke-direct {v2}, Lcom/htc/camera/component/o;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/camera/component/by;

    invoke-direct {v2}, Lcom/htc/camera/component/by;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/camera/component/ad;

    invoke-direct {v2}, Lcom/htc/camera/component/ad;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/camera/component/v;

    invoke-direct {v2}, Lcom/htc/camera/component/v;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/htc/camera/component/bq;

    invoke-direct {v2}, Lcom/htc/camera/component/bq;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/htc/camera/io/h;

    invoke-direct {v2}, Lcom/htc/camera/io/h;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/camera/component/bz;

    invoke-direct {v2}, Lcom/htc/camera/component/bz;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/htc/camera/burst/a;

    invoke-direct {v2}, Lcom/htc/camera/burst/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/htc/camera/component/a;

    invoke-direct {v2}, Lcom/htc/camera/component/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/htc/camera/component/g;

    invoke-direct {v2}, Lcom/htc/camera/component/g;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/htc/camera/component/av;

    invoke-direct {v2}, Lcom/htc/camera/component/av;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/htc/camera/component/ai;

    invoke-direct {v2}, Lcom/htc/camera/component/ai;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/htc/camera/component/ci;

    invoke-direct {v2}, Lcom/htc/camera/component/ci;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/htc/camera/component/bf;

    invoke-direct {v2}, Lcom/htc/camera/component/bf;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/htc/camera/panorama/a;

    invoke-direct {v2}, Lcom/htc/camera/panorama/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/htc/camera/photopattern/c;

    invoke-direct {v2}, Lcom/htc/camera/photopattern/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/htc/camera/component/ap;

    invoke-direct {v2}, Lcom/htc/camera/component/ap;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/htc/camera/component/y;

    invoke-direct {v2}, Lcom/htc/camera/component/y;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/htc/camera/sina/a;

    invoke-direct {v2}, Lcom/htc/camera/sina/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/htc/camera/component/bl;

    invoke-direct {v2}, Lcom/htc/camera/component/bl;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/htc/camera/effect/m;

    invoke-direct {v2}, Lcom/htc/camera/effect/m;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/htc/camera/effect/at;

    invoke-direct {v2}, Lcom/htc/camera/effect/at;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/htc/camera/component/as;

    invoke-direct {v2}, Lcom/htc/camera/component/as;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/htc/camera/component/bc;

    invoke-direct {v2}, Lcom/htc/camera/component/bc;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/htc/camera/component/cc;

    invoke-direct {v2}, Lcom/htc/camera/component/cc;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/htc/camera/component/i;

    invoke-direct {v2}, Lcom/htc/camera/component/i;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/htc/camera/location/c;

    invoke-direct {v2}, Lcom/htc/camera/location/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/htc/camera/zoe/b;

    invoke-direct {v2}, Lcom/htc/camera/zoe/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/htc/camera/effect/be;

    invoke-direct {v2}, Lcom/htc/camera/effect/be;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/htc/camera/dualcamera/a;

    invoke-direct {v2}, Lcom/htc/camera/dualcamera/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/htc/camera/splitcapture/b;

    invoke-direct {v2}, Lcom/htc/camera/splitcapture/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/htc/camera/duallens/a;

    invoke-direct {v2}, Lcom/htc/camera/duallens/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/htc/camera/manualcapture/d;

    invoke-direct {v2}, Lcom/htc/camera/manualcapture/d;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/htc/camera/manualcapture/a;

    invoke-direct {v2}, Lcom/htc/camera/manualcapture/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/htc/camera/component/ay;

    invoke-direct {v2}, Lcom/htc/camera/component/ay;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/htc/camera/component/ae;

    invoke-direct {v2}, Lcom/htc/camera/component/ae;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/htc/camera/splitcapture/e;

    invoke-direct {v2}, Lcom/htc/camera/splitcapture/e;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/htc/camera/component/e;

    invoke-direct {v2}, Lcom/htc/camera/component/e;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/htc/camera/media/b;

    invoke-direct {v2}, Lcom/htc/camera/media/b;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/component/CameraThreadComponentFactory;->m_Builders:[Lcom/htc/camera/component/at;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/CameraThread;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ComponentFactory;-><init>(Lcom/htc/camera/component/au;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final createComponents(Lcom/htc/camera/component/ComponentCategory;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/htc/camera/component/CameraThreadComponentFactory;->componentOwner:Lcom/htc/camera/component/au;

    check-cast v0, Lcom/htc/camera/CameraThread;

    .line 88
    invoke-virtual {v0}, Lcom/htc/camera/CameraThread;->getCameraActivity()Lcom/htc/camera/HTCCamera;

    move-result-object v2

    .line 89
    if-nez v2, :cond_0

    move v0, v1

    .line 93
    :goto_0
    return v0

    .line 91
    :cond_0
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 92
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 93
    invoke-virtual {p0, p1, v3, v2}, Lcom/htc/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/htc/camera/component/ComponentCategory;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected getComponentBuilders()[Lcom/htc/camera/component/at;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/htc/camera/component/at",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/htc/camera/component/CameraThreadComponentFactory;->m_Builders:[Lcom/htc/camera/component/at;

    return-object v0
.end method
