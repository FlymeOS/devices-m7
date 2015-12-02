.class Lcom/htc/lib1/cc/util/c;
.super Ljava/util/Observable;
.source "HtcCommonUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lib1/cc/util/b;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/htc/lib1/cc/util/c;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/lib1/cc/util/c;->setChanged()V

    .line 66
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/htc/lib1/cc/util/c;->clearChanged()V

    .line 68
    return-void
.end method
