.class public final Lcom/htc/camera/component/UIComponentFactory;
.super Lcom/htc/camera/component/ComponentFactory;
.source "UIComponentFactory.java"


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
    .line 45
    const/16 v0, 0x5f

    new-array v0, v0, [Lcom/htc/camera/component/at;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/camera/viewfinder/a;

    invoke-direct {v2}, Lcom/htc/camera/viewfinder/a;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/camera/component/bw;

    invoke-direct {v2}, Lcom/htc/camera/component/bw;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/camera/component/ab;

    invoke-direct {v2}, Lcom/htc/camera/component/ab;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/htc/camera/effect/p;

    invoke-direct {v2}, Lcom/htc/camera/effect/p;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/camera/capturemode/a;

    invoke-direct {v2}, Lcom/htc/camera/capturemode/a;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/htc/camera/component/w;

    invoke-direct {v2}, Lcom/htc/camera/component/w;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/htc/camera/component/bz;

    invoke-direct {v2}, Lcom/htc/camera/component/bz;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/htc/camera/component/a;

    invoke-direct {v2}, Lcom/htc/camera/component/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/htc/camera/effect/n;

    invoke-direct {v2}, Lcom/htc/camera/effect/n;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/htc/camera/effect/au;

    invoke-direct {v2}, Lcom/htc/camera/effect/au;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/htc/camera/component/aw;

    invoke-direct {v2}, Lcom/htc/camera/component/aw;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/htc/camera/component/h;

    invoke-direct {v2}, Lcom/htc/camera/component/h;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/htc/camera/component/cp;

    invoke-direct {v2}, Lcom/htc/camera/component/cp;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/htc/camera/component/cl;

    invoke-direct {v2}, Lcom/htc/camera/component/cl;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/htc/camera/component/m;

    invoke-direct {v2}, Lcom/htc/camera/component/m;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/htc/camera/actionscreen/b;

    invoke-direct {v2}, Lcom/htc/camera/actionscreen/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/htc/camera/component/r;

    invoke-direct {v2}, Lcom/htc/camera/component/r;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/htc/camera/component/u;

    invoke-direct {v2}, Lcom/htc/camera/component/u;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/htc/camera/component/j;

    invoke-direct {v2}, Lcom/htc/camera/component/j;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/htc/camera/component/aj;

    invoke-direct {v2}, Lcom/htc/camera/component/aj;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/htc/camera/component/bu;

    invoke-direct {v2}, Lcom/htc/camera/component/bu;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/htc/camera/component/al;

    invoke-direct {v2}, Lcom/htc/camera/component/al;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/htc/camera/component/cj;

    invoke-direct {v2}, Lcom/htc/camera/component/cj;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/htc/camera/component/bg;

    invoke-direct {v2}, Lcom/htc/camera/component/bg;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/htc/camera/panorama/d;

    invoke-direct {v2}, Lcom/htc/camera/panorama/d;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/htc/camera/photopattern/d;

    invoke-direct {v2}, Lcom/htc/camera/photopattern/d;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/htc/camera/component/aq;

    invoke-direct {v2}, Lcom/htc/camera/component/aq;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/htc/camera/component/z;

    invoke-direct {v2}, Lcom/htc/camera/component/z;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/htc/camera/sina/c;

    invoke-direct {v2}, Lcom/htc/camera/sina/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/htc/camera/manualcapture/c;

    invoke-direct {v2}, Lcom/htc/camera/manualcapture/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/htc/camera/component/bt;

    invoke-direct {v2}, Lcom/htc/camera/component/bt;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/htc/camera/component/cs;

    invoke-direct {v2}, Lcom/htc/camera/component/cs;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/htc/camera/component/cf;

    invoke-direct {v2}, Lcom/htc/camera/component/cf;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/htc/camera/component/ba;

    invoke-direct {v2}, Lcom/htc/camera/component/ba;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/htc/camera/power/a;

    invoke-direct {v2}, Lcom/htc/camera/power/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/htc/camera/component/bm;

    invoke-direct {v2}, Lcom/htc/camera/component/bm;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/htc/camera/effect/q;

    invoke-direct {v2}, Lcom/htc/camera/effect/q;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/htc/camera/effect/l;

    invoke-direct {v2}, Lcom/htc/camera/effect/l;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/htc/camera/component/ax;

    invoke-direct {v2}, Lcom/htc/camera/component/ax;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/htc/camera/component/aa;

    invoke-direct {v2}, Lcom/htc/camera/component/aa;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/htc/camera/component/bi;

    invoke-direct {v2}, Lcom/htc/camera/component/bi;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/htc/camera/component/ao;

    invoke-direct {v2}, Lcom/htc/camera/component/ao;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/htc/camera/component/an;

    invoke-direct {v2}, Lcom/htc/camera/component/an;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/htc/camera/component/l;

    invoke-direct {v2}, Lcom/htc/camera/component/l;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/htc/camera/bi/f;

    invoke-direct {v2}, Lcom/htc/camera/bi/f;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/htc/camera/bi/k;

    invoke-direct {v2}, Lcom/htc/camera/bi/k;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/htc/camera/bi/a;

    invoke-direct {v2}, Lcom/htc/camera/bi/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/htc/camera/bi/g;

    invoke-direct {v2}, Lcom/htc/camera/bi/g;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/htc/camera/bi/h;

    invoke-direct {v2}, Lcom/htc/camera/bi/h;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/htc/camera/bi/i;

    invoke-direct {v2}, Lcom/htc/camera/bi/i;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/htc/camera/bi/c;

    invoke-direct {v2}, Lcom/htc/camera/bi/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/htc/camera/bi/l;

    invoke-direct {v2}, Lcom/htc/camera/bi/l;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/htc/camera/bi/d;

    invoke-direct {v2}, Lcom/htc/camera/bi/d;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/htc/camera/bi/e;

    invoke-direct {v2}, Lcom/htc/camera/bi/e;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/htc/camera/bi/b;

    invoke-direct {v2}, Lcom/htc/camera/bi/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/htc/camera/bi/j;

    invoke-direct {v2}, Lcom/htc/camera/bi/j;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/htc/camera/component/bb;

    invoke-direct {v2}, Lcom/htc/camera/component/bb;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/htc/camera/component/be;

    invoke-direct {v2}, Lcom/htc/camera/component/be;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/htc/camera/component/bd;

    invoke-direct {v2}, Lcom/htc/camera/component/bd;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/htc/camera/component/ar;

    invoke-direct {v2}, Lcom/htc/camera/component/ar;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/htc/camera/component/c;

    invoke-direct {v2}, Lcom/htc/camera/component/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lcom/htc/camera/component/ah;

    invoke-direct {v2}, Lcom/htc/camera/component/ah;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lcom/htc/camera/component/cd;

    invoke-direct {v2}, Lcom/htc/camera/component/cd;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lcom/htc/camera/component/bs;

    invoke-direct {v2}, Lcom/htc/camera/component/bs;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lcom/htc/camera/component/bn;

    invoke-direct {v2}, Lcom/htc/camera/component/bn;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lcom/htc/camera/component/br;

    invoke-direct {v2}, Lcom/htc/camera/component/br;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lcom/htc/camera/location/a;

    invoke-direct {v2}, Lcom/htc/camera/location/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lcom/htc/camera/component/bh;

    invoke-direct {v2}, Lcom/htc/camera/component/bh;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lcom/htc/camera/zoe/c;

    invoke-direct {v2}, Lcom/htc/camera/zoe/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lcom/htc/camera/component/cg;

    invoke-direct {v2}, Lcom/htc/camera/component/cg;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lcom/htc/camera/effect/bf;

    invoke-direct {v2}, Lcom/htc/camera/effect/bf;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lcom/htc/camera/component/ck;

    invoke-direct {v2}, Lcom/htc/camera/component/ck;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lcom/htc/camera/component/ca;

    invoke-direct {v2}, Lcom/htc/camera/component/ca;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lcom/htc/camera/dualcamera/b;

    invoke-direct {v2}, Lcom/htc/camera/dualcamera/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lcom/htc/camera/splitcapture/d;

    invoke-direct {v2}, Lcom/htc/camera/splitcapture/d;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lcom/htc/camera/component/q;

    invoke-direct {v2}, Lcom/htc/camera/component/q;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lcom/htc/camera/mainbar/a;

    invoke-direct {v2}, Lcom/htc/camera/mainbar/a;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lcom/htc/camera/component/am;

    invoke-direct {v2}, Lcom/htc/camera/component/am;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lcom/htc/camera/component/f;

    invoke-direct {v2}, Lcom/htc/camera/component/f;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lcom/htc/camera/component/bk;

    invoke-direct {v2}, Lcom/htc/camera/component/bk;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lcom/htc/camera/duallens/b;

    invoke-direct {v2}, Lcom/htc/camera/duallens/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lcom/htc/camera/component/cq;

    invoke-direct {v2}, Lcom/htc/camera/component/cq;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lcom/htc/camera/component/bp;

    invoke-direct {v2}, Lcom/htc/camera/component/bp;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lcom/htc/camera/component/cr;

    invoke-direct {v2}, Lcom/htc/camera/component/cr;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lcom/htc/camera/component/ch;

    invoke-direct {v2}, Lcom/htc/camera/component/ch;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lcom/htc/camera/component/af;

    invoke-direct {v2}, Lcom/htc/camera/component/af;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lcom/htc/camera/component/bo;

    invoke-direct {v2}, Lcom/htc/camera/component/bo;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lcom/htc/camera/component/ak;

    invoke-direct {v2}, Lcom/htc/camera/component/ak;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lcom/htc/camera/component/b;

    invoke-direct {v2}, Lcom/htc/camera/component/b;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder;

    invoke-direct {v2}, Lcom/htc/camera/component/WatchCompanionBroadcasterBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lcom/htc/camera/io/j;

    invoke-direct {v2}, Lcom/htc/camera/io/j;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lcom/htc/camera/splitcapture/f;

    invoke-direct {v2}, Lcom/htc/camera/splitcapture/f;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lcom/htc/camera/component/p;

    invoke-direct {v2}, Lcom/htc/camera/component/p;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lcom/htc/camera/media/d;

    invoke-direct {v2}, Lcom/htc/camera/media/d;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lcom/htc/camera/component/bv;

    invoke-direct {v2}, Lcom/htc/camera/component/bv;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/camera/component/UIComponentFactory;->m_Builders:[Lcom/htc/camera/component/at;

    return-void
.end method

.method public constructor <init>(Lcom/htc/camera/HTCCamera;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/htc/camera/component/ComponentFactory;-><init>(Lcom/htc/camera/component/au;)V

    .line 158
    return-void
.end method


# virtual methods
.method public final createComponents(Lcom/htc/camera/component/ComponentCategory;)I
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/camera/component/UIComponentFactory;->componentOwner:Lcom/htc/camera/component/au;

    aput-object v2, v0, v1

    .line 166
    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/camera/component/UIComponentFactory;->createComponents(Lcom/htc/camera/component/ComponentCategory;[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
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
    .line 175
    sget-object v0, Lcom/htc/camera/component/UIComponentFactory;->m_Builders:[Lcom/htc/camera/component/at;

    return-object v0
.end method
