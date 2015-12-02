.class Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;
.super Ljava/lang/Object;
.source "HtcDateTimeText.java"


# instance fields
.field private dx:F

.field private dy:F

.field private radius:F

.field private shadowColor:I

.field final synthetic this$0:Lcom/htc/lib1/cc/widget/HtcDateTimeText;


# direct methods
.method public constructor <init>(Lcom/htc/lib1/cc/widget/HtcDateTimeText;FFFI)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->this$0:Lcom/htc/lib1/cc/widget/HtcDateTimeText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->updateShadowStyle(FFFI)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->shadowColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->dy:F

    return v0
.end method


# virtual methods
.method public updateShadowStyle(FFFI)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->radius:F

    .line 37
    iput p2, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->dx:F

    .line 38
    iput p3, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->dy:F

    .line 39
    iput p4, p0, Lcom/htc/lib1/cc/widget/HtcDateTimeText$DateTimeTextShadow;->shadowColor:I

    .line 40
    return-void
.end method
